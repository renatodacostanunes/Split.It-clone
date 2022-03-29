import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:split_it/theme/app_theme.dart';

abstract class AppTextStyles {
  TextStyle get title;
  TextStyle get button;
  TextStyle get titleAppbar;
  TextStyle get greeting;
  TextStyle get messageInfoCard;
  TextStyle get receiveValueInfoCard;
  TextStyle get receiveSymbolInfoCard;
  TextStyle get sendValueInfoCard;
  TextStyle get sendSymbolInfoCard;
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
        color: AppTheme.colors.messageInfoCard,
      );

  @override
  TextStyle get receiveSymbolInfoCard => GoogleFonts.montserrat(
        fontSize: 20,
        fontWeight: FontWeight.w400,
        color: AppTheme.colors.receiveValue,
      );

  @override
  TextStyle get receiveValueInfoCard => GoogleFonts.montserrat(
        fontSize: 20,
        fontWeight: FontWeight.w700,
        color: AppTheme.colors.receiveValue,
      );

  @override
  TextStyle get sendSymbolInfoCard => GoogleFonts.montserrat(
        fontSize: 20,
        fontWeight: FontWeight.w400,
        color: AppTheme.colors.sendValue,
      );

  @override
  TextStyle get sendValueInfoCard => GoogleFonts.montserrat(
        fontSize: 20,
        fontWeight: FontWeight.w700,
        color: AppTheme.colors.sendValue,
      );
}
