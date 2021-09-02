import 'package:dashboard_challenge/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Helper {
  static var df = DateFormat("d MMM y");
  static var df2 = DateFormat('d');

  static Map<int, Icon> tileIcon = {
    0: Icon(Icons.access_time_filled, color: AppColors.orange),
    1: Icon(Icons.check_circle, color: AppColors.green),
    2: Icon(Icons.cancel, color: AppColors.grey),
  };

  static typeIcon(String type) {
    switch (type) {
      case 'personal_leave':
        return Icon(Icons.airplanemode_active_sharp);
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
