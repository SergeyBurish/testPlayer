import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_player/internal/dependencies/state_module.dart';
import 'package:test_player/internal/utils.dart';
import 'package:test_player/l10n/l10n.dart';

final appState = StateModule.appState();

class VideoDescription extends StatelessWidget {
  final bool mainVideo;
  const VideoDescription({super.key, this.mainVideo = false});

  void setLike (int id, bool like, BuildContext context) {
    appState.setLike(id, like, onFail: () => _showToast(context));
  }

  void _showToast(BuildContext context) {
    final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(
      SnackBar(
        content: Text(L10n.of(context).failSetLike),
        behavior: SnackBarBehavior.floating,
        action: SnackBarAction(label: 'Ok', onPressed: scaffold.hideCurrentSnackBar),
        margin: const EdgeInsets.only(bottom: 100, left: 20, right: 20),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Observer (
      builder: (_) {
        final video = mainVideo ? appState.mainVideo! : appState.currentVideo!; // TODO: handle null
        final hartIcon = video.liked ? 'assets/heartRed.svg' : 'assets/heart.svg';

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(video.name, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            Row(
              children: [
                Text(L10n.of(context).views(Utils.viewsFormat(video.views))),
                const Text(' \u2022 '),
                Text(L10n.of(context).ago(Utils.timeAgoFormat(video.created_at, context))),
              ],
            ),
            InkWell(
              onTap: () => setLike(video.id, !video.liked, context),
              child: SvgPicture.asset(
                hartIcon, width: 30, height: 30,
              ),
            )
          ],
        );
      }
    );
  }
}