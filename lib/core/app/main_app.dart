import 'package:d03xlms/core/navigation/app_route.dart';
import 'package:d03xlms/core/navigation/router_helpers.dart';
import 'package:d03xlms/core/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MainApp extends ConsumerWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      theme: AppTheme.light,
      initialRoute: AppRoute.login,
      themeAnimationStyle: .noAnimation,
      navigatorKey: RouterHelpers.navigatorKey,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouterHelpers.generateRoute,
    );
  }
}
