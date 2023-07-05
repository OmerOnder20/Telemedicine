import 'package:flutter/material.dart';

import 'app_bar_theme.dart';

class TeleAppTheme {
  final ThemeData teleAppTheme = ThemeData(
      appBarTheme: TeleAppBarTheme().teleAppBarTheme,
      scaffoldBackgroundColor: Colors.white);
}
