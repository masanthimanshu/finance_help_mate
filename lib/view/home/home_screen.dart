import 'package:finance_help_mate/components/home_chart.dart';
import 'package:finance_help_mate/components/recent_activity.dart';
import 'package:finance_help_mate/controller/auth_controller.dart';
import 'package:finance_help_mate/provider/limit_chat_provider.dart';
import 'package:finance_help_mate/style/icon_button_style.dart';
import 'package:finance_help_mate/style/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  void initState() {
    super.initState();
    ref.read(limitChatProvider.notifier).limitChat();
  }

  @override
  Widget build(BuildContext context) {
    final res = ref.watch(limitChatProvider);

    return Scaffold(
      appBar: AppBar(title: Text("Finance Help Mate"), actions: [
        IconButton(
          tooltip: "Logout",
          style: filledIconButton,
          icon: const Icon(Icons.logout),
          onPressed: () => AuthController().logout(context),
        ),
        const SizedBox(width: 10),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, "/add-transaction"),
        child: const Icon(Icons.chat),
      ),
      body: ListView(padding: const EdgeInsets.all(20), children: [
        HomeChart(),
        const SizedBox(height: 25),
        Divider(),
        const SizedBox(height: 25),
        Text("Recent Activity", style: CustomTextStyle.smallHeading.style),
        Text(
          "A glimpse of all your recent transactions -",
          style: CustomTextStyle.subText.style,
        ),
        const SizedBox(height: 25),
        Divider(),
        const SizedBox(height: 25),
        res!.isNotEmpty
            ? ListView.builder(
                itemCount: res.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (e, index) => RecentActivityCard(data: res[index]),
              )
            : Container(
                padding: EdgeInsets.only(top: 150),
                child: Center(
                  child: Text(
                    "No transaction yet",
                    style: CustomTextStyle.graySubText.style,
                  ),
                ),
              ),
      ]),
    );
  }
}
