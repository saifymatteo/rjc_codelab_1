import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'views/screens/splash_page.dart';

void main() {
  runApp(
    MaterialApp(
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        dragDevices: {
          PointerDeviceKind.mouse,
          PointerDeviceKind.touch,
          PointerDeviceKind.stylus,
          PointerDeviceKind.unknown
        }
      ),
      home: const SplashPage(),
    ),
  );
}
