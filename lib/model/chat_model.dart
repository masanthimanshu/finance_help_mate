import 'package:intl/intl.dart';

List<ChatModel> chatModelFromJson(data) {
  return List<ChatModel>.from(data.map((x) => ChatModel.fromJson(x)));
}

class ChatModel {
  final String id;
  final int amount;
  final String date;
  final String input;
  final String category;
  final String subCategory;

  const ChatModel({
    required this.id,
    required this.date,
    required this.input,
    required this.amount,
    required this.category,
    required this.subCategory,
  });

  factory ChatModel.fromJson(Map<String, dynamic> json) {
    final dateTime = DateTime.parse(json["updatedAt"]);

    return ChatModel(
      id: json["_id"],
      input: json["input"],
      amount: json["amount"],
      category: json["category"],
      subCategory: json["subCategory"],
      date: DateFormat('dd MMM yyyy').format(dateTime),
    );
  }
}
