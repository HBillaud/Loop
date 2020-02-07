import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io' show Platform;
import 'package:loop/screens/ios_view.dart';
import 'package:loop/screens/android_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  Widget build(BuildContext context) {
    if (Platform.isAndroid) {
      return AndroidApp();
    } else if (Platform.isIOS) {
      return IOSApp();
    } else {
      return null;
    }
  }
}