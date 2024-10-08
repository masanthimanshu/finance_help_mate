import 'package:finance_help_mate/network/endpoints.dart';
import 'package:finance_help_mate/network/requests.dart';

class ChatController with HTTPRequests {
  Future<void> addChat(Map<String, dynamic> data) async {
    await postRequest(url: apiEndpoint(ApiEndpoints.addChat), payload: data);
  }

  Future<void> deleteChat(String chatId) async {
    await deleteRequest(apiEndpoint(ApiEndpoints.deleteChat) + chatId);
  }
}
