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
  Video? mainVideo;

  @observable
  Video? currentVideo;

  @observable
  List<Video> listVideo = [];

  @observable
  bool searchMode = false;

  @observable
  String? searchText;

  @action
  Future<void> getVideos({String? search, required Function onFail}) async {
    searchText = search;
    try {
      final VideosResponse response = await _repository.getVideos(
        page: currentVideosPage, search: search);
      mainVideo = response.main;
      listVideo = response.data;
    } on Exception {
      onFail();
    }
  }

  @action
  Future<void> getVideosNextPage({required Function onFail}) async {
    try {
      await _repository.getVideos(page: currentVideosPage + 1);
      currentVideosPage ++;
    } on Exception {
      onFail();
    }
  }

  @action
  Future<void> setLike(int id, bool like, {required Function onFail}) async {
    try {
      Video updatedVideo = await _repository.setLike(id: id, like: like);

      if (mainVideo?.id == id) {
        mainVideo = updatedVideo;
      } else {
        currentVideo = updatedVideo;

        List<Video> updatedListVideo = [];
        for (var video in listVideo) {
          if (video.id == id) {
            updatedListVideo.add(updatedVideo);
          } else {
            updatedListVideo.add(video);
          }
        }
        listVideo = updatedListVideo;
      }
    } on Exception {
      onFail();
    }
  }

  @action
  void setCurrentVideoId(int id) {
    currentVideo = listVideo.firstWhere((video) => video.id == id);
  }

  @action
  void setSearchMode(bool search) {
    searchMode = search;
  }

  @action
  void setSearchText(String text) {
    searchText = text;
  }
}