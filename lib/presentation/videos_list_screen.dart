// import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:test_player/internal/dependencies/state_module.dart';
import 'package:test_player/internal/routing/app_router.dart';
import 'package:test_player/l10n/l10n.dart';
import 'package:test_player/presentation/components/videos_list.dart';

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
    return Scaffold(
      appBar: AppBar(title: Text(L10n.of(context).listVideos)),
      body: Center(child: Column(
        children: [
          Text(L10n.of(context).allVideos),
          const Expanded(child: VideosList()),
        ],
      )),
    );
  }
}