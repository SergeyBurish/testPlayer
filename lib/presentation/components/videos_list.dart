import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:auto_route/auto_route.dart';
import 'package:test_player/internal/dependencies/state_module.dart';
import 'package:test_player/internal/routing/app_router.dart';

final appState = StateModule.appState();

class VideosList extends StatelessWidget {
  const VideosList({super.key});

  void go2Details (videoId, context) {
    appState.setCurrentVideoId(videoId);
    AutoRouter.of(context).push(const VideoDetailsRoute(),);
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return ListView.builder(
          itemCount: appState.listVideo.length,
          itemBuilder: (BuildContext context, int index) {
            var video = appState.listVideo[index];
            return InkWell(
              onTap: () => go2Details(video.id, context), // print('$index video'),
              child: Text('$index ${video.name}')
            );
          }
        );
      }
    );
  }
}