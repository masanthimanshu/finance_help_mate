import 'package:finance_help_mate/style/text_style.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RecentActivityCard extends StatelessWidget {
  const RecentActivityCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
            FontAwesomeIcons.landmark,
            color: Colors.white,
            size: 15,
          ),
        ),
        const SizedBox(width: 10),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("Income", style: CustomTextStyle.extraSmallHeading.style),
          Text("Salary Received", style: CustomTextStyle.subText.style),
        ]),
        const Spacer(),
        const Icon(Icons.arrow_forward_ios),
      ]),
    );
  }
}
