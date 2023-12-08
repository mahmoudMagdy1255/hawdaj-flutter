import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hawdaj/core/utils/app_router.dart';
import 'package:hawdaj/core/utils/colors.dart';
import 'package:hawdaj/core/utils/styles.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../model/onboardingModel.dart';
import 'onboarding_item.dart';

class OnBoardingViewBody extends StatefulWidget {
  OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  List<OnBoardingModel> onBoardingList = OnBoardingModel.onBoardingList;

  LiquidController liquidController = LiquidController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        LiquidSwipe(
          enableLoop: false,
          liquidController: liquidController,
          onPageChangeCallback: (newIndex) {
            currentIndex = newIndex;
            setState(() {});
          },
          fullTransitionValue: 600,
          // enableSideReveal: true,
          // slideIconWidget: Icon(
          //   Icons.arrow_forward_ios,
          //   color: ColorsData.greyscale50,
          // ),
          pages: [
            OnBoardingItem(item: onBoardingList[0]),
            OnBoardingItem(item: onBoardingList[1]),
            OnBoardingItem(item: onBoardingList[2]),
            OnBoardingItem(item: onBoardingList[3]),
          ],
        ),
        if (currentIndex < onBoardingList.length - 1)
          Positioned(
              top: 60.h,
              left: 20.w,
              child: InkWell(
                onTap: () {
                  liquidController.jumpToPage(page: onBoardingList.length - 1);
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 2.w, horizontal: 6.w),
                  decoration: BoxDecoration(
                      color: ColorsData.greyscale50.withOpacity(.75),
                      borderRadius: BorderRadius.circular(10.w)),
                  child: Text(
                    'تخطي',
                    style: Styles.textStyle16.copyWith(
                      color: ColorsData.greyscale700,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              )),
        Positioned(
            bottom: 60.h,
            child: InkWell(
              onTap: () {
                int nextPage = liquidController.currentPage + 1;
                if (nextPage < onBoardingList.length) {
                  liquidController.animateToPage(page: nextPage);
                } else {
                  GoRouter.of(context).push(AppRouter.kLoginView);
                }
              },
              child: CircleAvatar(
                radius: 50.w,
                backgroundColor: ColorsData.primary100.withOpacity(.3),
                child: CircleAvatar(
                  radius: 30.w,
                  backgroundColor: ColorsData.myPrimaryColor[600],
                  child: Visibility(
                    visible: currentIndex < onBoardingList.length - 1,
                    replacement: Text(
                      'استمر',
                      style: Styles.textStyle14
                          .copyWith(color: ColorsData.greyscale50),
                    ),
                    child: Icon(
                      Icons.arrow_forward,
                      color: ColorsData.greyscale50,
                      size: 30.w,
                    ),
                  ),
                ),
              ),
            )),
        Positioned(
            bottom: 30.h,
            child: AnimatedSmoothIndicator(
              activeIndex: currentIndex,
              count: onBoardingList.length,
              effect: WormEffect(
                  dotHeight: 5.h,
                  activeDotColor: ColorsData.myPrimaryColor[500]!),
            ))
      ],
    );
  }
}
