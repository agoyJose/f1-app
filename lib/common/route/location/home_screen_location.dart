import 'package:beamer/beamer.dart';
import 'package:f1_app/feature/home_screen/presentation/screen/home_screen.dart';
import 'package:flutter/material.dart';

class HomeScreenLocation extends BeamLocation<BeamState> {
  static const route = '/home';

  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) {
    return const [
      BeamPage(
        key: ValueKey('home-screen'),
        title: 'Home Screen',
        name: 'Home Screen',
        child: HomeScreen(),
      )
    ];
  }

  @override
  List<Pattern> get pathPatterns => const [route];
}
