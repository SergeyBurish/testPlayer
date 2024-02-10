import 'package:test_player/businessLogic/state/app_state.dart';
import 'package:test_player/internal/dependencies/repository_module.dart';

class StateModule {
  static AppState? _appState;

  static AppState appState() {
    return _appState ??= AppState(RepositoryModule.repository());
  }
}