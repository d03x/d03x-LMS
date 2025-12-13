import 'package:d03xlms/core/theme/app_bar_custom_theme.dart';
import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();
  static ThemeData get light => ThemeData(
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: CustomAppBarTheme.instance
  );
}
