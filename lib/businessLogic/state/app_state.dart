import 'package:mobx/mobx.dart';
import 'package:test_player/businessLogic/repository/repository.dart';

part 'app_state.g.dart';

class AppState = _AppState with _$AppState;

abstract class _AppState with Store {
  final Repository _repository;

  _AppState(this._repository);

  @observable
  int currentVideosPage = 1;

    @action
  void getVideos() {
    _repository.getVideos(page: currentVideosPage);
  }

  @action
  void getVideosNextPage() {
    _repository.getVideos(page: currentVideosPage + 1);
    currentVideosPage ++;
  }
}