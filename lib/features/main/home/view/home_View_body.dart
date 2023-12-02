import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
                            const Text(
                              'رحلاتنا',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            const Text(
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
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('أفضل الوجهات',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
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
            Builder(builder: (context) {
              return Container(
                height: 300.0.h,
                margin: EdgeInsets.symmetric(horizontal: 10.0.w),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0.w),
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Image.asset(
                        _imageUrls[_currentIndex],
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
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            StringTitleOnImages[_currentIndex],
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                                height: 1.2),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(StringLocationOnImages[_currentIndex],
                                  maxLines: 3,
                                  textAlign: TextAlign.center,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.grey[300])),
                              SizedBox(
                                width: 5.w,
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
            }),
            SizedBox(
              height: 5.h,
            ),
            Stack(
              children: [
                CarouselSlider(
                  carouselController: _carouselController,
                  options: CarouselOptions(
                    height: 150.h,

                    // autoPlay: true,
                    enlargeCenterPage: true,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _currentIndex = index;
                      });
                    },
                  ),
                  items: _imageUrls.map((url) {
                    return Container(
                      width: 300.w,
                      margin: const EdgeInsets.all(5.0),
                      child: ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10.0)),
                        child:
                            Image.asset(url, fit: BoxFit.cover, width: 1000.0),
                      ),
                    );
                  }).toList(),
                ),
                Positioned(
                  right: 5,
                  top: 50,
                  child: IconButton(
                    icon: const CircleAvatar(child: Icon(Icons.arrow_back_ios)),
                    onPressed: () {
                      _carouselController.previousPage();
                    },
                  ),
                ),
                Positioned(
                  left: 5,
                  top: 50,
                  child: IconButton(
                    icon: const CircleAvatar(
                        child: Icon(Icons.arrow_forward_ios)),
                    onPressed: () {
                      _carouselController.nextPage();
                    },
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: _imageUrls.map((url) {
                int index = _imageUrls.indexOf(url);
                return Container(
                  width: 8.0,
                  height: 8.0,
                  margin: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentIndex == index ? Colors.blue : Colors.grey,
                  ),
                );
              }).toList(),
            ),
            SizedBox(
              height: 5.h,
            ),
            const Text('في السعودية',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const Text('السحر في كل زاوية',
                style: TextStyle(fontSize: 15, color: Colors.brown)),
            SizedBox(
              height: 3.h,
            ),
            SvgPicture.asset('assets/images/inSaudi-vector.svg', width: 100.w),
            SizedBox(
              height: 10.h,
            ),
            SizedBox(
              height: 600.0.h,
              child: Stack(
                children: [
                  Container(
                    height: 500.0.h,
                    margin: EdgeInsets.symmetric(horizontal: 10.0.w),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0.w),
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          Image.asset(
                            _imageUrls![_currentIndex],
                            fit: BoxFit.fill,
                          ),
                          Container(
                            color: Colors.black45,
                          ),
                          // Positioned(
                          //     top: 5.w,
                          //     left: 12.w,
                          //     child: SizedBox(
                          //         child: Image.asset(
                          //       'assets/images/map.png',
                          //       width: 40.w,
                          //       height: 40.w,
                          //     ))),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 5),
                                child: Text(
                                  'أفضل الفعاليات في السعودية',
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                      height: 1.2),
                                ),
                              ),
                              const Divider(
                                color: Colors.white,
                                height: 2,
                                endIndent: 20,
                                indent: 20,
                              ),
                              SizedBox(
                                height: 30.h,
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 5),
                                child: Text(
                                  'مهرجان الرياض للألعاب',
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                      height: 1.2),
                                ),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 5),
                                child: Text(
                                  'مهرجان الرياض للألعاب رجعلكم بتجارب وفعاليات فوق الخيال، حيث تنطلق فعالياته بجانب بوليفارد الرياض سيتي',
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.white,
                                      height: 1.2),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 5),
                                child: RatingBar.builder(
                                  itemSize: 20,
                                  initialRating: 5,
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  itemPadding: const EdgeInsets.symmetric(
                                      horizontal: 4.0),
                                  itemBuilder: (context, _) => const Icon(
                                    Icons.star_border,
                                    color: Colors.amber,
                                    //  size: 1,
                                  ),
                                  onRatingUpdate: (rating) {
                                    print(rating);
                                  },
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 2),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.pin_drop,
                                      color: Colors.grey[300],
                                    ),
                                    SizedBox(
                                      width: 6.w,
                                    ),
                                    Text('الرياض، وادي الدوسري',
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.grey[300])),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 5),
                                child: Row(
                                  children: [
                                    InkWell(
                                        child: Container(
                                      height: 40.h,
                                      width: 140.w,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(25.w),
                                          border: Border.all(
                                              width: .3, color: Colors.black)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          const Text(
                                            "تفاصيل أكثر",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 15),
                                          ),
                                          SizedBox(
                                            width: 6.w,
                                          ),
                                          const Icon(
                                            Icons.arrow_forward_ios_outlined,
                                            color: Colors.black,
                                            size: 20,
                                          )
                                        ],
                                      ),
                                    )),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    InkWell(
                                        child: Container(
                                      height: 40.h,
                                      width: 140.w,
                                      decoration: BoxDecoration(
                                          color: const Color(0xff660261),
                                          borderRadius:
                                              BorderRadius.circular(25.w),
                                          border: Border.all(
                                              width: .3, color: Colors.white)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          const Text(
                                            "إظهار الكل",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15),
                                          ),
                                          SizedBox(
                                            width: 6.w,
                                          ),
                                          const Icon(
                                            Icons.arrow_forward_ios_outlined,
                                            color: Colors.white,
                                            size: 20,
                                          )
                                        ],
                                      ),
                                    )),
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 30,
                    child: Container(
                      padding: const EdgeInsets.all(2),
                      height: 250.h,
                      width: MediaQuery.of(context).size.width,
                      child: Stack(
                        children: [
                          CarouselSlider(
                            carouselController: _carouselController,
                            options: CarouselOptions(
                              height: 700.h,
                              aspectRatio: 16 / 16,
                              viewportFraction: 0.4,
                              // autoPlay: true,
                              enlargeCenterPage: true,

                              onPageChanged: (index, reason) {
                                setState(() {
                                  _currentIndex = index;
                                });
                              },
                            ),
                            items: _imageUrls.map((url) {
                              return Container(
                                width: 300.w,
                                height: 400.h,
                                margin: const EdgeInsets.all(5.0),
                                child: Stack(children: [
                                  ClipRRect(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(10.0)),
                                    child: Image.asset(
                                      url,
                                      fit: BoxFit.fill,
                                      width: 300.w,
                                      height: 400.w,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.all(5),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10.0.w),
                                    decoration: BoxDecoration(
                                      color: Colors.black.withOpacity(.5),
                                      borderRadius: BorderRadius.circular(8.w),
                                    ),
                                    child: const Text(
                                      'مغلق',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ]),
                              );
                            }).toList(),
                          ),
                          Positioned(
                            right: 5,
                            top: 80,
                            child: IconButton(
                              icon: const CircleAvatar(
                                  child: Icon(Icons.arrow_back_ios)),
                              onPressed: () {
                                _carouselController.previousPage();
                              },
                            ),
                          ),
                          Positioned(
                            left: 5,
                            top: 80,
                            child: IconButton(
                              icon: const CircleAvatar(
                                  child: Icon(Icons.arrow_forward_ios)),
                              onPressed: () {
                                _carouselController.nextPage();
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('المطاعم',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                SizedBox(
                  width: 10.w,
                ),
                Image.asset(
                  'assets/images/restaurant.png',
                  height: 30.h,
                  width: 30.w,
                )
              ],
            ),
            SizedBox(
              height: 5.h,
            ),
            const Text(
              "تتمتع المملكة العربية السعودية بمشهد طهي متنوع حيث تقدم العديد من المطاعم التي تلبي الأذواق والتفضيلات المختلفة.",
              style: TextStyle(fontSize: 15),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10.h,
            ),
            CarouselSlider(
                carouselController: _carouselController2,
                options: CarouselOptions(
                  // height: 300.0.h,
                  // enlargeCenterPage: true,
                  viewportFraction: 1,
                  autoPlay: false,
                  autoPlayAnimationDuration: const Duration(seconds: 5),
                ),
                items: ['', '', ''].map((e) {
                  return Container(
                    height: 230.h,
                    // padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(25)),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                              child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                const Text(
                                  "مقهى إن لوف للقهوة - الرياض",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  maxLines: 1,
                                  textAlign: TextAlign.start,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                const Row(
                                  children: [
                                    Icon(
                                      Icons.restaurant,
                                      color: Color(0xff660261),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "اسيوي.دولي.ايطالي",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                                const Row(
                                  children: [
                                    Icon(
                                      Icons.location_on_outlined,
                                      color: Color(0xff660261),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "المدينه",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                                const Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "3",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    Expanded(child: SizedBox()),
                                    Text(
                                      "التعليقات (40)",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Row(
                                  children: [
                                    InkWell(
                                        child: Container(
                                      height: 40.h,
                                      width: 140.w,
                                      decoration: BoxDecoration(
                                          color: const Color(0xff660261),
                                          borderRadius: const BorderRadius.only(
                                            bottomLeft: Radius.circular(20),
                                            bottomRight: Radius.circular(20),
                                            topRight: Radius.circular(20),
                                          ),
                                          border: Border.all(
                                              width: .3, color: Colors.black)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          const Text(
                                            "تفاصيل أكثر",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15),
                                          ),
                                          SizedBox(
                                            width: 6.w,
                                          ),
                                          const Icon(
                                            Icons.arrow_forward_ios_outlined,
                                            color: Colors.white,
                                            size: 20,
                                          )
                                        ],
                                      ),
                                    )),
                                  ],
                                ),
                              ],
                            ),
                          )),
                          ClipRRect(
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(25),
                                topLeft: Radius.circular(25),
                              ),
                              child: Image.asset(
                                'assets/images/img3.jpg',
                                width: 160.w,
                                height: 230.h,
                                fit: BoxFit.fill,
                              ))
                        ]),
                  );
                }).toList()),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  InkWell(
                      child: Container(
                    height: 40.h,
                    width: 140.w,
                    decoration: BoxDecoration(
                        color: const Color(0xff660261),
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                        border: Border.all(width: .3, color: Colors.black)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "اظهار الكل",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        SizedBox(
                          width: 6.w,
                        ),
                        const Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Colors.white,
                          size: 20,
                        )
                      ],
                    ),
                  )),
                  const Expanded(child: SizedBox()),
                  InkWell(
                    onTap: () {
                      _carouselController2.previousPage();
                    },
                    child: Container(
                      height: 40.h,
                      width: 40.w,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.amber),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Icon(
                        Icons.keyboard_double_arrow_right,
                        color: Colors.amber,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  InkWell(
                    onTap: () {
                      _carouselController2.nextPage();
                    },
                    child: Container(
                      height: 40.h,
                      width: 40.w,
                      decoration: BoxDecoration(
                          // color: Colors.black,
                          border: Border.all(color: Colors.amber),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Icon(
                        Icons.keyboard_double_arrow_left,
                        color: Colors.amber,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Stack(
              children: [
                Positioned(
                  child: Container(
                    height: 1330.h,
                    color: Colors.yellow[50],
                  ),
                ),
                Positioned(
                    top: 5,
                    left: 15,
                    child: Image.asset(
                      'assets/images/elezba.png',
                      width: 400.w,
                      height: 500.h,
                      fit: BoxFit.fill,
                    )),
                const Positioned(
                  top: 500,
                  right: 10,
                  child: Text(
                    "العزبة",
                    style: TextStyle(color: Colors.black, fontSize: 25),
                  ),
                ),
                Positioned(
                  top: 550,
                  right: 10,
                  child: SizedBox(
                    height: 300.h,
                    width: MediaQuery.of(context).size.width-10,
                    child: const SingleChildScrollView(
                            child: Text(
                              "يقدم التسوق عبر الإنترنت مجموعة واسعة من الخيارات عبر الفئات الشائعة، مع تصنيف الإلكترونيات والأزياء والألعاب والهوايات باستمرار بين أفضل الخيارات للمستهلكين. ويمكن للمتسوقين بسهولة استكشاف وشراء مجموعة واسعة من المنتجات ضمن هذه الفئات، مما يجعل التجارة الإلكترونية تجربة تسوق مريحة ومتنوعة.",
                              style: TextStyle(color: Colors.black, fontSize: 18),
                            maxLines: 8,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            ),
                          ),
                  ),
                ),
              Positioned(
                top: 850,
                  right: 1,
                  left: 1,
                child: 
              Container(
                height: 350.0.h,
                width: MediaQuery.of(context).size.width-20,
                margin: EdgeInsets.symmetric(horizontal: 10.0.w),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0.w),
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Image.asset('assets/images/pic.jpg',
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
                      Positioned(
                        bottom: 5,
                        left: 5,
                        right: 5,
                        child: Container(
                          height: 90.h,
                          width: MediaQuery.of(context).size.width-30,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.9),
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                    "هدايا تذكارية نجدية سعودية",
                                    style: TextStyle(
                                      
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                    ),
                                    maxLines: 1,
                                    textAlign: TextAlign.start,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.location_on),
                                      Text('المملكة العربية السعودية',style: TextStyle(decoration:
                                                    TextDecoration.underline,),),
                                      Expanded(child: SizedBox()),
                                      Icon(Icons.arrow_forward_ios)
                                    ],
                                  ),
                                  
                              ],
                            ),
                          ),
                        ))
                    ],
                  ),
                ),
              ),
              ),
              Positioned(
                bottom: 5,
                left: 5,
                right: 5,
                child: 
              SizedBox(
                height: 100.h,
                width: MediaQuery.of(context).size.width-20,
                child: Row(
                  children: [
                    InkWell(
                        child: Container(
                      height: 40.h,
                      width: 140.w,
                      decoration: BoxDecoration(
                          color:  Colors.amber,
                          borderRadius:  BorderRadius.circular(10),
                          border: Border.all(width: .3, color: Colors.black)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "اظهار الكل",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          SizedBox(
                            width: 6.w,
                          ),
                          const Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: Colors.white,
                            size: 20,
                          )
                        ],
                      ),
                    )),
                    const Expanded(child: SizedBox()),
                    InkWell(
                      onTap: () {
                        _carouselController2.previousPage();
                      },
                      child: Container(
                        height: 40.h,
                        width: 40.w,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.amber),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Icon(
                          Icons.keyboard_double_arrow_right,
                          color: Colors.amber,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    InkWell(
                      onTap: () {
                        _carouselController2.nextPage();
                      },
                      child: Container(
                        height: 40.h,
                        width: 40.w,
                        decoration: BoxDecoration(
                            // color: Colors.black,
                            border: Border.all(color: Colors.amber),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Icon(
                          Icons.keyboard_double_arrow_left,
                          color: Colors.amber,
                        ),
                      ),
                    )
                  ],
                ),
              ))
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
             Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("خدماتنا",
                              style: TextStyle(color: Colors.black, fontSize: 15),
                            ),
                    ],
                  ),
                  Row(
              children: [
                Text('_ هودج',
                        style: TextStyle(color: Colors.black, fontSize: 25),
                      ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  height: 80.h,
                  width: MediaQuery.of(context).size.width-20,
                  child: const Text(
                    'منصة هودج للمعالم والزيارات في المملكة العربية السعودية',style: TextStyle(fontSize: 20),))
              ],
            )
                ],
              ),
            ),
            
            SizedBox(
              height: 50.h,
            ),
          ],
        ),
      ),
    );
  }
}
