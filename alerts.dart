import 'package:flutter/material.dart';

class AlertsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.notifications, size: 100),
            SizedBox(height: 16),
            Text('Alerts Information'),
            SizedBox(height: 16),

            // Display Dummy Alerts
            Expanded(
              child: ListView.builder(
                itemCount: 5, // Number of dummy alerts
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Icon(Icons.warning),
                    title: Text('Alert ${index + 1}'),
                    subtitle: Text('Description of Alert ${index + 1}'),
                    onTap: () {
                      // Handle alert tap
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

