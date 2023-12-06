import 'package:flutter/material.dart';

abstract class Styles {
  static const textStyle10 = TextStyle(
    fontSize: 10,
  );
  static const textStyle12 = TextStyle(
    fontSize: 12,
  );
  static const textStyle14 = TextStyle(
    fontSize: 14,
  );
  static const textStyle16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );

  static const textStyle18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    // color: CupertinoColors.black,
  );

  static const textStyle20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.normal,
  );
  static const textStyle22 = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.bold,
  );

  static const textStyle24 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );

  static const textStyle26 = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.normal,
  );

  static const textStyle30 = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w900,
    letterSpacing: 1.2,
  );

  static const calendar =
      TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.grey);

  static const textStyle48 = TextStyle(
    fontSize: 48,
    fontWeight: FontWeight.w700,
    // color: Colors.grey[900]
  );

  static const textStyle32 = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.w700,
    // color: ColorsData.greyscale900
  );

  static const onBoardingStyle = TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.bold,
    // color: ColorsData.primary500,
  );
}
