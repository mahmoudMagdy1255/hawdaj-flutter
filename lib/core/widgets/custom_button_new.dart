import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/colors.dart';
import '../utils/styles.dart';

class CustomButtonNew extends StatelessWidget {
  final void Function()? onPressed;
  final double? size;
  Color buttonColor;
  final TextStyle? style;
  final String txt;
  final double? width;

  CustomButtonNew(
      {Key? key,
      this.onPressed,
      this.buttonColor = ColorsData.primary500,
      required this.txt,
      this.size,
      this.style,
      this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size ?? 56.h,
      child: Container(
          width: width ?? double.infinity,
          decoration: BoxDecoration(
            color: buttonColor,
            border: Border.all(color: buttonColor, width: 0),
            borderRadius: BorderRadius.circular(16.w),
            boxShadow: [
              BoxShadow(
                blurRadius: 10,
                offset: Offset(0, 2),
                color: Color(0xff000000).withOpacity(.12),
                spreadRadius: 0,
              ),
              BoxShadow(
                blurRadius: 5,
                offset: Offset(0, 2),
                color: Color(0xff000000).withOpacity(.16),
                spreadRadius: 0,
              )
            ],
          ),
          child: SizedBox(
            height: 52,
            child: MaterialButton(
              onPressed: onPressed,
              child: Text(
                txt,
                style: style ??
                    Styles.textStyle16.copyWith(
                        color: Colors.white, fontWeight: FontWeight.w700),
              ),
              // style: ElevatedButton.styleFrom(
              //     shape: StadiumBorder(), primary: buttonColor),
            ),
          )),
    );
  }
}
