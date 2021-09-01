import 'package:dashboard_challenge/utils/themes.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dashboard Application',
      theme: lightThemeData,
      home: Text('Welcome'),
    );
  }
}
