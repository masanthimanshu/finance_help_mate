import 'package:finance_help_mate/model/chat_model.dart';
import 'package:finance_help_mate/network/endpoints.dart';
import 'package:finance_help_mate/network/requests.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final limitChatProvider = StateNotifierProvider<_LimitChat, List<ChatModel>?>(
  (ref) => _LimitChat(),
);

class _LimitChat extends StateNotifier<List<ChatModel>?> with HTTPRequests {
  _LimitChat() : super([]);

  void limitChat() async {
    final res = await getRequest(apiEndpoint(ApiEndpoints.limitChat));
    if (res != null) state = chatModelFromJson(res["chatData"]);
  }
}
