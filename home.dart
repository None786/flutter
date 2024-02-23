/*import 'package:flutter/material.dart';
import 'setting.dart';
import 'security.dart';
import 'healthcare.dart';
import 'alerts.dart';
import 'fire_alarm.dart';
import 'surveillance.dart';
import 'temperature.dart';
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    HomeTab(),
    AccountSettingsTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to SecureGuard!!'),
      ),
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}

class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GridView.count(
        
        crossAxisCount: 2,
        crossAxisSpacing: 16.0,
        mainAxisSpacing: 16.0,
        padding: EdgeInsets.all(16.0),
        children: [
          CategoryButton(
            
            title: 'Security',
            icon: Icons.security,
            onPressed: () {
              _navigateToCategoryPage(context, 'Security');
            },
          ),
          CategoryButton(
            title: 'Healthcare',
            icon: Icons.local_hospital,
            onPressed: () {
              _navigateToCategoryPage(context, 'Healthcare');
            },
          ),
          CategoryButton(
            title: 'Alerts',
            icon: Icons.notifications,
            onPressed: () {
              _navigateToCategoryPage(context, 'Alerts');
            },
            
          ),
          CategoryButton(
            title: 'Fire Alarm',
            icon: Icons.local_fire_department,
            onPressed: () {
              _navigateToCategoryPage(context, 'Fire Alarm');
            },
          ),
          CategoryButton(
            title: 'Surveillance',
            icon: Icons.videocam,
            onPressed: () {
              _navigateToCategoryPage(context, 'Surveillance');
            },
          ),
          CategoryButton(
            title: 'Temperature',
            icon: Icons.thermostat,
            onPressed: () {
              _navigateToCategoryPage(context, 'Temperature');
            },
          ),
        ],
      ),
    );
  }

  void _navigateToCategoryPage(BuildContext context, String category) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CategoryPage(category: category),
      ),
    );
  }
}

class CategoryButton extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onPressed;

  CategoryButton({required this.title, required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 40,
          ),
          SizedBox(height: 8),
          Text(title),
        ],
      ),
    );
  }
}

class CategoryPage extends StatelessWidget {
  final String category;

  CategoryPage({required this.category});

  @override
  Widget build(BuildContext context) {
    // Display different content based on the category
    Widget content;
    switch (category) {
      case 'Security':
        content = SecurityPage();
        break;
      case 'Healthcare':
        content = HealthcarePage();
        break;
      case 'Alerts':
        content = AlertsPage();
        break;
      case 'Fire Alarm':
        content = FireAlarmPage();
        break;
      case 'Surveillance':
        content = SurveillancePage();
        break;
      case 'Temperature':
        content = TemperaturePage();
        break;
      default:
        content = Center(child: Text('Invalid Category'));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(category),
      ),
      body: content,
    );
  }
}
*/

import 'package:flutter/material.dart';
import 'alerts.dart';
import 'fire_alarm.dart';
import 'healthcare.dart';
import 'security.dart';
import 'surveillance.dart';
import 'temperature.dart';
import 'setting.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    HomeTab(),
    AccountSettingsTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to SecureGuard!!'),
      ),
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}

class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GridView.count(
        crossAxisCount: MediaQuery.of(context).size.width > 600 ? 4 : 2, // Adjust number of columns based on screen width
        crossAxisSpacing: 16.0,
        mainAxisSpacing: 16.0,
        padding: EdgeInsets.all(16.0),
        children: [
          CategoryButton(
            title: 'Security',
            icon: Icons.security,
            onPressed: () {
              _navigateToCategoryPage(context, 'Security');
            },
          ),
          CategoryButton(
            title: 'Healthcare',
            icon: Icons.local_hospital,
            onPressed: () {
              _navigateToCategoryPage(context, 'Healthcare');
            },
          ),
          CategoryButton(
            title: 'Alerts',
            icon: Icons.notifications,
            onPressed: () {
              _navigateToCategoryPage(context, 'Alerts');
            },
          ),
          CategoryButton(
            title: 'Fire Alarm',
            icon: Icons.local_fire_department,
            onPressed: () {
              _navigateToCategoryPage(context, 'Fire Alarm');
            },
          ),
          CategoryButton(
            title: 'Surveillance',
            icon: Icons.videocam,
            onPressed: () {
              _navigateToCategoryPage(context, 'Surveillance');
            },
          ),
          CategoryButton(
            title: 'Temperature',
            icon: Icons.thermostat,
            onPressed: () {
              _navigateToCategoryPage(context, 'Temperature');
            },
          ),
        ],
      ),
    );
  }

  void _navigateToCategoryPage(BuildContext context, String category) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CategoryPage(category: category),
      ),
    );
  }
}

class CategoryButton extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onPressed;

  CategoryButton({required this.title, required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: MediaQuery.of(context).size.width > 600 ? 60 : 40, // Adjust icon size based on screen width
          ),
          SizedBox(height: 8),
          Text(title),
        ],
      ),
    );
  }
}

class CategoryPage extends StatelessWidget {
  final String category;

  CategoryPage({required this.category});

  @override
  Widget build(BuildContext context) {
    // Display different content based on the category
    Widget content;
    switch (category) {
      case 'Security':
        content = SecurityPage();
        break;
      case 'Healthcare':
        content = HealthcarePage();
        break;
      case 'Alerts':
        content = AlertsPage();
        break;
      case 'Fire Alarm':
        content = FireAlarmPage();
        break;
      case 'Surveillance':
        content = SurveillancePage();
        break;
      case 'Temperature':
        content = TemperaturePage();
        break;
      default:
        content = Center(child: Text('Invalid Category'));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(category),
      ),
      body: content,
    );
  }
}

