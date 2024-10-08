import 'package:finance_help_mate/extras/chart_color.dart';
import 'package:finance_help_mate/model/chart_model.dart';
import 'package:finance_help_mate/provider/chart_data_provider.dart';
import 'package:finance_help_mate/style/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class HomeChart extends ConsumerWidget {
  const HomeChart({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final res = ref.watch(chartDataProvider);

    if (res.isEmpty) return SizedBox();

    return Column(children: [
      SfCircularChart(series: [
        RadialBarSeries<ChartModel, String>(
          dataSource: res,
          cornerStyle: CornerStyle.bothCurve,
          yValueMapper: (data, _) => data.total,
          xValueMapper: (data, _) => data.category,
          pointColorMapper: (data, _) => chartColor(data.category),
        ),
      ]),
      SizedBox(height: 25),
      GridView.builder(
        itemCount: allCategories.length,
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: 25,
          mainAxisSpacing: 15,
        ),
        itemBuilder: (e, index) {
          return Row(children: [
            Container(
              width: 25,
              height: 25,
              color: chartColor(allCategories[index]),
            ),
            SizedBox(width: 10),
            Text(
              allCategories[index],
              style: CustomTextStyle.boldSubText.style,
            ),
          ]);
        },
      ),
    ]);
  }
}

const List<String> allCategories = [
  "Income",
  "Expense",
  "Savings",
  "Investment"
];
