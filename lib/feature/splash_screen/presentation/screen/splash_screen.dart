import 'package:beamer/beamer.dart';
import 'package:f1_app/common/route/location/location.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SplashScreen extends HookConsumerWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final crossState = useState(CrossFadeState.showFirst);
    useEffect(
      () {
        Future.delayed(const Duration(milliseconds: 600), () {
          crossState.value = CrossFadeState.showSecond;
        });
        Future.delayed(const Duration(milliseconds: 3000), () {
          Beamer.of(context).beamToNamed(
            HomeScreenLocation.route,
            data: {
              'isFromSplash': true,
            },
          );
        });
        return null;
      },
      [],
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: AnimatedCrossFade(
        crossFadeState: crossState.value,
        firstCurve: Curves.fastLinearToSlowEaseIn,
        firstChild: const BackgroundContainer(),
        duration: const Duration(milliseconds: 600),
        secondChild: AnimatedSwitcher(
          duration: const Duration(milliseconds: 2000),
          child: Center(
            child: Image.asset(
              'assets/icon/f1-logo.png',
              height: 50,
            ),
          ),
        ),
      ),
    );
  }
}

class BackgroundContainer extends StatelessWidget {
  const BackgroundContainer({super.key, this.color});
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      color: color ?? Colors.white,
    );
  }
}
