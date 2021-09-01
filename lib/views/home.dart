import 'package:flutter/material.dart';
import 'package:dashboard_challenge/utils/utils.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: 3.height,
            ),
            Positioned(
              left: 42.width,
              right: 0,
              child: Icon(
                Icons.home,
                size: SizeConfig.height(3.5),
                color: AppColors.blue,
              ),
            ),
            Positioned(
              child: Container(
                height: .8.height,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.blue,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
