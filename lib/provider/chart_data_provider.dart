import 'package:finance_help_mate/model/chart_model.dart';
import 'package:finance_help_mate/network/endpoints.dart';
import 'package:finance_help_mate/network/requests.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final chartDataProvider = StateNotifierProvider<_ChartData, List<ChartModel>>(
  (ref) => _ChartData(),
);

class _ChartData extends StateNotifier<List<ChartModel>> with HTTPRequests {
  _ChartData() : super([]);

  void getAmount() async {
    final res = await getRequest(apiEndpoint(ApiEndpoints.totalAmount));
    if (res != null) state = chartModelFromJson(res["totalAmount"]);
  }
}
