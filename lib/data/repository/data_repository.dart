import 'package:test_player/businessLogic/model/models.dart';
import 'package:test_player/businessLogic/repository/repository.dart';
import 'package:test_player/data/service/video_service.dart';

class DataRepository extends Repository{
  final VideoService _videoService;

  DataRepository(this._videoService);

  @override
  Future<VideosResponse> getVideos({required int page, String? search}) {
    return _videoService.getVideos();
  }
}