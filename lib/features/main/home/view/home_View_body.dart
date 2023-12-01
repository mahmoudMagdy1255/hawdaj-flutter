import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 70.w,
              color: const Color(0xff00142a),
              child: Padding(
                padding: EdgeInsets.all(16.0.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(Icons.menu, color: Colors.white),
                    DropdownButton<String>(
                      value: 'العربية',
                      icon: const Icon(
                        Icons.arrow_drop_down,
                        color: Colors.white,
                      ),
                      underline: const SizedBox(),
                      onChanged: (String? newValue) {
                        // Update the selected value
                        // selectedValue = newValue;
                        // // Rebuild the widget tree to reflect the updated value
                        // // This will update the selected value in the dropdown
                        // // and trigger any dependent UI changes
                        // if (mounted) {
                        //   // Check if the widget is still mounted before calling setState
                        //   // This is to prevent calling setState after the widget has been disposed
                        //   setState(() {});
                        // }
                      },
                      items: ['العربية', 'English', 'Рой', ' 尼亞尼']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: const TextStyle(color: Colors.white),
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        'assets/images/home.png',
                      ))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      Container(
                        // height: 60.h,
                        padding:
                            EdgeInsets.symmetric(horizontal: 8.w, vertical: 8),
                        margin: EdgeInsets.symmetric(
                            horizontal: 30.w, vertical: 30.h),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.w),
                          gradient: const LinearGradient(
                            begin: Alignment.centerRight,
                            end: Alignment.centerLeft,
                            colors: [
                              Color(0xff710e85),
                              Color(0xff460d51),
                            ],
                          ),
                        ),
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.white.withOpacity(.5),
                              radius: 16.w,
                              child: const Icon(
                                Icons.search,
                                color: Colors.white,
                                size: 18,
                              ),
                            ),
                            SizedBox(
                              width: 20.w,
                            ),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'البحث عن نتائج',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  'البحث بالاسم او المنطقة او المدينة',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Positioned(
                        left: 18.w,
                        top: 54.h,
                        child: CircleAvatar(
                          radius: 14.w,
                          backgroundColor: const Color(0xffe671ff),
                          child: const Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                            size: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 90.0.w),
                    child: const Text(
                      'الممكلة العربية السعودية بين الماضي والحاضر',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 80.h,
                  ),

                  ///cur1
                  CarouselSlider(
                    options: CarouselOptions(
                      height: 300.0.h,
                      autoPlay: false,
                      autoPlayAnimationDuration: const Duration(seconds: 5),
                    ),
                    items: [
                      'قرية الفاو',
                      'قرية الفاو',
                      'قرية الفاو',
                      'قرية الفاو'
                    ].map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                            margin: EdgeInsets.symmetric(horizontal: 10.0.w),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0.w),
                              child: Stack(
                                fit: StackFit.expand,
                                children: [
                                  Image.asset(
                                    'assets/images/alfao.png',
                                    fit: BoxFit.fill,
                                  ),
                                  Container(
                                    color: Colors.black45,
                                  ),
                                  Positioned(
                                      top: 12.w,
                                      left: 12.w,
                                      child: SizedBox(
                                          child: Image.asset(
                                        'assets/images/map.png',
                                        width: 40.w,
                                        height: 40.w,
                                      ))),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      const Text(
                                        'قرية الفاو',
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.white,
                                            height: 1.2),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text('الرياض، وادي الدوسري',
                                              maxLines: 3,
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.grey[300])),
                                          SizedBox(
                                            width: 6.w,
                                          ),
                                          Icon(
                                            Icons.pin_drop,
                                            color: Colors.grey[300],
                                          )
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    }).toList(),
                  ),
                  SizedBox(
                    height: 14.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: ['', '', '', '', '', ''].map((i) {
                      return Container(
                        width: 8.w,
                        height: 8.w,
                        margin: const EdgeInsets.symmetric(horizontal: 2),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey,
                        ),
                      );
                    }).toList(),
                  ),
                  SizedBox(
                    height: 50.h,
                  ),

                  ///cur2
                  CarouselSlider(
                    options: CarouselOptions(
                      height: 150.0.h,
                      autoPlay: true,
                      autoPlayAnimationDuration: const Duration(seconds: 5),
                    ),
                    items: ['', '', '', ''].map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                            margin: EdgeInsets.symmetric(horizontal: 10.0.w),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10.w),
                              child: Stack(
                                fit: StackFit.expand,
                                children: [
                                  Image.asset(
                                    'assets/images/tmoor.png',
                                    fit: BoxFit.fill,
                                  ),
                                  Container(
                                    color: Colors.black45,
                                  ),
                                  Positioned(
                                      top: 12.w,
                                      left: 12.w,
                                      child: Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10.0.w),
                                        decoration: BoxDecoration(
                                          color: Colors.black.withOpacity(.5),
                                          borderRadius:
                                              BorderRadius.circular(8.w),
                                        ),
                                        child: const Text(
                                          'مغلق',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      )),
                                  Positioned(
                                      bottom: 12.w,
                                      left: 16.w,
                                      child: Container(
                                        padding: EdgeInsets.all(4.0.w),
                                        decoration: BoxDecoration(
                                          color: const Color(0xff660261)
                                              .withOpacity(.7),
                                          shape: BoxShape.circle,
                                        ),
                                        child: const Icon(
                                          Icons.play_arrow,
                                          color: Colors.white,
                                        ),
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'مهرجان بريدة للتمور',
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.white,
                                              height: 1.2),
                                        ),
                                        Text('اللمملكة العربية السعودية',
                                            maxLines: 3,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.grey[300])),
                                        const Spacer(),
                                        Text('تفاصيل أكثر',
                                            style: TextStyle(
                                                fontSize: 12,
                                                decoration:
                                                    TextDecoration.underline,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.grey[300])),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    }).toList(),
                  ),
                  SizedBox(
                    height: 14.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: ['', '', '', '', '', ''].map((i) {
                      return Container(
                        width: 8.w,
                        height: 8.w,
                        margin: const EdgeInsets.symmetric(horizontal: 2),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey,
                        ),
                      );
                    }).toList(),
                  ),
                  SizedBox(
                    height: 50.h,
                  ),

                  InkWell(
                      child: Container(
                    height: 60.h,
                    width: 170.w,
                    decoration: BoxDecoration(
                        color: const Color(0xff660261),
                        borderRadius: BorderRadius.circular(16.w),
                        border: Border.all(width: .3, color: Colors.white)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'ابدأ رحلتك',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        SizedBox(
                          width: 6.w,
                        ),
                        const Icon(
                          Icons.ac_unit_rounded,
                          color: Colors.white,
                          size: 20,
                        )
                      ],
                    ),
                  )),
                  SizedBox(
                    height: 80.h,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            Padding(
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
                      image: AssetImage('assets/images/background.png'),
                      fit: BoxFit.cover,
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
                            Text(
                              'رحلاتنا',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            Text(
                              'يمكن أن يقدم السفر في المملكة العربية السعودية مجموعة متنوعة من التجارب، بدءًا من استكشاف المعالم التاريخية ووصولاً إلى الاستمتاع بالمناظر الطبيعية وتجربة التراث الثقافي الغني للبلاد',
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            InkWell(
                                child: Container(
                              height: 50.h,
                              width: 160.w,
                              decoration: BoxDecoration(
                                color: const Color(0xff660261),
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(60.w),
                                    bottomRight: Radius.circular(60.w)),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    'ابدأ رحلتك',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                  SizedBox(
                                    width: 6.w,
                                  ),
                                  const Icon(
                                    Icons.ac_unit_rounded,
                                    color: Colors.white,
                                    size: 20,
                                  )
                                ],
                              ),
                            )),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
          ],
        ),
      ),
    );
  }
}
