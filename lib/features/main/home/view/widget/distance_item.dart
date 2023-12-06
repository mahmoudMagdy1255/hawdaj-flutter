import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/styles.dart';

class DistanceItem extends StatelessWidget {
  const DistanceItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(12.w),
        topLeft: Radius.circular(36.w),
        bottomLeft: Radius.circular(12.w),
        bottomRight: Radius.circular(36.w),
      ),
      child: Container(
        height: 250.h,
        width: 220.w,
        color: Colors.grey,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              Assets.gareerMosque,
              fit: BoxFit.fill,
            ),
            Positioned(
                top: 10.h,
                right: 10.w,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 6.w),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6.w),
                    color: Colors.grey[200],
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 12,
                      ),
                      Text(
                        '2.3',
                        style: Styles.textStyle12.copyWith(height: 1),
                      ),
                    ],
                  ),
                )),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
                color: Colors.black.withOpacity(.4),
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'السلطان حسن',
                      style: Styles.textStyle16.copyWith(color: Colors.white),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on_sharp,
                          size: 20,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 4.w,
                        ),
                        Text(
                          'السعودية، الرياض',
                          style: Styles.textStyle14.copyWith(color: Colors.white),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
