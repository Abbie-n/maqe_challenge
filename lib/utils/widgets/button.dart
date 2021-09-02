import 'package:flutter/material.dart';
import 'package:dashboard_challenge/utils/utils.dart';

class ButtonWidget extends StatelessWidget {
  final text;
  final icon;
  final buttonColor;
  final textColor;

  const ButtonWidget(
      {Key? key, this.text, this.icon, this.buttonColor, this.textColor})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
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
