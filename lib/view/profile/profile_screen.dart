import 'package:finance_help_mate/controller/auth_controller.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Profile")),
      body: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.all(25),
          child: ElevatedButton(
            onPressed: () => AuthController().logout(context),
            child: const Text("Logout"),
          ),
        ),
      ]),
    );
  }
}
