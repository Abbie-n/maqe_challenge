import 'package:dashboard_challenge/core/models/models.dart';
import 'package:flutter/material.dart';
import 'package:dashboard_challenge/utils/utils.dart';
import 'package:intl/intl.dart';

var df = DateFormat("dd MM yyyy");

class HomeTile extends StatelessWidget {
  final title;
  final isSecondText;
  final LeaveRequests? requests;

  const HomeTile({
    Key? key,
    this.title,
    this.isSecondText = false,
    this.requests,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5.width),
      padding: EdgeInsets.all(3.width),
      constraints: BoxConstraints(maxHeight: double.infinity),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2.height),
        color: AppColors.white,
      ),
      child: Opacity(
        opacity: 0.5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '$title',
              style: TextStyle(
                fontSize: 4.5.text,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.3,
              ),
            ),
            SizedBox(
              height: 1.5.height,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    tileText(
                      icons: Icons.desktop_mac_rounded,
                      // text: DateTime().,
                    ),
                    Spacer(),
                    tileText(
                      icons: Icons.desktop_mac_rounded,
                      text: '${requests?.status}',
                    )
                  ],
                ),
                SizedBox(
                  height: 1.5.height,
                ),
                isSecondText
                    ? tileText(
                        icons: Icons.desktop_mac_rounded,
                        text: 'Public holidays',
                      )
                    : Container()
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget tileText({IconData? icons, String? text}) {
    return Row(
      children: [
        Icon(icons),
        SizedBox(
          width: 2.width,
        ),
        Text(
          '$text',
          style: TextStyle(
            fontSize: 4.text,
            letterSpacing: 0.3,
            fontWeight: FontWeight.w300,
          ),
        ),
      ],
    );
  }
}