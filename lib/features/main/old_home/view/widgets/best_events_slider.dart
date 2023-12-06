import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../model/destinationModel.dart';

class BestEventsSlider extends StatefulWidget {
  const BestEventsSlider({super.key});

  @override
  State<BestEventsSlider> createState() => _BestEventsSliderState();
}

class _BestEventsSliderState extends State<BestEventsSlider> {
  int _currentIndex = 0;
  List<OldDestination> list = OldDestination.destinationList;
  CarouselController _carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text('في السعودية',
            style:
            TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        const Text('السحر في كل زاوية',
            style: TextStyle(fontSize: 15, color: Colors.brown)),
        SizedBox(
          height: 3.h,
        ),
        SvgPicture.asset('assets/images/inSaudi-vector.svg',
            width: 100.w),
        SizedBox(
          height: 10.h,
        ),

        SizedBox(
          height: 620.0.h,
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
                        list[_currentIndex].image,
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
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20.w, vertical: 20.h),
                            child: const Text(
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
                          Divider(
                            color: Colors.white,
                            height: 2,
                            endIndent: 20.w,
                            indent: 20.w,
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20.w, vertical: 5.h),
                            child: const Text(
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
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20.w, vertical: 5.h),
                            child: const Text(
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
                            padding: EdgeInsets.symmetric(
                                horizontal: 20.w, vertical: 5.h),
                            child: RatingBar.builder(
                              itemSize: 20,
                              initialRating: 5,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemPadding: EdgeInsets.symmetric(
                                  horizontal: 4.0.w),
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
                            padding: EdgeInsets.symmetric(
                                horizontal: 20.w, vertical: 2.h),
                            child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.start,
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
                            padding: EdgeInsets.symmetric(
                                horizontal: 20.w, vertical: 5.h),
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
                                              width: .3,
                                              color: Colors.black)),
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
                                          Icon(
                                            Icons
                                                .arrow_forward_ios_outlined,
                                            color: Colors.black,
                                            size: 20.w,
                                          )
                                        ],
                                      ),
                                    )),
                                SizedBox(
                                  width: 20.w,
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
                                              width: .3,
                                              color: Colors.white)),
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
                                          Icon(
                                            Icons
                                                .arrow_forward_ios_outlined,
                                            color: Colors.white,
                                            size: 20.w,
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
                bottom: 30.h,
                child: Container(
                  padding: EdgeInsets.all(2.w),
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
                        items: list.map((otem) {
                          return Container(
                            width: 300.w,
                            height: 400.h,
                            margin: EdgeInsets.all(5.0.w),
                            child: Stack(children: [
                              ClipRRect(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(10.0.w)),
                                child: Image.asset(
                                  otem.image,
                                  fit: BoxFit.fill,
                                  width: 300.w,
                                  height: 400.w,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.all(5.w),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10.0.w),
                                decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(.5),
                                  borderRadius:
                                  BorderRadius.circular(8.w),
                                ),
                                child: const Text(
                                  'مغلق',
                                  style:
                                  TextStyle(color: Colors.white),
                                ),
                              ),
                              Positioned(
                                  top: 50.h,
                                  bottom: 50.h,
                                  left: 10.w,
                                  right: 10.w,
                                  child: Icon(
                                    Icons.play_circle_filled_outlined,
                                    size: 50.w,
                                    color: const Color(0xff660261),
                                  ))
                            ]),
                          );
                        }).toList(),
                      ),
                      Positioned(
                        right: 5.w,
                        top: 80.h,
                        child: IconButton(
                          icon: const CircleAvatar(
                              child: Icon(Icons.arrow_back_ios)),
                          onPressed: () {
                            _carouselController.previousPage();
                          },
                        ),
                      ),
                      Positioned(
                        left: 5.w,
                        top: 80.h,
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
      ],
    );
  }
}
