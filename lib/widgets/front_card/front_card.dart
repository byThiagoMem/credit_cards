import 'package:estore/theme/app_theme.dart';
import 'package:flutter/material.dart';

class FrontCard extends StatelessWidget {
  final Color primaryColor;
  final Color secundaryColor;
  final Color thirdColor;
  const FrontCard(
      {Key? key,
      required this.primaryColor,
      required this.secundaryColor,
      required this.thirdColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      margin: EdgeInsets.symmetric(horizontal: 20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        gradient: LinearGradient(
          colors: [
            primaryColor,
            secundaryColor,
            thirdColor,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/chip.png',
              width: 50,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                '1234 5678 9123 4567',
                style: AppTheme.textStyles.numberCardFront,
              ),
            ),
            SizedBox(height: 5.0),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'MEMBER\nSINCE',
                      style: AppTheme.textStyles.labelNumberSinceCard,
                      textAlign: TextAlign.end,
                    ),
                    Text(
                      '02/17',
                      style: AppTheme.textStyles.numberSinceCard,
                    ),
                  ],
                ),
                SizedBox(width: 80.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'VALID\nTHRU',
                      style: AppTheme.textStyles.labelNumberSinceCard,
                      textAlign: TextAlign.end,
                    ),
                    Text(
                      '06/27',
                      style: AppTheme.textStyles.numberSinceCard,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 7.0),
            Text(
              'THIAGO A MEM',
              style: AppTheme.textStyles.nameCard,
            ),
            SizedBox(height: 15.0),
          ],
        ),
      ),
    );
  }
}
