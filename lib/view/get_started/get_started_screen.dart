import 'package:finance_help_mate/style/text_style.dart';
import 'package:flutter/material.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        const Spacer(),
        Image.asset(
          "assets/images/man.png",
          width: MediaQuery.of(context).size.width / 2,
        ),
        const SizedBox(height: 10),
        Text("Finance Help Mate", style: CustomTextStyle.heading.style),
        Text(
          "Your Personal Finance Buddy: Simplifying\n"
          "Money Management using AI",
          style: CustomTextStyle.subText.style,
          textAlign: TextAlign.center,
        ),
        const Spacer(),
        Container(
          padding: const EdgeInsets.all(25),
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () => Navigator.pushReplacementNamed(context, "/auth"),
            child: const Text("Get Started"),
          ),
        ),
      ]),
    );
  }
}
