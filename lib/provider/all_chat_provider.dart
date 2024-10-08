import 'package:finance_help_mate/model/chat_model.dart';
import 'package:finance_help_mate/network/endpoints.dart';
import 'package:finance_help_mate/network/requests.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final allChatProvider = StateNotifierProvider<_AllChat, List<ChatModel>?>(
  (ref) => _AllChat(),
);

class _AllChat extends StateNotifier<List<ChatModel>?> with HTTPRequests {
  _AllChat() : super([]);

  void getChat() async {
    final res = await getRequest(apiEndpoint(ApiEndpoints.getChat));
    if (res != null) state = chatModelFromJson(res["chatData"]);
  }
}
