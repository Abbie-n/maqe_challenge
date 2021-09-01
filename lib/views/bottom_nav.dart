import 'package:dashboard_challenge/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Container(
      constraints: BoxConstraints(maxHeight: double.infinity),
      child: BottomNavigationBar(
        selectedFontSize: 3.5.text,
        unselectedFontSize: 3.5.text,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.bgColor,
        selectedItemColor: AppColors.lightBlue,
        unselectedItemColor: AppColors.black.withOpacity(0.7),
        currentIndex: 0,
        showSelectedLabels: false,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: '',
            icon: SvgPicture.asset(
              "assets/icons/home.svg",
              fit: BoxFit.fitHeight,
              height: 3.7.height,
              color: AppColors.blue,
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(
              Icons.calendar_today_outlined,
              size: 3.height,
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Container(
              height: 4.height,
              width: 8.5.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.blue,
              ),
              alignment: Alignment.center,
              child: Center(
                child: Icon(
                  Icons.add,
                  size: 4.height,
                  color: AppColors.white,
                ),
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(
              Icons.people_outline,
              size: 4.height,
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(
              Icons.person_outline_sharp,
              size: 4.height,
              color: AppColors.black.withOpacity(0.6),
            ),
          ),
        ],
      ),
    );
  }
}
