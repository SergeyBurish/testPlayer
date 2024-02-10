import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:test_player/businessLogic/model/models.dart';
import 'package:test_player/internal/dependencies/state_module.dart';
import 'package:test_player/internal/routing/app_router.dart';
import 'package:test_player/presentation/components/img_with_duration.dart';
import 'package:test_player/presentation/components/video_description_small.dart';

final appState = StateModule.appState();

class ListItem extends StatelessWidget {
  final Video video;
  const ListItem({super.key, required this.video});

  void go2Details (videoId, context) {
    appState.setCurrentVideoId(videoId);
    AutoRouter.of(context).push(const VideoDetailsRoute(),);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: InkWell(
        onTap: () => go2Details(video.id, context),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: ImgWithDuration(imageUrl: video.image, duration: video.duration, small: true,)),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: VideoDescriptionSmall(video: video),
              )),
          ],
        )
      ),
    );
  }
}