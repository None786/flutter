import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class TemperaturePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.thermostat, size: 50),
            SizedBox(height: 16),
            Text('Temperature Histogram'),
            SizedBox(height: 16),
            Container(
              width: 300,
              height: 200,
              child: BarChart(
                BarChartData(
                  alignment: BarChartAlignment.spaceAround,
                  maxY: 6,
                  titlesData: FlTitlesData(
                    leftTitles: SideTitles(showTitles: true, reservedSize: 30),
                    bottomTitles: SideTitles(
                      showTitles: true,
                      getTitles: (value) {
                        // Customize the bottom axis labels
                        switch (value.toInt()) {
                          case 0:
                            return 'Jan';
                          case 1:
                            return 'Feb';
                          case 2:
                            return 'Mar';
                          case 3:
                            return 'Apr';
                          case 4:
                            return 'May';
                          case 5:
                            return 'Jun';
                          case 6:
                            return 'Jul';
                          // Add more cases as needed
                          default:
                            return '';
                        }
                      },
                    ),
                  ),
                  borderData: FlBorderData(
                    show: true,
                    border: Border.all(
                      color: const Color(0xff37434d),
                      width: 1,
                    ),
                  ),
                  barGroups: [
                    BarChartGroupData(
                      x: 0,
                      barRods: [
                        BarChartRodData(
                          y: 3,
                          colors: [Colors.blue],
                        ),
                      ],
                    ),
                    BarChartGroupData(
                      x: 1,
                      barRods: [
                        BarChartRodData(
                          y: 1,
                          colors: [Colors.blue],
                        ),
                      ],
                    ),
                    BarChartGroupData(
                      x: 2,
                      barRods: [
                        BarChartRodData(
                          y: 4,
                          colors: [Colors.blue],
                        ),
                      ],
                    ),
                    BarChartGroupData(
                      x: 3,
                      barRods: [
                        BarChartRodData(
                          y: 2,
                          colors: [Colors.blue],
                        ),
                      ],
                    ),
                    BarChartGroupData(
                      x: 4,
                      barRods: [
                        BarChartRodData(
                          y: 5,
                          colors: [Colors.blue],
                        ),
                      ],
                    ),
                    BarChartGroupData(
                      x: 5,
                      barRods: [
                        BarChartRodData(
                          y: 3,
                          colors: [Colors.blue],
                        ),
                      ],
                    ),
                    BarChartGroupData(
                      x: 6,
                      barRods: [
                        BarChartRodData(
                          y: 4,
                          colors: [Colors.blue],
                        ),
                      ],
                    ),
                    // Add more BarChartGroupData for additional bars
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
