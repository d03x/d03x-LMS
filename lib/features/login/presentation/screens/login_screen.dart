import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 300,
          width: .infinity,
          child: Padding(
            padding: EdgeInsetsGeometry.directional(start: 17, end: 17),
            child: SizedBox(
              child: Column(
                spacing: 24,
                children: [
                  TextField(
                    decoration: InputDecoration(border: OutlineInputBorder()),
                  ),
                  TextField(
                    decoration: InputDecoration(border: OutlineInputBorder()),
                  ),

                  SizedBox(
                    width: .infinity,
                    child: ElevatedButton(
                      child: Text("Loign"),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
