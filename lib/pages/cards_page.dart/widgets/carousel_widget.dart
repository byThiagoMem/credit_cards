import 'package:carousel_slider/carousel_slider.dart';
import 'package:estore/theme/app_theme.dart';
import 'package:flutter/material.dart';

import 'list_cards.dart';

class CarouselWidget extends StatefulWidget {
  CarouselWidget({Key? key}) : super(key: key);

  @override
  _CarouselWidgetState createState() => _CarouselWidgetState();
}

class _CarouselWidgetState extends State<CarouselWidget> {
  final CarouselController carouselController = CarouselController();

  var currentcard = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: ListCards.cards.map(
            (card) {
              return Builder(
                builder: (context) {
                  return card;
                },
              );
            },
          ).toList(),
          options: CarouselOptions(
              enlargeCenterPage: true,
              enableInfiniteScroll: false,
              viewportFraction: 1.0,
              scrollDirection: Axis.horizontal,
              onPageChanged: (index, reason) {
                setState(() {
                  currentcard = index;
                });
              }),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 3.8),
          child: Row(
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
                    margin:
                        EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: currentcard == entry.key
                          ? AppTheme.colors.primaryRed
                          : AppTheme.colors.grey,
                    ),
                  ),
                );
              },
            ).toList(),
          ),
        ),
      ],
    );
  }
}
