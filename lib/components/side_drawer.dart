import 'package:flutter/material.dart';

class SideDrawer extends StatelessWidget {
  const SideDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      DrawerHeader(
        child: Image.asset(
          "assets/images/logo.png",
          width: double.infinity,
        ),
      )
    ]);
  }
}
