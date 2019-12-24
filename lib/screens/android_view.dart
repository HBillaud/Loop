import 'package:flutter/material.dart';

class AndroidApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Loop'),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                // child: ProfileInfo()
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text(
                  'Draw Header',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              // TabGroup(),
              ListTile(
                leading: Icon(Icons.person),
                title: Text('Account'),
              ),
              ListTile(
                leading: Icon(Icons.directions_car),
                title: Text('Previous Trips'),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
              ),
              ListTile(
                leading: Icon(Icons.info),
                title: Text('About'),
              ),
              ListTile(
                leading: Icon(Icons.help),
                title: Text('Help'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
