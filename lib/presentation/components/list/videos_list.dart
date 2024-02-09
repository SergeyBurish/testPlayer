import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:test_player/internal/dependencies/state_module.dart';
import 'package:test_player/presentation/components/list/list_item.dart';
import 'package:test_player/presentation/components/pagination_control.dart';

final appState = StateModule.appState();

class VideosList extends StatelessWidget {
  const VideosList({super.key});

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return ListView.builder(
          itemCount: appState.listVideo.length + 1,
          itemBuilder: (BuildContext context, int index) {
            if (index < appState.listVideo.length) {
              var video = appState.listVideo[index];
              return ListItem(video: video);
            }

            return const PaginationControl();
          }
        );
      }
    );
  }
}