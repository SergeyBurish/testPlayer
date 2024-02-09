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

  late final _$currentVideoAtom =
      Atom(name: '_AppState.currentVideo', context: context);

  @override
  Video? get currentVideo {
    _$currentVideoAtom.reportRead();
    return super.currentVideo;
  }

  @override
  set currentVideo(Video? value) {
    _$currentVideoAtom.reportWrite(value, super.currentVideo, () {
      super.currentVideo = value;
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

  late final _$searchModeAtom =
      Atom(name: '_AppState.searchMode', context: context);

  @override
  bool get searchMode {
    _$searchModeAtom.reportRead();
    return super.searchMode;
  }

  @override
  set searchMode(bool value) {
    _$searchModeAtom.reportWrite(value, super.searchMode, () {
      super.searchMode = value;
    });
  }

  late final _$searchTextAtom =
      Atom(name: '_AppState.searchText', context: context);

  @override
  String? get searchText {
    _$searchTextAtom.reportRead();
    return super.searchText;
  }

  @override
  set searchText(String? value) {
    _$searchTextAtom.reportWrite(value, super.searchText, () {
      super.searchText = value;
    });
  }

  late final _$getVideosAsyncAction =
      AsyncAction('_AppState.getVideos', context: context);

  @override
  Future<void> getVideos({String? search, required Function onFail}) {
    return _$getVideosAsyncAction
        .run(() => super.getVideos(search: search, onFail: onFail));
  }

  late final _$getVideosNextPageAsyncAction =
      AsyncAction('_AppState.getVideosNextPage', context: context);

  @override
  Future<void> getVideosNextPage({required Function onFail}) {
    return _$getVideosNextPageAsyncAction
        .run(() => super.getVideosNextPage(onFail: onFail));
  }

  late final _$setLikeAsyncAction =
      AsyncAction('_AppState.setLike', context: context);

  @override
  Future<void> setLike(int id, bool like, {required Function onFail}) {
    return _$setLikeAsyncAction
        .run(() => super.setLike(id, like, onFail: onFail));
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
  void setSearchMode(bool search) {
    final _$actionInfo = _$_AppStateActionController.startAction(
        name: '_AppState.setSearchMode');
    try {
      return super.setSearchMode(search);
    } finally {
      _$_AppStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSearchText(String text) {
    final _$actionInfo = _$_AppStateActionController.startAction(
        name: '_AppState.setSearchText');
    try {
      return super.setSearchText(text);
    } finally {
      _$_AppStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentVideosPage: ${currentVideosPage},
mainVideo: ${mainVideo},
currentVideo: ${currentVideo},
listVideo: ${listVideo},
searchMode: ${searchMode},
searchText: ${searchText}
    ''';
  }
}
