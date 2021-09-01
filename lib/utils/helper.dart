import 'package:flutter/material.dart';

class Helper {
  static Map<String, String> tileTitle = {
    "switch_holiday": "Switch",
  };
}

class Categories {
  categoryImage(String category) {
    switch (category) {
      case 'personal_leave':
        return Icon(Icons.airplanemode_active);
      case 'remote':
        return Icon(Icons.desktop_mac_rounded);
      case 'sick_leave':
        return Icon(Icons.email);
      case 'switch_holiday':
        return Icon(Icons.access_alarm);
      default:
        return ('assets/images/categories/cash.png');
    }
  }
}
