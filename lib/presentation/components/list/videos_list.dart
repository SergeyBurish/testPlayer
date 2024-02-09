import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:test_player/internal/dependencies/state_module.dart';
import 'package:test_player/presentation/components/list/list_item.dart';

final appState = StateModule.appState();

class VideosList extends StatelessWidget {
  const VideosList({super.key});

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return ListView.builder(
          itemCount: appState.listVideo.length,
          itemBuilder: (BuildContext context, int index) {
            var video = appState.listVideo[index];
            return ListItem(video: video);
          }
        );
      }
    );
  }
}