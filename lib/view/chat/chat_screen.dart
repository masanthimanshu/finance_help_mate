import 'package:finance_help_mate/components/chat_card.dart';
import 'package:finance_help_mate/controller/chat_controller.dart';
import 'package:finance_help_mate/provider/all_chat_provider.dart';
import 'package:finance_help_mate/style/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ChatScreen extends ConsumerStatefulWidget {
  const ChatScreen({super.key});

  @override
  ConsumerState<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends ConsumerState<ChatScreen> {
  final TextEditingController _controller = TextEditingController();

  void _handleSubmit(String val) async {
    if (val.isEmpty) return;

    _controller.clear();

    await ChatController().addChat({"input": val});
    ref.read(allChatProvider.notifier).getChat();
  }

  @override
  Widget build(BuildContext context) {
    final res = ref.watch(allChatProvider);

    return Scaffold(
      appBar: AppBar(title: const Text("Add Transaction")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(children: [
          res.isNotEmpty
              ? Expanded(
                  child: ListView.builder(
                    reverse: true,
                    itemCount: res.length,
                    itemBuilder: (e, index) => ChatCard(data: res[index]),
                  ),
                )
              : Expanded(
                  child: Center(
                    child: Text(
                      "No transaction yet",
                      style: CustomTextStyle.boldSubText.style,
                    ),
                  ),
                ),
          const SizedBox(height: 20),
          TextField(
            controller: _controller,
            onSubmitted: (e) => _handleSubmit(e),
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.tag),
              hintText: "Lunch from zomato 350",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
              ),
            ),
          ),
          const SizedBox(height: 10),
        ]),
      ),
    );
  }
}
