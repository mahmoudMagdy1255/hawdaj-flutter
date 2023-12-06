import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../model/destinationModel.dart';

class BestRestaurants extends StatefulWidget {
  const BestRestaurants({super.key});

  @override
  State<BestRestaurants> createState() => _BestRestaurantsState();
}

class _BestRestaurantsState extends State<BestRestaurants> {
  List<OldDestination> list = OldDestination.destinationList;
  CarouselController _carouselController2 = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('المطاعم',
                style: TextStyle(
                    fontSize: 20, fontWeight: FontWeight.bold)),
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
                    borderRadius: BorderRadius.circular(25.w)),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(8.0.w),
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
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.restaurant,
                                      color: Color(0xff660261),
                                    ),
                                    SizedBox(
                                      width: 5.w,
                                    ),
                                    const Text(
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
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.location_on_outlined,
                                      color: Color(0xff660261),
                                    ),
                                    SizedBox(
                                      width: 5.w,
                                    ),
                                    const Text(
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
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    SizedBox(
                                      width: 5.w,
                                    ),
                                    const Text(
                                      "3",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    const Expanded(child: SizedBox()),
                                    const Text(
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
                                              borderRadius: BorderRadius.only(
                                                bottomLeft:
                                                Radius.circular(20.w),
                                                bottomRight:
                                                Radius.circular(20.w),
                                                topRight:
                                                Radius.circular(20.w),
                                              ),
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
                              ],
                            ),
                          )),
                      ClipRRect(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(25.w),
                            topLeft: Radius.circular(25.w),
                          ),
                          child: Image.asset(
                            'assets/images/restaurant.jpg',
                            width: 160.w,
                            height: 230.h,
                            fit: BoxFit.fill,
                          ))
                    ]),
              );
            }).toList()),
        Padding(
          padding: EdgeInsets.all(8.0.w),
          child: Row(
            children: [
              InkWell(
                  child: Container(
                    height: 40.h,
                    width: 140.w,
                    decoration: BoxDecoration(
                        color: Color(0xff660261),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20.w),
                          bottomRight: Radius.circular(20.w),
                          topRight: Radius.circular(20.w),
                        ),
                        border:
                        Border.all(width: .3, color: Colors.black)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "اظهار الكل",
                          style: TextStyle(
                              color: Colors.white, fontSize: 15),
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
                      borderRadius: BorderRadius.circular(10.w)),
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
                      borderRadius: BorderRadius.circular(10.w)),
                  child: const Icon(
                    Icons.keyboard_double_arrow_left,
                    color: Colors.amber,
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
