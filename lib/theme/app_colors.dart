import 'package:flutter/material.dart';

abstract class AppColors {
  Color get white;
  Color get primaryRed;
  Color get secundaryRed;
  Color get thirdRed;
  Color get fourRed;
  Color get primaryBlue;
  Color get secundaryBlue;
  Color get thirdBlue;
  Color get primaryPurple;
  Color get secundaryPurple;
  Color get thirdPurple;
  Color get darkBlack;
  Color get grey;
  Color get lightWhite;
  Color get backgroundColor;
  Color get backgroundMenu;
}

class AppColorsDefault implements AppColors {
  @override
  Color get white => Color(0xFFFFFFFF);

  @override
  Color get primaryRed => Color(0xFFbf0d0d);

  @override
  Color get secundaryRed => Color(0xFF821a1a);

  @override
  Color get thirdRed => Color(0xFF571717);

  @override
  Color get darkBlack => Color(0xFF000000);

  @override
  Color get grey => Color(0xFF4f4a4a);

  @override
  Color get lightWhite => Color(0xFFdecaca);

  @override
  Color get fourRed => Color(0xFF2e0202);

  @override
  Color get primaryBlue => Color(0xFF0d10bf);

  @override
  Color get secundaryBlue => Color(0xFF1f1a82);

  @override
  Color get thirdBlue => Color(0xFF1c1757);

  @override
  Color get primaryPurple => Color(0xFF900dbf);

  @override
  Color get secundaryPurple => Color(0xFF661a82);

  @override
  Color get thirdPurple => Color(0xFF441757);

  @override
  Color get backgroundColor => Colors.grey.shade400;

  @override
  Color get backgroundMenu => Color(0xFF2e0425);
}
