import 'package:finance_help_mate/model/chat_model.dart';
import 'package:finance_help_mate/network/endpoints.dart';
import 'package:finance_help_mate/network/requests.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final chatProvider = StateNotifierProvider<ChatController, List<ChatModel>?>(
  (ref) => ChatController(),
);

class ChatController extends StateNotifier<List<ChatModel>?> with HTTPRequests {
  ChatController() : super([]);

  void getChat() async {
    final res = await getRequest(apiEndpoint(ApiEndpoints.getChat));
    if (res != null) state = chatModelFromJson(res["chatData"]);
  }

  Future<void> addChat(Map<String, dynamic> data) async {
    await postRequest(url: apiEndpoint(ApiEndpoints.addChat), payload: data);
  }

  Future<void> deleteChat(String chatId) async {
    await deleteRequest(apiEndpoint(ApiEndpoints.deleteChat) + chatId);
  }
}
