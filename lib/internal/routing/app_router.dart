import 'package:auto_route/auto_route.dart';
import 'package:test_player/presentation/video_details_screen.dart';
import 'package:test_player/presentation/videos_list_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      page: VideosListRoute.page,
      initial: true,
    ),
    AutoRoute(page: VideoDetailsRoute.page,),
  ];
}