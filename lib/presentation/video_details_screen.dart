import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:test_player/internal/dependencies/state_module.dart';

final appState = StateModule.appState();

@RoutePage()
class VideoDetailsScreen extends StatelessWidget {
  const VideoDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var currentVideo = appState.getCurrentVideo();
    return Scaffold(
      appBar: AppBar(title: const Text('VideoDetails')),
      body: Center(child: Text(currentVideo.name)),);
  }
}