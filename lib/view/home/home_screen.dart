import 'package:finance_help_mate/components/home_chart.dart';
import 'package:finance_help_mate/components/recent_activity_card.dart';
import 'package:finance_help_mate/controller/home_controller.dart';
import 'package:finance_help_mate/style/icon_button_style.dart';
import 'package:finance_help_mate/style/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final res = ref.watch(recentActivityProvider);

    return Scaffold(
      appBar: AppBar(title: Text("Finance Help Mate"), actions: [
        IconButton(
          style: filledIconButton,
          icon: const Icon(Icons.person_outline),
          onPressed: () => Navigator.pushNamed(context, "/profile"),
        ),
        const SizedBox(width: 10),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, "/add-transaction"),
        child: const Icon(Icons.chat),
      ),
      body: ListView(padding: const EdgeInsets.all(20), children: [
        HomeChart(),
        const SizedBox(height: 20),
        Text("Recent Activity", style: CustomTextStyle.smallHeading.style),
        Text(
          "A glimpse of all your recent transactions -",
          style: CustomTextStyle.subText.style,
        ),
        const SizedBox(height: 20),
        res.hasValue
            ? ListView.builder(
                itemCount: res.value!.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (e, index) {
                  return RecentActivityCard(data: res.value![index]);
                },
              )
            : SizedBox(),
      ]),
    );
  }
}
