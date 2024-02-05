import 'package:flutter/material.dart';
import 'package:test_player/internal/routing/app_router.dart';
import 'package:test_player/l10n/l10n.dart';

final appRouter = AppRouter();

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Test Player',
      onGenerateTitle: (context) => L10n.of(context).appTitle,
      localizationsDelegates: L10n.localizationDelegates,
      supportedLocales: L10n.supportedLocales,
      locale: L10n.locale,
      theme: ThemeData(),
      routerConfig: appRouter.config(),
    );
  }
}