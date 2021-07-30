import 'dart:math';
import 'package:estore/widgets/back_card/back_card.dart';
import 'package:estore/widgets/front_card/front_card.dart';
import 'package:flutter/material.dart';

class MovingCardWidget extends StatefulWidget {
  final Color primaryColor;
  final Color secundaryColor;
  final Color thirdColor;
  const MovingCardWidget(
      {Key? key,
      required this.primaryColor,
      required this.secundaryColor,
      required this.thirdColor})
      : super(key: key);

  @override
  _MovingCardWidgetState createState() => _MovingCardWidgetState();
}

class _MovingCardWidgetState extends State<MovingCardWidget>
    with TickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;
  bool isFront = true;
  double verticalDrag = 0;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) => GestureDetector(
        onVerticalDragStart: (details) {
          controller.reset();

          setState(() {
            isFront = true;
            verticalDrag = 0;
          });
        },
        onVerticalDragUpdate: (details) {
          setState(() {
            verticalDrag += details.delta.dy;
            verticalDrag %= 360;

            setImageSide();
          });
        },
        onVerticalDragEnd: (details) {
          final double end = 360 - verticalDrag >= 180 ? 0 : 360;

          animation =
              Tween<double>(begin: verticalDrag, end: end).animate(controller)
                ..addListener(() {
                  setState(() {
                    verticalDrag = animation.value;
                    setImageSide();
                  });
                });
          controller.forward();
        },
        child: Transform(
          transform: Matrix4.identity()
            ..setEntry(3, 2, 0.001)
            ..rotateX(verticalDrag / 180 * pi),
          alignment: Alignment.centerRight,
          child: isFront
              ? FrontCard(
                  primaryColor: widget.primaryColor,
                  secundaryColor: widget.secundaryColor,
                  thirdColor: widget.thirdColor,
                )
              : Transform(
                  transform: Matrix4.identity()..rotateX(pi),
                  alignment: Alignment.center,
                  child: BackCard(
                    primaryColor: widget.primaryColor,
                    secundaryColor: widget.secundaryColor,
                    thirdColor: widget.thirdColor,
                  ),
                ),
        ),
      );

  void setImageSide() {
    if (verticalDrag <= 90 || verticalDrag >= 270) {
      isFront = true;
    } else {
      isFront = false;
    }
  }
}
