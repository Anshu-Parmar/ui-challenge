import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:uichallenge/fifth/fifth_ui.dart';
import 'package:uichallenge/fourth/fourth_ui.dart';
import 'package:uichallenge/sixth/sixth_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      scrollBehavior: kIsWeb ? const MaterialScrollBehavior().copyWith(
        dragDevices: {
          PointerDeviceKind.mouse,
          PointerDeviceKind.touch,
          PointerDeviceKind.stylus,
          PointerDeviceKind.unknown,
        },
      ) : null,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: const FirstUi(),
      // home: const SecondUi(),
      // home: const RotationExample(),
      // home: const ThirdUi(),
      // home: const FourthUi(),
      // home: const FifthUi(),
      home: const SixthUi(),
    );
  }
}
