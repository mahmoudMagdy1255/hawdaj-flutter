import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hawdaj/features/main/destinationDetails/view/destination_view.dart';
import 'package:hawdaj/features/main/home/view/home_view.dart';
import 'package:hawdaj/features/main/layout/layout_view.dart';

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> sectionNavigatorKey =
    GlobalKey<NavigatorState>();

// GoRouter configuration

abstract class AppRouter {
  static const String kDestinationDetails = '/kDestinationDetails';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => LayoutView(),
      ),
      GoRoute(
        path: kDestinationDetails,
        builder: (context, state) => DestinationView(),
      ),
    ],
  );
}
