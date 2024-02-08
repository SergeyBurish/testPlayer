import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:test_player/internal/dependencies/state_module.dart';
import 'package:test_player/l10n/l10n.dart';
import 'package:test_player/presentation/components/img_with_duration.dart';
import 'package:test_player/presentation/components/videos_list.dart';
import 'package:test_player/presentation/components/web_decorator.dart';

final appState = StateModule.appState();

@RoutePage()
class VideosListScreen extends StatefulWidget {
  const VideosListScreen({super.key});

  @override
  State<VideosListScreen> createState() => _VideosListScreenState();
}

class _VideosListScreenState extends State<VideosListScreen> {

  @override
  void initState() {
    super.initState();
    appState.getVideos();
  }

  @override
  Widget build(BuildContext context) {
    return WebDecorator(
      child: Scaffold(
        appBar: AppBar(title: Text(L10n.of(context).listVideos)),
        body: Center(child: Column(
          children: [
            Observer( builder: (_) {
              return ImgWithDuration(
                imageUrl: appState.mainVideo?.image ?? '',
                duration: appState.mainVideo?.duration ?? 0);
              }
            ),
            Text(L10n.of(context).allVideos),
            const Expanded(child: VideosList()),
          ],
        )),
      ),
    );
  }
}