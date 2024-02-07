// import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:test_player/internal/dependencies/service_module.dart';
import 'package:test_player/internal/routing/app_router.dart';
import 'package:test_player/l10n/l10n.dart';

@RoutePage()
class VideosListScreen extends StatefulWidget {
  const VideosListScreen({super.key});

  @override
  State<VideosListScreen> createState() => _VideosListScreenState();
}

class _VideosListScreenState extends State<VideosListScreen> {


  void go2Details () => AutoRouter.of(context).push(const VideoDetailsRoute(),);
  void getVideos () {
    final vs = ServiceModule.videoService();
    vs.getVideos();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(L10n.of(context).listVideos)),
      body: Center(child: Column(
        children: [
          Text(L10n.of(context).allVideos),
          ElevatedButton(onPressed: go2Details, child: const Text('go2Details')),
          ElevatedButton(onPressed: getVideos, child: const Text('getVideos'))
        ],
      )),);
  }
}