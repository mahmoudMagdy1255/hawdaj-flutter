import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ElezbaSection extends StatefulWidget {
  const ElezbaSection({super.key});

  @override
  State<ElezbaSection> createState() => _ElezbaSectionState();
}

class _ElezbaSectionState extends State<ElezbaSection> {
  CarouselController _carouselController5 = CarouselController();

  @override
  Widget build(BuildContext context) {
    return                 Stack(
      children: [
        Positioned(
          child: Container(
            height: 1330.h,
            color: Colors.yellow[50],
          ),
        ),
        Positioned(
            top: 5.h,
            left: 15.w,
            child: Image.asset(
              'assets/images/elezba.png',
              width: 400.w,
              height: 500.h,
              fit: BoxFit.fill,
            )),
        Positioned(
          top: 520.h,
          right: 10.w,
          child: const Text(
            "العزبة",
            style: TextStyle(color: Colors.black, fontSize: 25),
          ),
        ),
        Positioned(
          top: 570.h,
          right: 10.w,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            height: 300.h,
            width: MediaQuery.of(context).size.width - 10.w,
            child: const SingleChildScrollView(
              child: Text(
                "يقدم التسوق عبر الإنترنت مجموعة واسعة من الخيارات عبر الفئات الشائعة، مع تصنيف الإلكترونيات والأزياء والألعاب والهوايات باستمرار بين أفضل الخيارات للمستهلكين. ويمكن للمتسوقين بسهولة استكشاف وشراء مجموعة واسعة من المنتجات ضمن هذه الفئات، مما يجعل التجارة الإلكترونية تجربة تسوق مريحة ومتنوعة.",
                style:
                TextStyle(color: Colors.black, fontSize: 18),
                maxLines: 8,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
        Positioned(
            top: 850.h,
            right: 1.w,
            left: 1.w,
            child: CarouselSlider(
                carouselController: _carouselController5,
                items: ['', '', '']
                    .map((e) => Container(
                  height: 350.0.h,
                  width:
                  MediaQuery.of(context).size.width -
                      20.w,
                  margin: EdgeInsets.symmetric(
                      horizontal: 10.0.w),
                  child: ClipRRect(
                    borderRadius:
                    BorderRadius.circular(10.0.w),
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        Image.asset(
                          'assets/images/pic.jpg',
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
                            bottom: 5.h,
                            left: 5.w,
                            right: 5.w,
                            child: Container(
                              height: 90.h,
                              width:
                              MediaQuery.of(context)
                                  .size
                                  .width -
                                  30.w,
                              decoration: BoxDecoration(
                                  color: Colors.white
                                      .withOpacity(0.9),
                                  borderRadius:
                                  BorderRadius
                                      .circular(
                                      20.w)),
                              child: Padding(
                                padding:
                                EdgeInsets.all(8.0.w),
                                child: Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment
                                      .start,
                                  children: [
                                    Text(
                                      "هدايا تذكارية نجدية سعودية",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight:
                                        FontWeight
                                            .w300,
                                      ),
                                      maxLines: 1,
                                      textAlign:
                                      TextAlign.start,
                                      overflow:
                                      TextOverflow
                                          .ellipsis,
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons
                                            .location_on),
                                        Text(
                                          'المملكة العربية السعودية',
                                          style:
                                          TextStyle(
                                            decoration:
                                            TextDecoration
                                                .underline,
                                          ),
                                        ),
                                        Expanded(
                                            child:
                                            SizedBox()),
                                        Icon(Icons
                                            .arrow_forward_ios)
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ))
                      ],
                    ),
                  ),
                ))
                    .toList(),
                options: CarouselOptions(
                    height: 350.0.h, viewportFraction: 1))),
        Positioned(
            bottom: 5.h,
            left: 5.w,
            right: 5.w,
            child: SizedBox(
              height: 100.h,
              width: MediaQuery.of(context).size.width - 20.w,
              child: Row(
                children: [
                  InkWell(
                      child: Container(
                        height: 40.h,
                        width: 140.w,
                        decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(10.w),
                            border: Border.all(
                                width: .3, color: Colors.black)),
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
                      _carouselController5.previousPage();
                    },
                    child: Container(
                      height: 40.h,
                      width: 40.w,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.amber),
                          borderRadius:
                          BorderRadius.circular(10.w)),
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
                      _carouselController5.nextPage();
                    },
                    child: Container(
                      height: 40.h,
                      width: 40.w,
                      decoration: BoxDecoration(
                        // color: Colors.black,
                          border: Border.all(color: Colors.amber),
                          borderRadius:
                          BorderRadius.circular(10.w)),
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
    );

  }
}
