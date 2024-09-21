import 'package:finance_help_mate/components/side_drawer.dart';
import 'package:finance_help_mate/style/icon_button_style.dart';
import 'package:finance_help_mate/style/text_style.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
          itemBuilder: (e, index) => Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.only(bottom: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(width: 2, color: Colors.grey.shade200),
            ),
            child: Row(children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle,
                ),
                child: const FaIcon(
                  FontAwesomeIcons.sackDollar,
                  color: Colors.white,
                ),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Income",
                    style: CustomTextStyle.extraSmallHeading.style,
                  ),
                  Text(
                    "Salary Received",
                    style: CustomTextStyle.subText.style,
                  ),
                ],
              ),
              const Spacer(),
              const Icon(Icons.arrow_forward_ios),
            ]),
          ),
        ),
      ]),
    );
  }
}
