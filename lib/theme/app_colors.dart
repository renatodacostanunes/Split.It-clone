import 'package:flutter/material.dart';

abstract class AppColors {
  Color get backgroundSplash;
  Color get background;
  Color get title;
  Color get button;
  Color get border;
  Color get titleAppbar;
  Color get border2;
  Color get icon;
  Color get borderInfoCard;
  Color get backgroundBoxIcon;
  Color get messageInfoCard;
  Color get receiveValue;
  Color get sendValue;
}

class AppColorsDefault implements AppColors {
  @override
  Color get backgroundSplash => const Color(0xFF40B38C);

  @override
  Color get title => const Color(0xFF40B28C);

  @override
  Color get button => const Color(0xFF666666);

  @override
  Color get background => const Color(0xFFFFFFFF);

  @override
  Color get border => const Color(0xFFDCE0E6);

  @override
  Color get titleAppbar => const Color(0xFFFFFFFF);

  @override
  Color get border2 => const Color(0xFFFFFFFF);

  @override
  Color get icon => const Color(0xFFF5F5F5);

  @override
  Color get borderInfoCard => const Color(0xFFE6F0ED);

  @override
  Color get backgroundBoxIcon => const Color(0xFFE83F5B);

  @override
  Color get messageInfoCard => const Color(0xFF666666);

  @override
  Color get receiveValue => const Color(0xFF40B28C);

  @override
  Color get sendValue => const Color(0xFFE83F5B);
}
