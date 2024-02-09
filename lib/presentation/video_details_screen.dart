import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:test_player/internal/dependencies/state_module.dart';
import 'package:test_player/presentation/components/img_with_duration.dart';
import 'package:test_player/presentation/components/video_description.dart';
import 'package:test_player/presentation/components/web_decorator.dart';

final appState = StateModule.appState();

@RoutePage()
class VideoDetailsScreen extends StatelessWidget {
  const VideoDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WebDecorator(
      child: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            ImgWithDuration(
              imageUrl: appState.currentVideo?.image ?? '', 
              duration: appState.currentVideo?.duration ?? 0,),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: VideoDescription(),
            )
          ],
        ),),
    );
  }
}