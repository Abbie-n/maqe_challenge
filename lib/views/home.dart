import 'package:dashboard_challenge/utils/widgets/row_texts.dart';
import 'package:flutter/material.dart';
import 'package:dashboard_challenge/utils/utils.dart';
import 'package:dashboard_challenge/utils/widgets/widgets.dart';

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
      backgroundColor: AppColors.bgColor,
      body: Column(
        children: [
          HomeHeader(),
          SizedBox(height: 2.5.height),
          RowTexts(),
          SizedBox(height: 2.height),
          HomeTile(title: 'Leave', isSecondText: true, index: 0),
          SizedBox(height: 1.5.height),
          HomeTile(title: 'Switch', index: 1),
          SizedBox(height: 1.5.height),
          HomeTile(title: 'Leave', index: 2),
        ],
      ),
    );
  }
}
