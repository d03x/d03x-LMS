import 'package:d03xlms/core/navigation/app_route.dart';
import 'package:d03xlms/core/navigation/router_helpers.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(padding: .directional(end: 10), child: CircleAvatar()),
        ],
        title: Text("Home"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          RouterHelpers.navigateTo(AppRoute.user);
        },
      ),
      body: Text("My Home Screen"),
    );
  }
}
