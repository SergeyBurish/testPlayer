import 'package:test_player/businessLogic/model/models.dart';

abstract interface class LikesDataProvider {
  Future<Video> setLike({
    required int id,
  });

  Future<Video> unsetLike({
    required int id,
  });
}

abstract interface class VideosDataProvider {
  Future<VideosResponse> getVideos({
    required int page,
    String? search,
  });
}
