import 'package:flutter/material.dart';

class AccountSettingsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Text('Account Settings Tab Content'),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Add logic for password reset button
              
            },
            child: Text('Password Reset'),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              // Add logic for additional button
            },
            child: Text('Additional Button'),
          ),
          // Will Add more buttons as needed
        ],
      ),
    );
  }
}
