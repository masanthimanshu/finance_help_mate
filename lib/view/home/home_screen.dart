import 'package:finance_help_mate/components/side_drawer.dart';
import 'package:finance_help_mate/style/icon_button_style.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        IconButton(
          style: iconButtonStyle,
          icon: const Icon(Icons.person_outline),
          onPressed: () => Navigator.pushNamed(context, "/profile"),
        ),
        const SizedBox(width: 10),
      ]),
      drawer: const Drawer(child: SideDrawer()),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, "/chat"),
        child: const Icon(Icons.chat),
      ),
      body: const Center(child: Text("Home Screen")),
    );
  }
}
