import 'package:finance_help_mate/components/transaction_card.dart';
import 'package:flutter/material.dart';

class AddTransaction extends StatelessWidget {
  const AddTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Add Transaction")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(children: [
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (e, index) => const TransactionCard(),
            ),
          ),
          const SizedBox(height: 20),
          TextField(
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.tag),
              hintText: "Lunch from zomato 350",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
