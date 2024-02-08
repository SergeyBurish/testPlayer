import 'package:flutter/material.dart';

class WebDecorator extends StatelessWidget {
  final Widget child;
  const WebDecorator({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 500),
          child: child),
      ),
    );
  }
}