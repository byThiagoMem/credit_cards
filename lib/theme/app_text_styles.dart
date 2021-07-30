import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_theme.dart';

abstract class AppTextStyles {
  TextStyle get numberCardFront;
  TextStyle get numberCardBack;
  TextStyle get labelValidThru;
  TextStyle get numberValidThru;
  TextStyle get labelNumberSinceCard;
  TextStyle get numberSinceCard;
  TextStyle get nameCard;
  TextStyle get appBar;
}

class AppTextStyleDefault implements AppTextStyles {
  @override
  TextStyle get numberCardFront => GoogleFonts.rajdhani(
      fontSize: 25,
      color: AppTheme.colors.white,
      fontWeight: FontWeight.w600,
      letterSpacing: 6);

  @override
  TextStyle get numberCardBack => GoogleFonts.rajdhani(
      fontSize: 25,
      color: AppTheme.colors.white.withOpacity(.6),
      fontWeight: FontWeight.w600,
      letterSpacing: 4);

  @override
  TextStyle get nameCard => GoogleFonts.rajdhani(
      fontSize: 17,
      color: AppTheme.colors.white,
      fontWeight: FontWeight.w600,
      letterSpacing: 5,
      height: 1);

  TextStyle get labelNumberSinceCard => GoogleFonts.roboto(
      fontSize: 9,
      color: AppTheme.colors.white,
      fontWeight: FontWeight.w600,
      letterSpacing: 2);

  @override
  TextStyle get labelValidThru => GoogleFonts.rajdhani(
      fontSize: 25,
      color: AppTheme.colors.white,
      fontWeight: FontWeight.w600,
      letterSpacing: 5);

  @override
  TextStyle get numberSinceCard => GoogleFonts.rajdhani(
      fontSize: 17,
      color: AppTheme.colors.white,
      fontWeight: FontWeight.w600,
      letterSpacing: 5);

  @override
  TextStyle get numberValidThru => GoogleFonts.rajdhani(
      fontSize: 17,
      color: AppTheme.colors.white,
      fontWeight: FontWeight.w600,
      letterSpacing: 5);

  @override
  TextStyle get appBar => GoogleFonts.roboto(
        fontSize: 20,
        color: Colors.black,
        fontWeight: FontWeight.w500,
        letterSpacing: 1.5,
      );
}
