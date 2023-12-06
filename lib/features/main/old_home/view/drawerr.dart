import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(.9),
          image: DecorationImage(
            image: AssetImage('assets/images/drawerBackground.png'),
            fit: BoxFit.fill
          ),
        ),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            // DrawerHeader(
            //   child: Column(
            //     mainAxisAlignment: MainAxisAlignment.start,
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //
            //     ],
            //   ),
            // ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Image.asset(
                    'assets/images/logo.png',
                    height: 70.h,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.h),

            ListTile(
              onTap: () {},
              leading: Icon(Icons.login, color: Colors.white),
              title: Text(
                'تسجيل الدخول',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              trailing: Container(
                padding: EdgeInsets.all(2.w),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4.w)),
                child: Icon(
                  Icons.close,
                  color: Colors.red,
                  size: 22.w,
                ),
              ),
            ),

            SizedBox(height: 60.h),

            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: const Text(
                'الرئيسية',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                // Handle item 1 tap
              },
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.building_2_fill,
                color: Colors.white,
              ),
              title: const Text(
                'الأماكن',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                // Handle item 1 tap
              },
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.cart_badge_plus,
                color: Colors.white,
              ),
              title: const Text(
                'العزبة',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                // Handle item 1 tap
              },
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.chart_bar_circle_fill,
                color: Colors.white,
              ),
              title: const Text(
                'زاد',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                // Handle item 1 tap
              },
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.building_2_fill,
                color: Colors.white,
              ),
              title: const Text(
                'سوالف',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                // Handle item 1 tap
              },
            ),
            ListTile(
              leading: Icon(
                Icons.event_note_outlined,
                color: Colors.white,
              ),
              title: const Text(
                'الفعاليات',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                // Handle item 1 tap
              },
            ),
          ],
        ),
      ),
    );
  }
}
