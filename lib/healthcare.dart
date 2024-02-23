import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class HealthcarePage extends StatefulWidget {
  @override
  _HealthcarePageState createState() => _HealthcarePageState();
}

class _HealthcarePageState extends State<HealthcarePage> {
  int _selectedPersonIndex = 0;

  List<List<FlSpot>> _healthData = [
    // Health data for person 1
    [
      FlSpot(0, 4),
      FlSpot(1, 3),
      FlSpot(2, 2),
      FlSpot(3, 4),
      FlSpot(4, 5),
    ],
    // Health data for person 2
    [
      FlSpot(0, 3),
      FlSpot(1, 2),
      FlSpot(2, 4),
      FlSpot(3, 3),
      FlSpot(4, 2),
    ],
    // Health data for person 3
    [
      FlSpot(0, 5),
      FlSpot(1, 4),
      FlSpot(2, 3),
      FlSpot(3, 2),
      FlSpot(4, 4),
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.local_hospital, size: 100),
            SizedBox(height: 16),
            Text('Healthcare Information'),
            SizedBox(height: 16),
            Container(
              width: 300,
              height: 200,
              child: LineChart(
                LineChartData(
                  gridData: FlGridData(show: false),
                  titlesData: FlTitlesData(show: false),
                  borderData: FlBorderData(show: false),
                  minX: 0,
                  maxX: 4,
                  minY: 0,
                  maxY: 6,
                  lineBarsData: [
                    LineChartBarData(
                      spots: _healthData[_selectedPersonIndex],
                      isCurved: true,
                      colors: [Colors.blue],
                      dotData: FlDotData(show: false),
                      belowBarData: BarAreaData(show: false),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Person 1'),
                Switch(
                  value: _selectedPersonIndex == 0,
                  onChanged: (value) {
                    setState(() {
                      if (value) {
                        _selectedPersonIndex = 0;
                      }
                    });
                  },
                ),
                Text('Person 2'),
                Switch(
                  value: _selectedPersonIndex == 1,
                  onChanged: (value) {
                    setState(() {
                      if (value) {
                        _selectedPersonIndex = 1;
                      }
                    });
                  },
                ),
                Text('Person 3'),
                Switch(
                  value: _selectedPersonIndex == 2,
                  onChanged: (value) {
                    setState(() {
                      if (value) {
                        _selectedPersonIndex = 2;
                      }
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
