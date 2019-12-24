import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loop/screens/settings.dart';
import 'package:loop/screens/map.dart';

class IOSApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: CupertinoPageScaffold(
        child: CupertinoTabScaffold(
          tabBar: CupertinoTabBar(
            items: [
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.location),
                title: Text('Map'),
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.settings),
                title: Text('Settings'),
              ),
            ],
            activeColor: Colors.black,
          ),
          tabBuilder: (context, i) {
            return CupertinoTabView(
              builder: (context) {
                return CupertinoPageScaffold(
                  child: (i == 0) ? MapScreen() : SettingsScreen(),
                );
              },
            );
          },
        ),
      ),
    );
  }
}