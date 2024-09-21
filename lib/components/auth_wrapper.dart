import 'package:finance_help_mate/style/text_style.dart';
import 'package:flutter/material.dart';

class AuthWrapper extends StatelessWidget {
  const AuthWrapper({
    super.key,
    required this.title,
    required this.nextBtn,
    required this.subTitle,
    required this.component,
  });

  final String title;
  final String subTitle;
  final Widget component;
  final VoidCallback nextBtn;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(alignment: Alignment.topCenter, children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Image.asset("assets/images/phone.png"),
        ),
        Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          Container(
            color: Colors.white,
            padding: const EdgeInsets.all(25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: CustomTextStyle.largeHeading.style),
                const SizedBox(height: 10),
                Text(subTitle, style: CustomTextStyle.subText.style),
                const SizedBox(height: 30),
                component,
                const SizedBox(height: 30),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: nextBtn,
                    child: const Text("Next"),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ]),
    );
  }
}
