import 'package:flutter/material.dart';

class FireAlarmPage extends StatefulWidget {
  @override
  _FireAlarmPageState createState() => _FireAlarmPageState();
}

class _FireAlarmPageState extends State<FireAlarmPage> {
  bool _isAlarmActive = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.local_fire_department, size: 100),
            SizedBox(height: 16),
            Text('Fire Alarm Information'),
            SizedBox(height: 16),

            // Button to Trigger Fire Alarm
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _isAlarmActive = !_isAlarmActive; // Toggle alarm state
                });

                if (_isAlarmActive) {
                  // Code to handle alarm activation (e.g., send notification, sound alarm)
                  print('Fire alarm activated!');
                } else {
                  // Code to handle alarm deactivation
                  print('Fire alarm deactivated.');
                }
              },
              child: Text(_isAlarmActive ? 'Deactivate Fire Alarm' : 'Activate Fire Alarm'),
            ),
          ],
        ),
      ),
    );
  }
}
