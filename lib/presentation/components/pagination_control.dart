import 'package:flutter/material.dart';
import 'package:test_player/internal/dependencies/state_module.dart';
import 'package:test_player/l10n/l10n.dart';

final appState = StateModule.appState();

class PaginationControl extends StatelessWidget {
  const PaginationControl({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        if (appState.currentVideosPage > 1)
          IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            tooltip: L10n.of(context).previous,
            onPressed: () => appState.getVideosPrevPage(),
          ),
        Text('${appState.currentVideosPage}'),
        if (appState.hasMore)
          IconButton(
            icon: const Icon(Icons.arrow_forward_ios),
            tooltip: L10n.of(context).next,
            onPressed: () => appState.getVideosNextPage(),
          ),
      ],
    );
  }
}