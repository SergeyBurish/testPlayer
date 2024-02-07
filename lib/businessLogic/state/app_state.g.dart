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

  late final _$_AppStateActionController =
      ActionController(name: '_AppState', context: context);

  @override
  void getVideos() {
    final _$actionInfo =
        _$_AppStateActionController.startAction(name: '_AppState.getVideos');
    try {
      return super.getVideos();
    } finally {
      _$_AppStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void getVideosNextPage() {
    final _$actionInfo = _$_AppStateActionController.startAction(
        name: '_AppState.getVideosNextPage');
    try {
      return super.getVideosNextPage();
    } finally {
      _$_AppStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentVideosPage: ${currentVideosPage}
    ''';
  }
}
