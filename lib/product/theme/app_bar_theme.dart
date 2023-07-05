import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TeleAppBarTheme {
  final AppBarTheme teleAppBarTheme = const AppBarTheme(
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.dark,
      statusBarColor: Colors.transparent,
    ),
  );
}
