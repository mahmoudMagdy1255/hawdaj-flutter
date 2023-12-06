import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomMessageDialog extends StatelessWidget {
  const CustomMessageDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(4.w),
          topLeft: Radius.circular(40.w),
          bottomRight: Radius.circular(40.w),
          bottomLeft: Radius.circular(4.w),
        ),
        child: Container(
          height: 300.h,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/desertBackground.png'),
              fit: BoxFit.fill,
            ),
          ),
          child: Stack(
            children: [
              Container(
                color: const Color(0xffc448ce).withOpacity(.6),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'رحلاتنا',
                      style: TextStyle(
                          fontSize: 20, color: Colors.white),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    const Text(
                      'يمكن أن يقدم السفر في المملكة العربية السعودية مجموعة متنوعة من التجارب، بدءًا من استكشاف المعالم التاريخية ووصولاً إلى الاستمتاع بالمناظر الطبيعية وتجربة التراث الثقافي الغني للبلاد',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 16, color: Colors.white),
                    ),
                    // SizedBox(
                    //   height: 20.h,
                    // ),
                    // InkWell(
                    //     child: Container(
                    //   height: 50.h,
                    //   width: 160.w,
                    //   decoration: BoxDecoration(
                    //     color: const Color(0xff660261),
                    //     borderRadius: BorderRadius.only(
                    //         topRight: Radius.circular(60.w),
                    //         bottomRight: Radius.circular(60.w)),
                    //   ),
                    //   child: Row(
                    //     mainAxisAlignment: MainAxisAlignment.center,
                    //     children: [
                    //       const Text(
                    //         'ابدأ رحلتك',
                    //         style: TextStyle(
                    //             color: Colors.white, fontSize: 18),
                    //       ),
                    //       SizedBox(
                    //         width: 6.w,
                    //       ),
                    //       const Icon(
                    //         Icons.ac_unit_rounded,
                    //         color: Colors.white,
                    //         size: 20,
                    //       )
                    //     ],
                    //   ),
                    // )),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
