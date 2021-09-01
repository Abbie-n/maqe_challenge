import 'package:flutter/material.dart';
import 'package:dashboard_challenge/utils/utils.dart';

class RowTexts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.width),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'My request',
            style: TextStyle(
              fontSize: 5.5.text,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.3,
            ),
          ),
          Spacer(),
          Icon(
            Icons.calendar_today_outlined,
            color: AppColors.blue,
          ),
          SizedBox(
            width: 2.width,
          ),
          Text(
            'Public holidays',
            style: TextStyle(
              fontSize: 5.text,
              letterSpacing: 0.3,
              color: AppColors.blue,
              fontWeight: FontWeight.w300,
            ),
          )
        ],
      ),
    );
  }
}
