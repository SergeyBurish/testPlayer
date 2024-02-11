import 'package:auto_route/annotations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:test_player/internal/dependencies/state_module.dart';
import 'package:test_player/l10n/l10n.dart';
import 'package:test_player/presentation/components/img_with_duration.dart';
import 'package:test_player/presentation/components/list/videos_list.dart';
import 'package:test_player/presentation/components/loading_indicator.dart';
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

  late TextEditingController textController;

  void retry () {
    appState.getVideos(search: appState.searchText);
  }

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
    appState.getVideos();
  }

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const horPadding = 15.0;

    return WebDecorator(
      child: Observer( builder: (_) {
        if (appState.loading) {
          LoadingIndicator.show(context);
        } else {
          LoadingIndicator.hide(context);
        }
        return Scaffold(
          appBar: appState.searchMode ? 
            AppBar(
              leading: IconButton( icon: const Icon(Icons.arrow_back, color: Colors.black),
                onPressed: () => appState.setSearchMode(false),
              ),
              title: CupertinoSearchTextField(
                controller: textController,
                placeholder: L10n.of(context).searchVideo,
                onSubmitted: (text) => appState.getVideos(search: text),
                onSuffixTap: () {
                  textController.clear();
                  appState.getVideos();
                },
              ),
            ) : 
            AppBar(title: Text(L10n.of(context).listVideos)),
          body: Center(child: () {
            if (appState.failToGetVideos) {
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
                  if (!appState.searchMode && appState.mainVideo != null)
                    ImgWithDuration(
                      imageUrl: appState.mainVideo!.image,
                      duration: appState.mainVideo!.duration),
                  if (!appState.searchMode && appState.mainVideo != null) 
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: horPadding),
                      child: VideoDescription(mainVideo: true),
                    ),
                  if (!appState.searchMode)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: horPadding),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            appState.searchText == null ? L10n.of(context).allVideos : appState.searchText!),
                          IconButton(
                            icon: const Icon(Icons.search),
                            tooltip: L10n.of(context).searchVideo,
                            onPressed: () => appState.setSearchMode(true),
                          ),
                        ],
                      ),
                    ),
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: horPadding),
                      child: VideosList(),
                    )
                  ),
                ],
              );
            } // else failToGetVideos
          }())
        );
      })
    );
  }
}