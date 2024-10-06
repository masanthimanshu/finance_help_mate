import 'package:finance_help_mate/model/chat_model.dart';
import 'package:finance_help_mate/network/endpoints.dart';
import 'package:finance_help_mate/network/requests.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final recentActivityProvider = FutureProvider(
  (ref) => HomeController().getRecentChat(),
);

class HomeController with HTTPRequests {
  Future<List<ChatModel>?> getRecentChat() async {
    final res = await getRequest(apiEndpoint(ApiEndpoints.limitChat));

    if (res != null) return chatModelFromJson(res["chatData"]);
    return null;
  }
}
