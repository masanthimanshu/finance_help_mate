import 'package:dotted_border/dotted_border.dart';
import 'package:finance_help_mate/controller/chat_controller.dart';
import 'package:finance_help_mate/extras/chat_icon.dart';
import 'package:finance_help_mate/model/chat_model.dart';
import 'package:finance_help_mate/provider/all_chat_provider.dart';
import 'package:finance_help_mate/style/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ChatCard extends ConsumerWidget {
  const ChatCard({super.key, required this.data});

  final ChatModel data;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        border: Border.all(width: 1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
          ),
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(data.category, style: CustomTextStyle.whiteSubText.style),
              GestureDetector(
                onTap: () {
                  ChatController().deleteChat(data.id);
                  ref.read(allChatProvider.notifier).getChat();
                },
                child: Icon(Icons.cancel_outlined, color: Colors.white),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(data.input, style: CustomTextStyle.extraSmallHeading.style),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(data.date, style: CustomTextStyle.graySubText.style),
                  Text(
                    "₹ ${data.amount}",
                    style: CustomTextStyle.boldSubText.style,
                  ),
                ],
              ),
              SizedBox(height: 15),
              DottedBorder(
                strokeWidth: 1,
                dashPattern: const [10, 5, 10, 5],
                padding: const EdgeInsets.all(10),
                child: Row(children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle,
                    ),
                    child: chatIcon(data.category),
                  ),
                  const SizedBox(width: 10),
                  Text(data.category, style: CustomTextStyle.boldSubText.style),
                  const Spacer(),
                  Text(
                    data.subCategory,
                    style: CustomTextStyle.graySubText.style,
                  ),
                ]),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
