import 'package:test_player/businessLogic/repository/repository.dart';
import 'package:test_player/data/service/video_service.dart';

class DataRepository extends Repository{
  final VideoService _videoService;

  DataRepository(this._videoService);

  @override
  Future<void> getVideos({required int page, String? search}) {
    print('DataRepository getVideos');
    return _videoService.getVideos();
  }
}