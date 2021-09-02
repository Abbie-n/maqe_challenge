import 'package:dashboard_challenge/core/models/models.dart';
import 'package:flutter/material.dart';
import 'package:dashboard_challenge/utils/utils.dart';

class HomeHeader extends StatelessWidget {
  final DataModel? data;

  const HomeHeader({Key? key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Stack(
      children: [
        Container(
          height: 35.height,
        ),
        Container(
          height: 20.height,
          color: AppColors.lightBlue,
        ),
        Positioned(
          top: 12.height,
          left: 5.width,
          height: 22.height,
          width: 90.width,
          child: Material(
            elevation: 4,
            borderRadius: BorderRadius.circular(2.height),
            child: Padding(
              padding: EdgeInsets.all(1.height),
              child: Column(
                children: [
                  Text(
                    'My holiday',
                    style: TextStyle(
                      fontSize: 5.5.text,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.3,
                    ),
                  ),
                  SizedBox(height: 2.height),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      verticalTile(value: data?.totalDay, text: 'Total'),
                      SizedBox(width: 5.width),
                      Container(
                        height: 6.height,
                        child: VerticalDivider(
                          thickness: .8,
                        ),
                      ),
                      SizedBox(width: 5.width),
                      verticalTile(
                        value: data?.totalDay,
                        text: 'Used',
                        color: AppColors.blue,
                      ),
                      SizedBox(width: 5.width),
                      Container(
                        height: 6.height,
                        child: VerticalDivider(
                          thickness: .8,
                        ),
                      ),
                      SizedBox(width: 5.width),
                      verticalTile(
                        value: data?.totalDay,
                        text: 'Left',
                        color: AppColors.orange,
                      ),
                    ],
                  ),
                  SizedBox(height: 2.height),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 4.5.height,
                        width: 33.width,
                        child: buttonWithIcon(
                          icon: Icon(Icons.add, color: AppColors.white),
                          text: 'Leave',
                          buttonColor: AppColors.blue,
                          textColor: AppColors.white,
                        ),
                      ),
                      SizedBox(width: 2.width),
                      Container(
                        height: 4.5.height,
                        width: 33.width,
                        child: buttonWithIcon(
                          icon: Icon(Icons.shuffle, color: AppColors.blue),
                          text: 'Switch',
                          buttonColor: AppColors.white,
                          textColor: AppColors.blue,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget verticalTile({var value, String? text, Color? color}) {
    return Column(
      children: [
        Text(
          '$value',
          style: TextStyle(
            fontSize: 5.5.text,
            fontWeight: FontWeight.bold,
            letterSpacing: 0.3,
            color: color,
          ),
        ),
        SizedBox(height: .5.height),
        Text(
          '$text',
          style: TextStyle(
            fontSize: 4.5.text,
            letterSpacing: 0.3,
            fontWeight: FontWeight.w300,
          ),
        )
      ],
    );
  }

  Widget buttonWithIcon({
    final text,
    final icon,
    final buttonColor,
    final textColor,
  }) {
    return Container(
      height: 5.5.height,
      width: 100.width,
      padding: EdgeInsets.symmetric(
        horizontal: 5.width,
      ),
      decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(1.height),
          border: Border.all(color: AppColors.blue)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(alignment: Alignment.centerRight, child: icon),
          Expanded(
            child: Align(
              alignment: Alignment.center,
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 4.5.text,
                  letterSpacing: 0.3,
                  fontWeight: FontWeight.w300,
                  color: textColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
