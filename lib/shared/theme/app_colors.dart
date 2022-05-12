import 'package:flutter/material.dart';

abstract class AppColors {
  Color get backgroundSplash;
  Color get background;
  Color get primaryColor;
  Color get title;
  Color get button;
  Color get border;
  Color get titleAppbar;
  Color get border2;
  Color get icon;
  Color get borderInfoCard;
  Color get iconBackground1;
  Color get iconBackground2;
  Color get infoCardMessage;
  Color get receiveValue;
  Color get sendValue;
  Color get eventTileTitle;
  Color get eventTileSubtitle;
  Color get eventTileMoney;
  Color get eventTilePeople;
  Color get divider;
  Color get stepperIndicatorPrimary;
  Color get stepperIndicatorSecondary;
  Color get backButton;
  Color get stepperNextButton;
  Color get stepperNextButtonDisabeld;
  Color get stepperTitle;
  Color get stepperSubtitle;
  Color get hintTextField;
  Color get textField;
  Color get inputBorder;
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
  Color get iconBackground1 => const Color(0xFFE9F8F2);

  @override
  Color get infoCardMessage => const Color(0xFF666666);

  @override
  Color get receiveValue => const Color(0xFF40B28C);

  @override
  Color get sendValue => const Color(0xFFE83F5B);

  @override
  Color get iconBackground2 => const Color(0xFFE83F5B);

  @override
  Color get eventTileMoney => const Color(0xFF666666);

  @override
  Color get eventTilePeople => const Color(0xFFA4B2AE);

  @override
  Color get eventTileSubtitle => const Color(0xFF666666);

  @override
  Color get eventTileTitle => const Color(0xFF455250);

  @override
  Color get divider => const Color(0xFF666666);

  @override
  Color get stepperIndicatorPrimary => const Color(0xFF3CAB82);

  @override
  Color get stepperIndicatorSecondary => const Color(0xFF666666);

  @override
  Color get backButton => const Color(0xFF666666);

  @override
  Color get primaryColor => const Color(0xFF40B38C);

  @override
  Color get stepperNextButton => const Color(0xFF455250);

  @override
  Color get stepperSubtitle => const Color(0xFF455250);

  @override
  Color get stepperTitle => const Color(0xFF455250);

  @override
  Color get hintTextField => const Color(0xFF666666);

  @override
  Color get textField => const Color(0xFF455250);

  @override
  Color get inputBorder => const Color(0xFF455250);

  @override
  Color get stepperNextButtonDisabeld =>
      const Color(0xFF666666).withOpacity(0.4);
}
