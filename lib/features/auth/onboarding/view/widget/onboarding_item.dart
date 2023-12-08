import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hawdaj/core/utils/colors.dart';
import 'package:hawdaj/core/utils/styles.dart';
import 'package:hawdaj/core/widgets/custom_button_new.dart';
import 'package:hawdaj/features/auth/onboarding/model/onboardingModel.dart';

class OnBoardingItem extends StatelessWidget {
  OnBoardingItem({super.key, required this.item});

  OnBoardingModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: item.pageColor,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            item.image,
            fit: BoxFit.fill,
          ),
          Container(
            color: Colors.black45,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 200.w,
                      child: Text(
                        item.title,
                        style: Styles.textStyle30.copyWith(
                            color: ColorsData.greyscale50,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 120.h,
                ),
                Text(
                  item.destination,
                  style: Styles.textStyle26
                      .copyWith(color: ColorsData.greyscale50),
                ),
                Text(
                  item.location,
                  maxLines: 3,
                  textAlign: TextAlign.justify,
                  overflow: TextOverflow.ellipsis,
                  style: Styles.textStyle14
                      .copyWith(color: ColorsData.greyscale100, height: 1.2),
                ),
                SizedBox(
                  height: 200.h,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
