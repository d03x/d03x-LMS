import 'package:d03xlms/core/navigation/app_route.dart';
import 'package:d03xlms/core/navigation/router_helpers.dart';
import 'package:d03xlms/shared/ui/input.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final TextEditingController textEditingController = TextEditingController();

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
                  Input(
                    prefixIcon: Icons.email,
                    hintText: "Alamat Email",
                    controller: textEditingController,
                    keyboardType: TextInputType.emailAddress,
                  ),
                  Input(
                    prefixIcon: Icons.password,
                    hintText: "Kata Sandi",
                    controller: textEditingController,
                  ),

                  SizedBox(
                    width: .infinity,
                    child: ElevatedButton(
                      child: Text("Loign"),
                      onPressed: () {
                        RouterHelpers.navigateTo(AppRoute.home);
                      },
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
