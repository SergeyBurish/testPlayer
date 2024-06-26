import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test_player/internal/application.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  runApp(const Application());
}
