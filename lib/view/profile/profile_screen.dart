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
            onPressed: () {},
            child: const Text("Logout"),
          ),
        ),
      ]),
    );
  }
}
