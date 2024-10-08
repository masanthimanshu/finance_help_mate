import 'package:finance_help_mate/controller/home_controller.dart';
import 'package:finance_help_mate/extras/chart_color.dart';
import 'package:finance_help_mate/model/chart_model.dart';
import 'package:finance_help_mate/style/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class HomeChart extends ConsumerWidget {
  const HomeChart({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final res = ref.watch(totalAmountProvider);

    if (!res.hasValue || res.value!.isEmpty) return SizedBox();

    return Column(children: [
      SfCircularChart(series: [
        RadialBarSeries<ChartModel, String>(
          dataSource: res.value,
          cornerStyle: CornerStyle.bothCurve,
          yValueMapper: (data, _) => data.total,
          xValueMapper: (data, _) => data.category,
          pointColorMapper: (data, _) => chartColor(data.category),
        ),
      ]),
      SizedBox(height: 25),
      GridView.builder(
        itemCount: categories.length,
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
              color: chartColor(categories[index]),
            ),
            SizedBox(width: 10),
            Text(
              categories[index],
              style: CustomTextStyle.boldSubText.style,
            ),
          ]);
        },
      ),
    ]);
  }
}

const List<String> categories = [
  "Income",
  "Expense",
  "Savings",
  "Investment",
];
