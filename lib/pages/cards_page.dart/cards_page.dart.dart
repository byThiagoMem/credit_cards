import 'package:estore/pages/cards_page.dart/widgets/carousel_widget.dart';
import 'package:estore/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CardsPage extends StatelessWidget {
  const CardsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.colors.backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Meus Cartões',
          style: AppTheme.textStyles.appBar,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 65),
          Container(
            width: 500,
            color: Colors.transparent,
            child: CarouselWidget(),
          ),
          Column(
            children: [],
          ),
          Expanded(
            child: Stack(
              children: [
                Container(
                  color: AppTheme.colors.backgroundMenu,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(88)),
                    border: Border.all(
                      width: 0,
                      color: AppTheme.colors.backgroundColor,
                    ),
                    color: AppTheme.colors.backgroundColor,
                  ),
                ),
              ],
            ),
          ),
          Stack(
            children: [
              Container(
                height: 140,
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.only(topRight: Radius.circular(88)),
                  border: Border.all(
                    width: 0,
                    color: AppTheme.colors.backgroundMenu,
                  ),
                  color: AppTheme.colors.backgroundMenu,
                ),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppTheme.colors.grey.withOpacity(.5),
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: AppTheme.colors.white,
        ),
      ),
    );
  }
}
