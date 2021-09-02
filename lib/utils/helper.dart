import 'package:dashboard_challenge/utils/colors.dart';
import 'package:flutter/material.dart';

class Helper {
  static Map<int, Icon> tileIcon = {
    0: Icon(Icons.access_time_filled, color: AppColors.orange),
    1: Icon(Icons.check_circle, color: AppColors.green),
    2: Icon(Icons.cancel, color: AppColors.grey),
  };

  // static Map<int, Icon> tileStatus = {
  //   0: Icon(Icons.access_time_filled, color: AppColors.orange),
  //   1: Icon(Icons.check_circle, color: AppColors.green),
  //   2: Icon(Icons.cancel, color: AppColors.grey),
  // };
}

class Categories {
  categoryImage(String category) {
    switch (category) {
      case 'personal_leave':
        return Icon(Icons.airplanemode_active);
      case 'remote':
        return Icon(Icons.desktop_mac_rounded);
      case 'sick_leave':
        return Icon(Icons.local_hospital_outlined);
      case 'switch_holiday':
        return Icon(Icons.shuffle);
      default:
        return Icon(Icons.desktop_mac_rounded);
    }
  }
}
