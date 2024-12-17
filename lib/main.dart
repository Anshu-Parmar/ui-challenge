import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:uichallenge/first/first_ui.dart';
import 'package:uichallenge/other/rotation_example/rotation_example.dart';
import 'package:uichallenge/second/second_ui.dart';
import 'package:uichallenge/third/third_ui.dart';

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
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        dragDevices: {
          PointerDeviceKind.mouse,
          PointerDeviceKind.touch,
          PointerDeviceKind.stylus,
          PointerDeviceKind.unknown,
        },
      ),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: const FirstUi(),
      // home: const SecondUi(),
      // home: const RotationExample(),
      home: const ThirdUi(),
    );
  }
}
