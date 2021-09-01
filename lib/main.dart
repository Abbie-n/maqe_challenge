import 'package:dashboard_challenge/utils/utils.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';

import 'package:dashboard_challenge/core/models/models.dart';
import 'package:http/http.dart' as http;

const url = "https://maqe.github.io/json/holidays.json";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dashboard Application',
      theme: lightThemeData,
      home: Scaffold(
        body: Center(
          child: Text('Welcome!'),
        ),
      ),
    );
  }
}
