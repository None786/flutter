import 'package:flutter/material.dart';

class SecurityPage extends StatefulWidget {
  @override
  _SecurityPageState createState() => _SecurityPageState();
}

class _SecurityPageState extends State<SecurityPage> {
  bool _isSecuritySystemActive = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.security, size: 100),
            SizedBox(height: 16),
            Text('Security Information'),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Security System'),
                Switch(
                  value: _isSecuritySystemActive,
                  onChanged: (value) {
                    setState(() {
                      _isSecuritySystemActive = value;
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 16),
            Text(_isSecuritySystemActive ? 'Security System is Active' : 'Security System is Inactive'),
          ],
        ),
      ),
    );
  }
}
