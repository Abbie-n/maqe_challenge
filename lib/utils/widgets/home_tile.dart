import 'package:dashboard_challenge/core/models/models.dart';
import 'package:flutter/material.dart';
import 'package:dashboard_challenge/utils/utils.dart';

class HomeTile extends StatelessWidget {
  final title;
  final isSecondText;
  final index;
  final LeaveRequests? requests;

  const HomeTile({
    Key? key,
    this.title,
    this.isSecondText = false,
    this.index = 0,
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
        opacity: index == 2 ? 0.5 : 1,
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
            Column(children: [
              Row(
                children: [
                  tileText(
                    icon: Helper.typeIcon(requests?.requestList![0].type),
                    text: Helper.df
                        .format(DateTime.parse(requests?.requestList![0].date)),
                  ),
                  Spacer(),
                  tileText(
                    icon: Helper.tileIcon[index],
                    text: '${requests?.status}'[0].toUpperCase() +
                        '${requests?.status}'.substring(1),
                  )
                ],
              ),
              SizedBox(
                height: 1.5.height,
              ),
              isSecondText
                  ? tileText(
                      icon: Helper.typeIcon(requests?.requestList![1].type),
                      text: Helper.df2.format(
                              DateTime.parse(requests?.requestList![2].date)) +
                          '-' +
                          Helper.df.format(
                              DateTime.parse(requests?.requestList![1].date)),
                    )
                  : Container()
            ])
          ],
        ),
      ),
    );
  }

  Widget tileText({Icon? icon, String? text}) {
    return Row(
      children: [
        Container(child: icon),
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
