import 'package:dashboard_challenge/views/views.dart';
import 'package:dashboard_challenge/utils/utils.dart';
import 'package:flutter/material.dart';

class MainView extends StatelessWidget {
  final views = <Widget>[
    HomeScreen(),
    Container(),
    Container(),
    Container(),
    Container(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Stack(
        children: [
          views[0],
        ],
      ),
      bottomNavigationBar: BottomNav(),
    );
  }
}
