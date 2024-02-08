// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AppState on _AppState, Store {
  late final _$currentVideosPageAtom =
      Atom(name: '_AppState.currentVideosPage', context: context);

  @override
  int get currentVideosPage {
    _$currentVideosPageAtom.reportRead();
    return super.currentVideosPage;
  }

  @override
  set currentVideosPage(int value) {
    _$currentVideosPageAtom.reportWrite(value, super.currentVideosPage, () {
      super.currentVideosPage = value;
    });
  }

  late final _$currentVideIdAtom =
      Atom(name: '_AppState.currentVideId', context: context);

  @override
  int get currentVideId {
    _$currentVideIdAtom.reportRead();
    return super.currentVideId;
  }

  @override
  set currentVideId(int value) {
    _$currentVideIdAtom.reportWrite(value, super.currentVideId, () {
      super.currentVideId = value;
    });
  }

  late final _$mainVideoAtom =
      Atom(name: '_AppState.mainVideo', context: context);

  @override
  Video? get mainVideo {
    _$mainVideoAtom.reportRead();
    return super.mainVideo;
  }

  @override
  set mainVideo(Video? value) {
    _$mainVideoAtom.reportWrite(value, super.mainVideo, () {
      super.mainVideo = value;
    });
  }

  late final _$listVideoAtom =
      Atom(name: '_AppState.listVideo', context: context);

  @override
  List<Video> get listVideo {
    _$listVideoAtom.reportRead();
    return super.listVideo;
  }

  @override
  set listVideo(List<Video> value) {
    _$listVideoAtom.reportWrite(value, super.listVideo, () {
      super.listVideo = value;
    });
  }

  late final _$getVideosAsyncAction =
      AsyncAction('_AppState.getVideos', context: context);

  @override
  Future<void> getVideos() {
    return _$getVideosAsyncAction.run(() => super.getVideos());
  }

  late final _$getVideosNextPageAsyncAction =
      AsyncAction('_AppState.getVideosNextPage', context: context);

  @override
  Future<void> getVideosNextPage() {
    return _$getVideosNextPageAsyncAction.run(() => super.getVideosNextPage());
  }

  late final _$_AppStateActionController =
      ActionController(name: '_AppState', context: context);

  @override
  void setCurrentVideoId(int id) {
    final _$actionInfo = _$_AppStateActionController.startAction(
        name: '_AppState.setCurrentVideoId');
    try {
      return super.setCurrentVideoId(id);
    } finally {
      _$_AppStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  Video getCurrentVideo() {
    final _$actionInfo = _$_AppStateActionController.startAction(
        name: '_AppState.getCurrentVideo');
    try {
      return super.getCurrentVideo();
    } finally {
      _$_AppStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentVideosPage: ${currentVideosPage},
currentVideId: ${currentVideId},
mainVideo: ${mainVideo},
listVideo: ${listVideo}
    ''';
  }
}
