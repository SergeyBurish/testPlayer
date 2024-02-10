// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    VideoDetailsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const VideoDetailsScreen(),
      );
    },
    VideosListRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const VideosListScreen(),
      );
    },
  };
}

/// generated route for
/// [VideoDetailsScreen]
class VideoDetailsRoute extends PageRouteInfo<void> {
  const VideoDetailsRoute({List<PageRouteInfo>? children})
      : super(
          VideoDetailsRoute.name,
          initialChildren: children,
        );

  static const String name = 'VideoDetailsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [VideosListScreen]
class VideosListRoute extends PageRouteInfo<void> {
  const VideosListRoute({List<PageRouteInfo>? children})
      : super(
          VideosListRoute.name,
          initialChildren: children,
        );

  static const String name = 'VideosListRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
