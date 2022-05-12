import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:split_it/shared/theme/app_theme.dart';

abstract class AppTextStyles {
  TextStyle get title;
  TextStyle get button;
  TextStyle get titleAppbar;
  TextStyle get greeting;
  TextStyle get messageInfoCard;
  TextStyle get infoCardSymbol1;
  TextStyle get infoCardValue1;
  TextStyle get infoCardSymbol2;
  TextStyle get infoCardValue2;
  TextStyle get eventTileTitle;
  TextStyle get eventTileSymbol;
  TextStyle get eventTileSubtitle;
  TextStyle get eventTileMoney;
  TextStyle get eventTilePeople;
  TextStyle get stepperIndicatorPrimary;
  TextStyle get stepperIndicatorSecondary;
  TextStyle get stepperNextButton;
  TextStyle get stepperTitle;
  TextStyle get stepperNextButtonDisabeld;
  TextStyle get stepperSubtitle;
  TextStyle get hintTextField;
  TextStyle get textField;
}

class AppTextStylesDefault implements AppTextStyles {
  @override
  TextStyle get title => GoogleFonts.montserrat(
        fontSize: 40,
        fontWeight: FontWeight.w700,
        color: AppTheme.colors.title,
      );

  @override
  TextStyle get button => GoogleFonts.inter(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: AppTheme.colors.button,
      );

  @override
  TextStyle get titleAppbar => GoogleFonts.montserrat(
        fontSize: 20,
        fontWeight: FontWeight.w700,
        color: AppTheme.colors.titleAppbar,
      );

  @override
  TextStyle get greeting => GoogleFonts.montserrat(
        fontSize: 20,
        fontWeight: FontWeight.w400,
        color: AppTheme.colors.titleAppbar,
      );

  @override
  TextStyle get messageInfoCard => GoogleFonts.inter(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: AppTheme.colors.infoCardMessage,
      );

  @override
  TextStyle get infoCardSymbol1 => GoogleFonts.montserrat(
        fontSize: 20,
        fontWeight: FontWeight.w400,
        color: AppTheme.colors.receiveValue,
      );

  @override
  TextStyle get infoCardValue1 => GoogleFonts.montserrat(
        fontSize: 20,
        fontWeight: FontWeight.w700,
        color: AppTheme.colors.receiveValue,
      );

  @override
  TextStyle get infoCardSymbol2 => GoogleFonts.montserrat(
        fontSize: 20,
        fontWeight: FontWeight.w400,
        color: AppTheme.colors.sendValue,
      );

  @override
  TextStyle get infoCardValue2 => GoogleFonts.montserrat(
        fontSize: 20,
        fontWeight: FontWeight.w700,
        color: AppTheme.colors.sendValue,
      );

  @override
  TextStyle get eventTileMoney => GoogleFonts.inter(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: AppTheme.colors.eventTileMoney,
      );

  @override
  TextStyle get eventTileSymbol => GoogleFonts.inter(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: AppTheme.colors.eventTileMoney,
      );

  @override
  TextStyle get eventTilePeople => GoogleFonts.inter(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: AppTheme.colors.eventTilePeople,
      );

  @override
  TextStyle get eventTileSubtitle => GoogleFonts.inter(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: AppTheme.colors.eventTileSubtitle,
      );

  @override
  TextStyle get eventTileTitle => GoogleFonts.inter(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: AppTheme.colors.eventTileTitle,
      );

  @override
  TextStyle get stepperIndicatorPrimary => GoogleFonts.roboto(
        fontSize: 14,
        fontWeight: FontWeight.w700,
        color: AppTheme.colors.stepperIndicatorPrimary,
      );

  @override
  TextStyle get stepperIndicatorSecondary => GoogleFonts.roboto(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: AppTheme.colors.stepperIndicatorSecondary,
      );

  @override
  TextStyle get stepperNextButton => GoogleFonts.inter(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: AppTheme.colors.stepperNextButton,
      );

  @override
  TextStyle get stepperSubtitle => GoogleFonts.inter(
        fontSize: 24,
        fontWeight: FontWeight.w400,
        color: AppTheme.colors.stepperSubtitle,
      );

  @override
  TextStyle get stepperTitle => GoogleFonts.inter(
        fontSize: 24,
        fontWeight: FontWeight.w700,
        color: AppTheme.colors.stepperTitle,
      );

  @override
  TextStyle get hintTextField => GoogleFonts.inter(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: AppTheme.colors.hintTextField,
      );

  @override
  TextStyle get textField => GoogleFonts.inter(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: AppTheme.colors.textField,
      );

  @override
  TextStyle get stepperNextButtonDisabeld => GoogleFonts.inter(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: AppTheme.colors.stepperNextButtonDisabeld,
      );
}
