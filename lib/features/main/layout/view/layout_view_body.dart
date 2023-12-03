import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hawdaj/features/main/home/home_view.dart';
import 'package:hawdaj/features/main/newJourney/new_journy_view.dart';
import 'package:hawdaj/features/main/places/places_view.dart';
import 'package:hawdaj/features/main/stores/stores_view.dart';
import 'package:hawdaj/features/main/zad/zad_view.dart';
import 'package:lottie/lottie.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class LayoutViewBody extends StatefulWidget {
  const LayoutViewBody({super.key});

  @override
  State<LayoutViewBody> createState() => _LayoutViewBodyState();
}

class _LayoutViewBodyState extends State<LayoutViewBody> {
  final PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white,
      // Default is Colors.white.
      handleAndroidBackButtonPress: true,
      // Default is true.
      resizeToAvoidBottomInset: true,
      // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true,
      // Default is true.
      hideNavigationBarWhenKeyboardShows: true,
      // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(20.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
          NavBarStyle.style15, // Choose the nav bar style with this property.
    );
  }

  List<Widget> _buildScreens() {
    return [
      const HomeView(),
      const Center(child: Text('استكشف عجائب التراث السعودي',style: TextStyle(fontSize: 20),),),
      const Center(child: Text('إبدأ رحلتك الآن',style: TextStyle(fontSize: 20),),),
      const Center(child: Text('اين تجدنا',style: TextStyle(fontSize: 20),),),
      const Center(child: Text('المتاجر الأكثر شيوعًا',style: TextStyle(fontSize: 20),),),
      // const PlacesView(),
      // const NewJourneyView(),
      // const ZadView(),
      // const StoresView(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.home),
        // title: ("الرئيسية"),
        activeColorPrimary: const Color(0xff906499),
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.scope),
        // title: ("الأماكن"),
        activeColorPrimary: const Color(0xff906499),
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Lottie.asset('assets/images/animations/camel.json',),
        // icon: const Icon(
        //   CupertinoIcons.antenna_radiowaves_left_right,
        //   color: CupertinoColors.white,
        // ),
        // title: ("رحلة"),
        activeColorPrimary: const Color(0xff906499),
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.map_pin_ellipse),
        // title: ("المتاجر"),
        activeColorPrimary: const Color(0xff906499),
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.cart_badge_plus),
        // title: ("زاد"),
        activeColorPrimary: CupertinoColors.activeBlue,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
    ];
  }
}
