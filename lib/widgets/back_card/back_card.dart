import 'package:estore/theme/app_theme.dart';
import 'package:flutter/material.dart';

class BackCard extends StatelessWidget {
  final Color primaryColor;
  final Color secundaryColor;
  final Color thirdColor;
  const BackCard(
      {Key? key,
      required this.primaryColor,
      required this.secundaryColor,
      required this.thirdColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      margin: EdgeInsets.symmetric(horizontal: 25.0),
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
        padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 6,
              color: AppTheme.colors.grey,
            ),
            Container(
              height: 50,
              color: AppTheme.colors.darkBlack,
            ),
            SizedBox(height: 20.0),
            Container(
              alignment: Alignment.bottomRight,
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              margin: EdgeInsets.only(left: 100.0, right: 20.0),
              height: 35.0,
              color: AppTheme.colors.lightWhite,
              child: Text('123'),
            ),
            SizedBox(height: 10.0),
            Align(
              alignment: Alignment.center,
              child: Text(
                '1234 5678  9123  4567',
                style: AppTheme.textStyles.numberCardBack,
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                '06/27',
                style: AppTheme.textStyles.numberSinceCard,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'THIAGO A MEM',
              style: AppTheme.textStyles.nameCard,
            ),
          ],
        ),
      ),
    );
  }
}
