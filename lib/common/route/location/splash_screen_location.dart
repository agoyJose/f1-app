import 'package:beamer/beamer.dart';
import 'package:f1_app/feature/splash_screen/presentation/screen/splash_screen.dart';
import 'package:flutter/material.dart';

class SplashScreenLocation extends BeamLocation<BeamState> {
  static const route = '/splash';

  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) {
    return const [
      BeamPage(
        key: ValueKey('splash'),
        title: 'Splash',
        name: 'Splash Page',
        child: SplashScreen(),
      )
    ];
  }

  @override
  List<Pattern> get pathPatterns => const [route];
}
