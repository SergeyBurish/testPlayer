import 'package:mobx/mobx.dart';
import 'package:test_player/businessLogic/model/models.dart';
import 'package:test_player/businessLogic/repository/repository.dart';

part 'app_state.g.dart';

class AppState = _AppState with _$AppState;

abstract class _AppState with Store {
  final Repository _repository;

  _AppState(this._repository);

  @observable
  int currentVideosPage = 1;

  @observable
  int currentVideId = 0;

  @observable
  List<Video> listVideo = [];

  @action
  Future<void> getVideos() async {
    try {
      final VideosResponse response = await _repository.getVideos(page: currentVideosPage);
      listVideo = response.data;
    } on Exception catch (e) {
      print('getVideos Exception: $e');
    }
  }

  @action
  Future<void> getVideosNextPage() async {
    try {
      await _repository.getVideos(page: currentVideosPage + 1);
      currentVideosPage ++;
    } on Exception catch (e) {
      print('getVideosNextPage Exception: $e');
    }
  }

  @action
  void setCurrentVideoId(int id) {
    currentVideId = id;
  }

  @action
  Video getCurrentVideo() {
    var currentVideo = listVideo.firstWhere((video) => video.id == currentVideId);
    // TODO: handle not found
    return currentVideo;
  }
}