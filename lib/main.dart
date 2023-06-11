import 'package:beamer/beamer.dart';
import 'package:f1_app/app.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Beamer.setPathUrlStrategy();
  runApp(const ProviderScope(child: MobileApp()));
}
