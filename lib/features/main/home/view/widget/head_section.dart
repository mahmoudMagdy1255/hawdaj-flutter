import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/styles.dart';

class HeadSection extends StatefulWidget {
  const HeadSection({super.key});

  @override
  State<HeadSection> createState() => _HeadSectionState();
}

class _HeadSectionState extends State<HeadSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 880.h,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            Assets.homeBackground,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0.w),
            child: Column(
              children: [
                SizedBox(height: 60.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                    Icon(Icons.search, color: Colors.white),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
                padding: EdgeInsets.all(20.w),
                margin:
                    EdgeInsets.only(right: 20.w, left: 20.0.w, bottom: 80.h),
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(.5),
                    borderRadius: BorderRadius.circular(24.w)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'مسجد سليمان',
                      style: Styles.textStyle24,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text('تقييم'),
                    SizedBox(
                      height: 30.h,
                    ),
                    Text('وصف عن المكان ' * 10),
                    SizedBox(
                      height: 20.h,
                    ),
                    SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            for (int i = 0; i < 6; i++)
                              Container(
                                margin: EdgeInsets.only(left: 10.w),
                                height: 100.h,
                                width: 100.w,
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(12.w)),
                              )
                          ],
                        ))
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
