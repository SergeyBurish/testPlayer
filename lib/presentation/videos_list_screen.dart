import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:test_player/internal/dependencies/state_module.dart';
import 'package:test_player/l10n/l10n.dart';
import 'package:test_player/presentation/components/img_with_duration.dart';
import 'package:test_player/presentation/components/list/videos_list.dart';
import 'package:test_player/presentation/components/video_description.dart';
import 'package:test_player/presentation/components/web_decorator.dart';

final appState = StateModule.appState();

@RoutePage()
class VideosListScreen extends StatefulWidget {
  const VideosListScreen({super.key});

  @override
  State<VideosListScreen> createState() => _VideosListScreenState();
}

class _VideosListScreenState extends State<VideosListScreen> {

  bool failToGetVideos = false;

  void setFail () => setState(() => failToGetVideos = true);
  
  void retry () {
    setState(() => failToGetVideos = false);
    appState.getVideos(onFail: setFail);
  }

  @override
  void initState() {
    super.initState();
    appState.getVideos(onFail: setFail);
  }

  @override
  Widget build(BuildContext context) {
    const horPadding = 15.0;

    return WebDecorator(
      child: Scaffold(
        appBar: AppBar(title: Text(L10n.of(context).listVideos)),
        body: Center(child: () {
          if (failToGetVideos) {
            return Column(
              children: [
                Text(L10n.of(context).failLoadVideos),
                ElevatedButton(
                onPressed: retry, 
                child: Text(L10n.of(context).retry),
              ),
              ],
            );
          } else {
            return Column(
              children: [
                Observer( builder: (_) {
                  return Column(
                    children: [
                      ImgWithDuration(
                        imageUrl: appState.mainVideo?.image ?? '',
                        duration: appState.mainVideo?.duration ?? 0),
                      if (appState.mainVideo != null) 
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: horPadding),
                          child: VideoDescription(mainVideo: true),
                        )
                    ],
                  );
                  }
                ),
                Text(L10n.of(context).allVideos),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: horPadding),
                    child: VideosList(),
                  )
                ),
              ],
            );
          }
        }())
      ),
    );
  }
}