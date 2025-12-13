import 'package:d03xlms/core/navigation/app_route.dart';
import 'package:d03xlms/features/home/presentation/screens/home_screen.dart';
import 'package:d03xlms/features/login/presentation/screens/login_screen.dart';
import 'package:d03xlms/features/login/profile/screens/profile_screen.dart';
import 'package:d03xlms/shared/widgets/not_found_page.dart';
import 'package:flutter/material.dart';

class RouterHelpers {
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();
  static Future<dynamic> navigateTo(String routeName, {dynamic arguments}) {
    return navigatorKey.currentState!.pushNamed(
      routeName,
      arguments: arguments,
    );
  }

  static Future<dynamic> navigateToReplacement(
    String routeName, {
    dynamic arguments,
  }) {
    return navigatorKey.currentState!.pushReplacementNamed(
      routeName,
      arguments: arguments,
    );
  }

  static void goBack() {
    return navigatorKey.currentState!.pop();
  }

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoute.login:
        return MaterialPageRoute(builder: (context) => LoginScreen());
      case AppRoute.home:
        return MaterialPageRoute(builder: (context) => HomeScreen());
      case AppRoute.profile:
        return MaterialPageRoute(builder: (context)=>ProfileScreen());
      default:
        MaterialPageRoute(builder: (context) => LoginScreen());
    }
    return MaterialPageRoute(
      builder: (_) => NotFoundPage(currentName: settings.name),
    );
  }
}
