import 'package:carousel_slider/carousel_controller.dart';
import 'package:estore/pages/cards_page.dart/widgets/list_cards.dart';
import 'package:estore/theme/app_theme.dart';
import 'package:flutter/material.dart';

class BoletsIndicators extends StatelessWidget {
  BoletsIndicators({Key? key}) : super(key: key);

  final CarouselController carouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: ListCards.cards.asMap().entries.map(
        (entry) {
          return GestureDetector(
            onTap: () {
              carouselController.animateToPage(entry.value);
            },
            child: Container(
              width: 10.0,
              height: 10.0,
              margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: AppTheme.colors.darkBlack),
            ),
          );
        },
      ).toList(),
    );
  }
}
