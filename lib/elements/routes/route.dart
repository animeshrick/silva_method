import 'package:flutter/material.dart';
import 'package:silva/screens/home/courses/details/course_details.dart';
import 'package:silva/screens/home/home.dart';
import 'package:silva/screens/intro/intro_view1.dart';
import 'package:silva/screens/intro/intro_view2.dart';
import 'package:silva/screens/intro/intro_view3.dart';

import '../../screens/splash/splash_view.dart';
import 'animated_route.dart';
import 'routes_name.dart';

class Routes {
  static Route<dynamic> generateRoutes(RouteSettings settings) {
    var args = settings.arguments;
    switch (settings.name) {
      case MyRoutes.splashViewRoute:
        return createRoute(nextPage: const SplashView());
        // return MaterialPageRoute(builder: (_) => const SplashPage());
        case MyRoutes.intro1Route:
         return MaterialPageRoute(builder: (_) => const IntroView1());
        case MyRoutes.intro2Route:
         return MaterialPageRoute(builder: (_) => const IntroView2());
        case MyRoutes.intro3Route:
         return MaterialPageRoute(builder: (_) => const IntroView3());
        case MyRoutes.homeRoute:
         return MaterialPageRoute(builder: (_) =>  Home());
        case MyRoutes.courseDetailsRoute:
         return MaterialPageRoute(builder: (_) => const CourseDetails());
      default:
        return MaterialPageRoute(
          builder: (_) {
            return const Scaffold(
              body: Center(
                child: Text("No route found"),
              ),
            );
          },
        );
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
