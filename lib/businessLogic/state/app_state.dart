import 'package:mobx/mobx.dart';
import 'package:test_player/businessLogic/model/models.dart';
import 'package:test_player/businessLogic/repository/repository.dart';

part 'app_state.g.dart';

class AppState = _AppState with _$AppState;

abstract class _AppState with Store {
  final Repository _repository;

  _AppState(this._repository);

  @observable
  bool failToGetVideos = false;

  @observable
  bool loading = false;

  @observable
  int currentVideosPage = 1;

  @observable
  bool hasMore = false;

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
  Future<void> getVideos({String? search}) async {
    failToGetVideos = false;
    if (searchText != search) {
      currentVideosPage = 1;
    }
    searchText = search;

    loading = true;
    try {
      final VideosResponse response = await _repository.getVideos(
        page: currentVideosPage, search: search);
      mainVideo = response.main;
      listVideo = response.data;
      hasMore = response.pagination.hasMore;
    } on Exception {
      failToGetVideos = true;
    }
    loading = false;
  }

  @action
  Future<void> getVideosNextPage() async {
    if (!hasMore) {
      return;
    }

    failToGetVideos = false;
    loading = true;
    try {
      VideosResponse response = await _repository.getVideos(page: currentVideosPage + 1, search: searchText);
      mainVideo = response.main;
      listVideo = response.data;
      hasMore = response.pagination.hasMore;
      currentVideosPage ++;
    } on Exception {
      failToGetVideos = true;
    }
    loading = false;
  }

  @action
  Future<void> getVideosPrevPage() async {
    if (currentVideosPage < 2) {
      return;
    }
    
    failToGetVideos = false;
    loading = true;
    try {
      VideosResponse response = await _repository.getVideos(page: currentVideosPage - 1, search: searchText);
      mainVideo = response.main;
      listVideo = response.data;
      hasMore = response.pagination.hasMore;
      currentVideosPage --;
    } on Exception {
      failToGetVideos = true;
    }
    loading = false;
  }

  @action
  Future<void> setLike(int id, bool like, {required Function onFail}) async {

    loading = true;
    try {
      Video updatedVideo = await _repository.setLike(id: id, like: like);

      if (mainVideo?.id == id) {
        mainVideo = updatedVideo;
      } 
        
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

    } on Exception {
      onFail();
    }
    loading = false;
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