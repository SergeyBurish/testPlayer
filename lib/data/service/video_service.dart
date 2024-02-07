import 'package:test_player/businessLogic/model/models.dart';
import 'package:test_player/data/dataProviders/data_providers.dart';

class VideoService {

  final VideosDataProvider _videosDataProvider;

  VideoService(this._videosDataProvider);
  
  Future<VideosResponse> getVideos () async {
    return  await _videosDataProvider.getVideos(page: 1);
  }
}