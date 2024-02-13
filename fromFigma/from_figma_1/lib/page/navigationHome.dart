

import 'package:flutter/material.dart';

import 'package:from_figma_1/page/screen/widgetTable.dart';
import 'package:from_figma_1/page/screen/widgetTest.dart';
import 'package:from_figma_1/page/screen/widgetTest2.dart';
import 'package:from_figma_1/page/screen/widgetTest3.dart';

class NavigationHome extends StatefulWidget {
  @override
  _NavigationHomeState createState() => _NavigationHomeState();
}

class _NavigationHomeState extends State<NavigationHome> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    WidgetTest(),
    WidgetTest2(),
    WidgetTest3(),
    WidgetTable(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  void _navigateToBackup() {
    // Navigator.push(
    //   context,
    //   MaterialPageRoute(builder: (context) => WidgetBackup()),
    // );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Horní Navigace'),
        actions: [
          IconButton(
            icon: Icon(Icons.settings_backup_restore),
            onPressed: _navigateToBackup,
          ),
        ],
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // Přidáno pro fixní typ navigační lišty
        backgroundColor: Colors.yellow,
        unselectedItemColor: Colors.grey, // Barva nevybraných položek
        selectedItemColor: Colors.blue, // Barva vybraných položek
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.shuffle),
            label: 'Hlavní',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Tabulka',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Průběh',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Nastavení',
          ),
        ],
      ),
    );
  }
}
