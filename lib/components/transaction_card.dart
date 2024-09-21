import 'package:dotted_border/dotted_border.dart';
import 'package:finance_help_mate/style/icon_button_style.dart';
import 'package:finance_help_mate/style/text_style.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TransactionCard extends StatelessWidget {
  const TransactionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 25),
      decoration: BoxDecoration(
        border: Border.all(width: 1),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          color: Colors.black,
          width: double.infinity,
          padding: const EdgeInsets.all(10),
          child: Text("Expense", style: CustomTextStyle.whiteSubText.style),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Text(
            "Lunch from zomato 200",
            style: CustomTextStyle.extraSmallHeading.style,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("22 Sept 2024", style: CustomTextStyle.graySubText.style),
              Text("₹ 215", style: CustomTextStyle.boldSubText.style),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: DottedBorder(
            strokeWidth: 1,
            dashPattern: const [10, 5, 10, 5],
            padding: const EdgeInsets.all(10),
            child: Row(children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  color: Colors.grey,
                  shape: BoxShape.circle,
                ),
                child: const FaIcon(
                  FontAwesomeIcons.creditCard,
                  color: Colors.white,
                  size: 15,
                ),
              ),
              const SizedBox(width: 10),
              Text("Expense", style: CustomTextStyle.boldSubText.style),
              const Spacer(),
              Text(
                "Eating Out / Ordering In",
                style: CustomTextStyle.graySubText.style,
              ),
            ]),
          ),
        ),
        const SizedBox(height: 5),
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
            IconButton(
              onPressed: () {},
              style: outlinedIconButton,
              icon: const Icon(Icons.edit),
            ),
            const SizedBox(width: 15),
            IconButton(
              onPressed: () {},
              style: outlinedIconButton,
              icon: const Icon(Icons.delete),
            ),
          ]),
        ),
        const SizedBox(height: 15),
      ]),
    );
  }
}
