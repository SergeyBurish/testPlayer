import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:test_player/internal/dependencies/state_module.dart';
import 'package:test_player/presentation/components/web_decorator.dart';

final appState = StateModule.appState();

@RoutePage()
class VideoDetailsScreen extends StatelessWidget {
  const VideoDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var currentVideo = appState.getCurrentVideo();
    return WebDecorator(
      child: Scaffold(
        appBar: AppBar(title: const Text('VideoDetails')),
        body: Center(child: Text(currentVideo.name)),),
    );
  }
}