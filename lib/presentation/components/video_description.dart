import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_player/businessLogic/model/models.dart';
import 'package:test_player/internal/utils.dart';
import 'package:test_player/l10n/l10n.dart';

class VideoDescription extends StatelessWidget {
  final Video video;
  const VideoDescription({super.key, required this.video});

  @override
  Widget build(BuildContext context) {
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
        SvgPicture.asset(
          hartIcon, width: 30, height: 30,
        )
      ],
    );
  }
}