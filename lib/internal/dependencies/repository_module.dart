import 'package:test_player/businessLogic/repository/repository.dart';
import 'package:test_player/data/repository/data_repository.dart';
import 'package:test_player/internal/dependencies/service_module.dart';

class RepositoryModule {
  static Repository? _repository;

  static Repository repository() {
    return _repository ??= DataRepository(ServiceModule.videoService());
  }
}