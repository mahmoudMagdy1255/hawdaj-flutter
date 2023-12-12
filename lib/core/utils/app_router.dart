import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hawdaj/features/auth/login/view/login_view.dart';
import 'package:hawdaj/features/auth/onboarding/view/onboarding_view.dart';
import 'package:hawdaj/features/main/destinationDetails/view/destination_view.dart';
import 'package:hawdaj/features/main/home/data/model/Destination.dart';
import 'package:hawdaj/features/main/home/view/home_view.dart';
import 'package:hawdaj/features/main/layout/layout_view.dart';

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> sectionNavigatorKey =
    GlobalKey<NavigatorState>();

// GoRouter configuration

abstract class AppRouter {
  static const String kOnBoardingView = '/kOnBoardingView';
  static const String kHomeLayOut = '/kHomeLayOut';
  static const String kDestinationDetails = '/kDestinationDetails';
  static const String kLoginView = '/kLoginView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => OnBoardingView(),
      ),
      GoRoute(
        path: kLoginView,
        builder: (context, state) => LoginView(),
      ),
      GoRoute(
        path: kHomeLayOut,
        builder: (context, state) => LayoutView(),
      ),
      GoRoute(
        path: kDestinationDetails,
        builder: (context, state) => DestinationView(item: state.extra as Destination),
      ),
    ],
  );
}
