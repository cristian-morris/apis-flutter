import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
class MyWidget extends StatefulWidget {
  static String id = "cinco";

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  late TooltipBehavior _tooltipBehavior;

@override
void initState(){
  _tooltipBehavior = TooltipBehavior(enable: true);
  super.initState();
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 500,
          height: 600,
          child: SfCartesianChart(

            primaryXAxis: CategoryAxis(),
            // Chart title
            title: ChartTitle(text: 'grafica'),
            // Enable legend
            legend: Legend(isVisible: true),
            // Enable tooltip
            tooltipBehavior: _tooltipBehavior,

            series: <LineSeries<SalesData, String>>[
              LineSeries<SalesData, String>(
                dataSource:  <SalesData>[
                  SalesData('Jan', 35),
                  SalesData('Feb', 28),
                  SalesData('Mar', 34),
                  SalesData('Apr', 32),
                  SalesData('May', 40)
                ],
                xValueMapper: (SalesData sales, _) => sales.year,
                yValueMapper: (SalesData sales, _) => sales.sales,
                // Enable data label
                dataLabelSettings: DataLabelSettings(isVisible: true)
              )
            ]
          )
        )
      ),
    );
  }
}
class SalesData {
  SalesData(this.year, this.sales);
  final String year;
  final double sales;
}