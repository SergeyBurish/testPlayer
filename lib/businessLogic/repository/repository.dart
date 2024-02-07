import 'package:test_player/businessLogic/model/models.dart';

abstract class Repository {
  Future<VideosResponse> getVideos({
    required int page,
    String? search,
  });
}