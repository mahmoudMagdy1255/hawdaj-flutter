import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'drawerr.dart';
import 'widgets/best_destinations_slider.dart';
import 'widgets/best_events_slider.dart';
import 'widgets/best_resturants.dart';
import 'widgets/custom_main_slider.dart';
import 'widgets/custom_message_dialog.dart';
import 'widgets/elezba_section.dart';
import 'widgets/footer_section.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  int _currentIndex = 0;
  CarouselController _carouselController = CarouselController();
  CarouselController _carouselController2 = CarouselController();
  CarouselController _carouselController3 = CarouselController();
  CarouselController _carouselController5 = CarouselController();

  // Sample list of images (you can replace it with your own)
  final List<String> _imageUrls = [
    'assets/images/16425862937817.jpg',
    'assets/images/ZvKkyJmEKlgRepNa01wkmz4OPxzvwPufs6losmAH.png',
    'assets/images/Y86kxFQjNB8WeU2pDuFioakuSTprItvmIH6HbUvt.jpg',
  ];

  final List<String> StringTitleOnImages = [
    'مسجد سليمان التاريخي',
    'مسجد الداخلة',
    'مسجد الصحابي جرير بن عبدالله البجلي',
  ];

  final List<String> StringLocationOnImages = [
    'مكه المكرمه, الطائف',
    'الرياض,المجمعه',
    'مكه المكرمه, الطائف',
  ];
  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    print('------>rebuilded');
    return Scaffold(
      key: scaffoldKey,
      // backgroundColor: Colors.grey[50],
      appBar: AppBar(
        backgroundColor: const Color(0xff00142a),
        iconTheme: IconThemeData(color: Colors.white),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0.w),
            child: DropdownButton<String>(
              value: 'العربية',
              icon: const Icon(
                Icons.arrow_drop_down,
                color: Colors.white,
              ),
              underline: const SizedBox(),
              style: TextStyle(color: Colors.black),
              selectedItemBuilder: (BuildContext context) {
                return <Widget>[
                  Padding(
                    padding: EdgeInsets.all(14.0.w),
                    child: Text(
                      // selectedValue ?? 'Select an option',
                      'العربية',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ];
              },
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
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
      drawer: DrawerWidget(),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                CustomMainSlider(),
                SizedBox(
                  height: 40.h,
                ),
                CustomMessageDialog(),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('أفضل الوجهات',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    SizedBox(
                      width: 10.w,
                    ),
                    Image.asset(
                      'assets/images/plane.jpg',
                      height: 50.h,
                      width: 50.w,
                    )
                  ],
                ),
                SizedBox(
                  height: 5.h,
                ),
                const Text(
                  'اكتشف أفضل الوجهات والتجارب في المملكة العربية السعودية',
                  style: TextStyle(fontSize: 15),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 5.h,
                ),

                BestDestinationsSlider(),

                SizedBox(
                  height: 20.h,
                ),
                ///
                BestEventsSlider(),
                ///


                BestRestaurants(),

                SizedBox(
                  height: 20.h,
                ),
                ElezbaSection(),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: EdgeInsets.all(10.0.w),
                  child: Column(
                    children: [
                      const Row(
                        children: [
                          Text(
                            "خدماتنا",
                            style:
                                TextStyle(color: Colors.black, fontSize: 15),
                          ),
                        ],
                      ),
                      const Row(
                        children: [
                          Text(
                            '_ هودج',
                            style:
                                TextStyle(color: Colors.black, fontSize: 25),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                              height: 80.h,
                              width: MediaQuery.of(context).size.width - 20.w,
                              child: const Text(
                                'منصة هودج للمعالم والزيارات في المملكة العربية السعودية',
                                style: TextStyle(fontSize: 20),
                              ))
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Image.asset('assets/images/camel.png',
                          height: 200.h, width: 400.w, fit: BoxFit.fill),
                      CarouselSlider(
                        carouselController: _carouselController3,
                        items: ['', '', '']
                            .map((e) => Stack(
                                  children: [
                                    Container(
                                      width:
                                          MediaQuery.of(context).size.width -
                                              20.w,
                                      height: 200.h,
                                    ),
                                    Positioned(
                                      top: 20.h,
                                      left: 20.w,
                                      right: 20.w,
                                      child: Container(
                                        width: MediaQuery.of(context)
                                                .size
                                                .width -
                                            40.w,
                                        height: 180.h,
                                        decoration: BoxDecoration(
                                            color: Colors.grey[100],
                                            borderRadius:
                                                BorderRadius.circular(15.w)),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 20.w),
                                              child: Text(
                                                'أول منصة لتنظيم الرحلات باستخدام الذكاء الاصطناعي',
                                                style:
                                                    TextStyle(fontSize: 20),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      right: 0,
                                      top: 75.h,
                                      child: IconButton(
                                        icon: const CircleAvatar(
                                            child:
                                                Icon(Icons.arrow_back_ios)),
                                        onPressed: () {
                                          _carouselController3.previousPage();
                                        },
                                      ),
                                    ),
                                    Positioned(
                                      left: 0,
                                      top: 75.h,
                                      child: IconButton(
                                        icon: const CircleAvatar(
                                            child: Icon(
                                                Icons.arrow_forward_ios)),
                                        onPressed: () {
                                          _carouselController3.nextPage();
                                        },
                                      ),
                                    ),
                                    Positioned(
                                        top: 0,
                                        left: 50.w,
                                        right: 50.w,
                                        child: CircleAvatar(
                                          radius: 25.w,
                                          child:
                                              Icon(size: 20, Icons.comment),
                                        ))
                                  ],
                                ))
                            .toList(),
                        options: CarouselOptions(
                          height: 250.h,
                          // aspectRatio: 16 / 16,
                          viewportFraction: 1,
                          // autoPlay: true,
                          // enlargeCenterPage: true,
                        ),
                      ),
                    ],
                  ),
                ),
                // SizedBox(
                //   height: 10.h,
                // ),
                Image.asset('assets/images/big-map.png'),
                Image.asset('assets/images/visitors.png'),
                SizedBox(
                  height: 30.h,
                ),

                FooterSection(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
