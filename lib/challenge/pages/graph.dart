import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../const/functions/const.dart';
import '../const/functions/functions.dart';

class GraphScreen extends StatefulWidget {
  const GraphScreen({Key? key}) : super(key: key);

  @override
  _GraphScreenState createState() => _GraphScreenState();
}

class _GraphScreenState extends State<GraphScreen> {
  late TooltipBehavior _tooltip;

  @override
  void initState() {
    super.initState();
    _tooltip = TooltipBehavior(enable: true);

    getOrdersPerMonth();
  }

  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
  primaryXAxis: CategoryAxis(title: AxisTitle(text: "Times/Month") ),
  primaryYAxis: CategoryAxis(title: AxisTitle(text: "Orders")),
  tooltipBehavior: _tooltip,
  series: <ChartSeries<SalesData, String>>[
  ColumnSeries<SalesData, String>(
  borderRadius: BorderRadius.circular(5),
  spacing:2 ,

  // Bind data source
  dataSource: <SalesData>[
  SalesData('Jan', orders1["jan"]!),
  SalesData('Feb', orders1["feb"]!),
  SalesData('Mar', orders1["march"]!),
  SalesData('Apr', orders1["apr"]!),
  SalesData('May', orders1["may"]!),
  SalesData('Jun', orders1["jun"]!),
  SalesData('Jul', orders1["jul"]!),
  SalesData('Aug', orders1["aug"]!),
  SalesData('Sep', orders1["sep"]!),
  SalesData('Oct', orders1["oct"]!),
  SalesData('Nov', orders1["nov"]!),
  SalesData('Dec', orders1["dec"]!),
  ],
  xValueMapper: (SalesData sales, _) => sales.month,
  yValueMapper: (SalesData sales, _) => sales.sales,

  animationDuration: 2000,
  ),
  ]);
}
}

class SalesData {
  SalesData(this.month, this.sales);
  final String month;
  final int sales;
}
