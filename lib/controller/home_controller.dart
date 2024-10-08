import 'package:finance_help_mate/model/chart_model.dart';
import 'package:finance_help_mate/network/endpoints.dart';
import 'package:finance_help_mate/network/requests.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final totalAmountProvider = FutureProvider((ref) {
  return HomeController().totalAmount();
});

class HomeController with HTTPRequests {
  Future<List<ChartModel>?> totalAmount() async {
    final res = await getRequest(apiEndpoint(ApiEndpoints.totalAmount));

    if (res != null) return chartModelFromJson(res["totalAmount"]);
    return null;
  }
}
