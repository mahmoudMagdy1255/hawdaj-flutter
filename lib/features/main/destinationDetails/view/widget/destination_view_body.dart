import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:hawdaj/core/utils/assets.dart';
import 'package:hawdaj/core/utils/colors.dart';
import 'package:hawdaj/core/utils/styles.dart';
import 'package:hawdaj/core/widgets/custom_button_new.dart';

import '../../../home/data/model/Destination.dart';
import '../../../home/view/widget/home_grid_item.dart';

class DestinationDetailsViewBody extends StatefulWidget {
  DestinationDetailsViewBody({super.key,required this.item});
Destination item;

@override
  State<DestinationDetailsViewBody> createState() =>
      _DestinationDetailsViewBodyState();
}

List<String> sections = ['المراجعات', 'الصور'];
String selectedSection = sections[0];
List<Destination> list = Destination.destinationsList;

class _DestinationDetailsViewBodyState
    extends State<DestinationDetailsViewBody> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          widget.item.image,
          height: 350.h,
          width: double.infinity,
          fit: BoxFit.fill,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 60.h,
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      backgroundColor: ColorsData.greyscale400.withOpacity(.5),
                      child: Icon(
                        Icons.arrow_back,
                        color: ColorsData.greyscale50,
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: ColorsData.greyscale400.withOpacity(.5),
                      child: Icon(
                        Icons.favorite_border,
                        color: ColorsData.greyscale50,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 620.h,
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              decoration: BoxDecoration(
                color: ColorsData.greyscale50,
                borderRadius: BorderRadius.circular(48.w),
              ),
              child: Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 1.h,
                                width: 150.w,
                                margin: EdgeInsets.only(top: 12.h, bottom: 36.h),
                                color: ColorsData.greyscale400,
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                  child: Text(
                                    widget.item.name,
                                style: Styles.textStyle20.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                              )),
                              SizedBox(
                                width: 6.w,
                              ),
                              RichText(
                                text: TextSpan(
                                  text: '150',
                                  style: Styles.textStyle18.copyWith(
                                      color: ColorsData.primary500,
                                      fontWeight: FontWeight.bold),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: 'ر.س/ ',
                                      style: Styles.textStyle12
                                          .copyWith(color: ColorsData.primary500),
                                    ),
                                    TextSpan(
                                      text: 'فرد',
                                      style: Styles.textStyle12
                                          .copyWith(color: ColorsData.greyscale700),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              RatingBar.builder(
                                itemSize: 24.w,
                                minRating: 1,
                                itemCount: 5,
                                initialRating: 3.5,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                ignoreGestures: true,
                                itemPadding: EdgeInsets.symmetric(horizontal: 1.0.w),
                                itemBuilder: (context, _) => const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (rating) {},
                              ),
                              SizedBox(
                                width: 4.w,
                              ),
                              Text(
                                '(200)',
                                style: Styles.textStyle14.copyWith(
                                    color: ColorsData.greyscale400, height: 1),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                color: ColorsData.primary500,
                                size: 18.w,
                              ),
                              SizedBox(
                                width: 4.w,
                              ),
                              Text(widget.item.location),
                            ],
                          ),
                          SizedBox(height: 16.h,),

                          sectionTitle('الوصف'),
                          Text(widget.item.description),
                          SizedBox(height: 16.h,),

                          Row(
                            children: [
                              for (int i = 0; i < sections.length; i++)
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      selectedSection = sections[i];
                                    });
                                  },
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        top: 10.h, bottom: 10.h, left: 10.w),
                                    child: Text(
                                      sections[i],
                                      style: Styles.textStyle18.copyWith(
                                          color: sections[i] == selectedSection
                                              ? ColorsData.primary500
                                              : ColorsData.greyscale500),
                                    ),
                                  ),
                                )
                            ],
                          ),
                          if(selectedSection==sections[0])
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CircleAvatar(radius: 20.w,),
                                SizedBox(width: 10.w),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('محمد الخميسي',style: Styles.textStyle14.copyWith(fontWeight: FontWeight.bold),),
                                          Text('منذ يومين',style: Styles.textStyle12.copyWith(color: ColorsData.greyscale700),),
                                        ],
                                      ),
                                      SizedBox(height: 4.h,),
                                      Text('لقد اعجبني المكان جداً، ساعود إليه مرات عديدة وأوصي به للجميع ',maxLines: 3,overflow: TextOverflow.ellipsis,)
                                    ],
                                  ),
                                )
                              ],
                            ),
                          if(selectedSection==sections[1])
                            Container(
                              width: double.infinity,
                              child: SingleChildScrollView(
                                child: MasonryGridView.count(
                                    itemCount: 5,
                                    crossAxisCount: 2,
                                    mainAxisSpacing: 16.w,
                                    crossAxisSpacing: 16.w,
                                    shrinkWrap: true,
                                    physics: const NeverScrollableScrollPhysics(),
                                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                                    itemBuilder: (BuildContext context, int index) {
                                      return Container(
                                          height: (index % 2 + 1) * 100.0, // Varying heights
                                          width: (index % 2 + 1) * 100.0, // V
                                          // child: HomeGridItem(item: list[index])
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(widget.item.image),
                                              fit: BoxFit.fill
                                            ),
                                            borderRadius: BorderRadius.circular(16.w)
                                          ),
                                      );
                                    }),
                              ),
                            ),
                          SizedBox(height: 24.h,),

                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(vertical: 16.0.w),
                    child: CustomButtonNew(txt: 'الاستمرار'),
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }

  Widget sectionTitle(String title) {
    return Text(
      title,
      style: Styles.textStyle16,
    );
  }
}
