import 'package:flutter/material.dart';

class LoadingIndicator {
  static bool _isShown = false;

  static show (context) async {
    await Future.delayed(Duration(milliseconds: 50));
    _isShown = true;
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Center(child: CircularProgressIndicator());
      },
    );
  }

  static hide (context) {
    if (_isShown) {
      Navigator.of(context, rootNavigator: true).pop(); 
    }
    _isShown = false;
  }
}