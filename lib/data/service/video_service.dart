import 'package:test_player/data/dataProviders/data_providers.dart';

class VideoService {

  final VideosDataProvider _videosDataProvider;

  VideoService(this._videosDataProvider);
  
  Future<void> getVideos () async {
    final response = await _videosDataProvider.getVideos(page: 1);
    print('getVideos response $response');
  }
}