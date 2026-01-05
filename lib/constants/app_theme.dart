import 'package:flutter/material.dart';

class AppSizes {
  static const double padding = 10;
  static const double padding12 = 12;
  static const double radius = 30;
  static const double iconWidth = 24;
  static const double iconHeight = 24;
}

class AppColors {
  static const Color primary = Color(0xFFFC6D3F);
  static const Color secondary = Color(0xFFCDCDD2);

  static const Color black = Color(0xFF1E1F20);
  static const Color white = Color(0xFFFFFFFF);

  static const Color lightGray = Color(0xFFF5F5F6);
  static const Color lightGray2 = Color(0xFFF6F6F7);
  static const Color lightGray3 = Color(0xFFEFEFF1);
  static const Color lightGray4 = Color(0xFFF8F8F9);

  static const Color transparent = Colors.transparent;
  static const Color darkGray = Color(0xFF898C95);
}

class AppStyles {
  static List<BoxShadow> shadow = const [
    BoxShadow(color: Colors.black12, offset: Offset(0, 3), blurRadius: 3),
  ];
}
