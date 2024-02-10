import 'package:test_player/businessLogic/model/models.dart';
import 'package:test_player/data/dataProviders/data_providers.dart';

class VideoService {

  final VideosDataProvider _videosDataProvider;
  final LikesDataProvider _likesDataProvider;

  VideoService(this._videosDataProvider, this._likesDataProvider);
  
  Future<VideosResponse> getVideos (int page, String? search) async {
    return  await _videosDataProvider.getVideos(page: page, search: search);
  }

  Future<Video> setLike (int id, bool like) async {
    return like ? await _likesDataProvider.setLike(id: id) : await _likesDataProvider.unsetLike(id: id);
  }
}