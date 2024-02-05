import 'package:flutter/material.dart';
import 'package:test_player/l10n/l10n.dart';

class VideosList extends StatefulWidget {
  const VideosList({super.key});

  @override
  State<VideosList> createState() => _VideosListState();
}

class _VideosListState extends State<VideosList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(L10n.of(context).listVideos)),
      body: Center(child: Text(L10n.of(context).allVideos)),);
  }
}