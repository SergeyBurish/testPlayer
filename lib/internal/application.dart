import 'package:flutter/material.dart';
import 'package:test_player/l10n/l10n.dart';
import 'package:test_player/presentation/videos_list.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test Player',
      onGenerateTitle: (context) => L10n.of(context).appTitle,
      localizationsDelegates: L10n.localizationDelegates,
      supportedLocales: L10n.supportedLocales,
      // locale: L10n.locale,
      theme: ThemeData(),
      home: const VideosList(),
    );
  }
}