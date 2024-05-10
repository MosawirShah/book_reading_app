import 'package:book_reading_app/constants/color_constant.dart';
import 'package:flutter/material.dart';

class CircularContainer extends StatelessWidget {
  const CircularContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Align(
      alignment: const Alignment(2.5,-1.4),
      child: Container(
        height: 250,
        width: 250,
        decoration: BoxDecoration(
          color: kContainerColor,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
