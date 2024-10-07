import 'package:finance_help_mate/model/chat_model.dart';
import 'package:finance_help_mate/provider/icon_provider.dart';
import 'package:finance_help_mate/style/text_style.dart';
import 'package:flutter/material.dart';

class RecentActivityCard extends StatelessWidget {
  const RecentActivityCard({super.key, required this.data});

  final ChatModel data;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(width: 1, color: Colors.grey),
      ),
      child: Row(children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            color: Colors.black,
            shape: BoxShape.circle,
          ),
          child: iconProvider(data.category),
        ),
        const SizedBox(width: 20),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(data.category, style: CustomTextStyle.extraSmallHeading.style),
          Text(
            "- ${data.subCategory}",
            style: CustomTextStyle.grayItalicHeading.style,
          ),
          SizedBox(height: 5),
          Text(
            "${data.date} - ₹ ${data.amount}",
            style: CustomTextStyle.graySubText.style,
          ),
        ]),
        const Spacer(),
        const Icon(Icons.arrow_forward_ios),
      ]),
    );
  }
}
