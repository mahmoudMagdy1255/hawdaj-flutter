import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700.h,
      decoration:  BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/background.png'),
          fit: BoxFit.fill,
        ),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30.w),
          topLeft: Radius.circular(30.w),
        )
      ),
      child: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration:  BoxDecoration(
                color: const Color(0xffc448ce).withOpacity(.6),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30.w),
                  topLeft: Radius.circular(30.w),
                )
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0.w,vertical: 20.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset('assets/images/logo.png'),
                    SizedBox(width: 10.w,),
                    Text('هودج', style: TextStyle(
                        fontSize: 18, color: Colors.white,fontWeight: FontWeight.bold),)
                  ],
                ),
                SizedBox(height: 20.h,),

                const Text(
                  'منصة هودج للمعالم والزيارات في المملكة العربية السعودية',
                  style: TextStyle(
                      fontSize: 16, color: Colors.white),
                ),
                SizedBox(
                  height: 20.h,
                ),
                
                Row(
                  children: [
                    Icon(Icons.facebook,color: Colors.white,),
                    SizedBox(width: 10.w),
                    Icon(Icons.facebook,color: Colors.white,),
                    SizedBox(width: 10.w),
                    Icon(Icons.facebook,color: Colors.white,),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text('متاجر',style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),),
                Text('تراثيات',style: TextStyle(fontSize: 18,color: Colors.white,height: 1.5),),
                Text('متاجر رحلات',style: TextStyle(fontSize: 18,color: Colors.white,height: 1.5),),
                Text('متاجر إلكترونية',style: TextStyle(fontSize: 18,color: Colors.white,height: 1.5),),
                SizedBox(
                  height: 20.h,
                ),
                Text('أماكن مميزة',style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),),
                Text('أسواق شعبية',style: TextStyle(fontSize: 18,color: Colors.white,height: 1.5),),
                Text('المتاحف',style: TextStyle(fontSize: 18,color: Colors.white,height: 1.5),),
                Text('المحميات الطبيعية',style: TextStyle(fontSize: 18,color: Colors.white,height: 1.5),),
                Text('المنتزهات',style: TextStyle(fontSize: 18,color: Colors.white,height: 1.5),),
                SizedBox(
                  height: 50.h,
                ),
                Divider(
                  color: Colors.white,
                  thickness: .5,
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    Text('جميع الحقوق محفوظة',style: TextStyle(fontSize: 14,color: Colors.white,height: 1.5),),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
