import 'package:d03xlms/core/navigation/router_helpers.dart';
import 'package:flutter/material.dart';

class NotFoundPage extends StatelessWidget {
  final String? currentName;
  const NotFoundPage({super.key, required this.currentName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            Text("404", style: Theme.of(context).textTheme.titleLarge),

            Text(
              "Page Not Found $currentName",
              style: Theme.of(context).textTheme.bodySmall,
            ),
            SizedBox(height: 24),
            ElevatedButton.icon(
              onPressed: () {
                RouterHelpers.goBack();
              },
              label: Text("Back"),
            ),
          ],
        ),
      ),
    );
  }
}
