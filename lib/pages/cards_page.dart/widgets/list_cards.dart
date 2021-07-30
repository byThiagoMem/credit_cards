import 'package:estore/theme/app_theme.dart';

import 'moving_card_widget.dart';

class ListCards {
  static List cards = [
    MovingCardWidget(
      primaryColor: AppTheme.colors.primaryRed,
      secundaryColor: AppTheme.colors.secundaryRed,
      thirdColor: AppTheme.colors.thirdRed,
    ),
    MovingCardWidget(
      primaryColor: AppTheme.colors.primaryBlue,
      secundaryColor: AppTheme.colors.secundaryBlue,
      thirdColor: AppTheme.colors.thirdBlue,
    ),
    MovingCardWidget(
      primaryColor: AppTheme.colors.primaryPurple,
      secundaryColor: AppTheme.colors.secundaryPurple,
      thirdColor: AppTheme.colors.thirdPurple,
    ),
  ];
}
