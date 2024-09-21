import 'package:finance_help_mate/components/recent_activity_card.dart';
import 'package:finance_help_mate/components/side_drawer.dart';
import 'package:finance_help_mate/style/icon_button_style.dart';
import 'package:finance_help_mate/style/text_style.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        IconButton(
          style: filledIconButton,
          icon: const Icon(Icons.person_outline),
          onPressed: () => Navigator.pushNamed(context, "/profile"),
        ),
        const SizedBox(width: 10),
      ]),
      drawer: const Drawer(child: SideDrawer()),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, "/add-transaction"),
        child: const Icon(Icons.chat),
      ),
      body: ListView(padding: const EdgeInsets.all(20), children: [
        Container(height: 250, color: Colors.grey),
        const SizedBox(height: 20),
        Text("Recent Activity", style: CustomTextStyle.smallHeading.style),
        Text(
          "All the recent transactions are displayed here -",
          style: CustomTextStyle.subText.style,
        ),
        const SizedBox(height: 20),
        ListView.builder(
          itemCount: 10,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (e, index) => const RecentActivityCard(),
        ),
      ]),
    );
  }
}
