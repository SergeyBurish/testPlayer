import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_player/businessLogic/model/models.dart';
import 'package:test_player/internal/utils.dart';
import 'package:test_player/l10n/l10n.dart';

class VideoDescriptionSmall extends StatelessWidget {
  final Video video;
  const VideoDescriptionSmall({super.key, required this.video});

  @override
  Widget build(BuildContext context) {
    final hartIcon = video.liked ? 'assets/heartRed.svg' : 'assets/heart.svg';

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Text(video.name, style: const TextStyle(fontWeight: FontWeight.bold),),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(L10n.of(context).views(Utils.viewsFormat(video.views))),
                Text(L10n.of(context).ago(Utils.timeAgoFormat(video.created_at, context))),
              ],
            ),
            SvgPicture.asset(
              hartIcon,
              width: 30,
              height: 30,
            )
          ],
        ),
      ],
    );
  }
}