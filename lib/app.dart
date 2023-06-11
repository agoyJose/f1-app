import 'package:beamer/beamer.dart';
import 'package:f1_app/common/route/location/location.dart';
import 'package:f1_app/common/route/location_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class MobileApp extends HookWidget {
  const MobileApp({super.key});

  @override
  Widget build(BuildContext context) {
    final routerDelegate = useMemoized(() {
      return BeamerDelegate(
        initialPath: SplashScreenLocation.route,
        locationBuilder: locationBuilder,
      );
    });

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routeInformationParser: BeamerParser(),
      routerDelegate: routerDelegate,
    );
  }
}
