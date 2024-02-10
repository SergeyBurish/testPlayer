import 'package:test_player/data/mocks/data_provider_mocks.dart';
import 'package:test_player/data/service/video_service.dart';

class ServiceModule {
  static VideoService? _videoService;

  static VideoService videoService() {
    return _videoService ??= VideoService(
      const VideosDataProviderMock(), const LikesDataProviderMock());
  }
}