import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class VideoDetailsScreen extends StatelessWidget {
  const VideoDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('VideoDetails')),
      body: const Center(child: Text('VideoDetails')),);
  }
}