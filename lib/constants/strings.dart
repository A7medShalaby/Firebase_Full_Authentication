// ignore_for_file: unnecessary_null_comparison

import 'package:flutter/material.dart';

final navigatorKey = GlobalKey<NavigatorState>();

class Utils {
  static final messengerKey = GlobalKey<ScaffoldMessengerState>();
  static showSnackBar(String message) {
    if (message == null) return;
    final snackBar = SnackBar(
      content: Text(message),
      duration: const Duration(seconds: 5),
      backgroundColor: Colors.grey,
    );

    messengerKey.currentState!
      ..removeCurrentSnackBar()
      ..showSnackBar(snackBar);
  }
}
