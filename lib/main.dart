import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:uichallenge/seventh/common/theme/theme.dart';
import 'package:flutter/foundation.dart' as foundation;
// import 'package:uichallenge/other/stepper/stepper_task.dart';
// import 'package:uichallenge/first/first_ui.dart';
// import 'package:uichallenge/second/second_ui.dart';
// import 'package:uichallenge/third/third_ui.dart';
// import 'package:uichallenge/fourth/fourth_ui.dart';
// import 'package:uichallenge/fifth/fifth_ui.dart';
// import 'package:uichallenge/sixth/sixth_ui.dart';
// import 'package:uichallenge/seventh/seventh_ui.dart';
// import 'package:uichallenge/eighth/eighth_ui.dart';
// import 'package:uichallenge/other/task_ui/details_page.dart';
import 'package:uichallenge/other/task_ui_two/task_two.dart';

void main() {
  //REQUIRED FOR SEVENTH UI
  // runApp(
  //   ChangeNotifierProvider(
  //     create: (context) => MyThemeModel(),
  //     child: const MyApp(),
  //   ),
  // );
  //NORMAL
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //REQUIRED FOR SEVENTH UI
  // @override
  // Widget build(BuildContext context) {
  //   return Consumer<MyThemeModel>(
  //     builder: (context, themeModel, child) {
  //       return MaterialApp(
  //         title: 'Personal',
  //         debugShowCheckedModeBanner: false,
  //         theme: ThemeData.light().copyWith(
  //           textTheme: const TextTheme(
  //             labelMedium: TextStyle(color: Color(0xFFA7A7A7), fontSize: 13),
  //           ),
  //         ),
  //         darkTheme: ThemeData.dark().copyWith(
  //           textTheme: const TextTheme(
  //             labelMedium: TextStyle(color: Color(0xFFA7A7A7), fontSize: 13),
  //           ),
  //         ),
  //         themeMode: themeModel.currentTheme(),
  //         home: const SeventhUi(),
  //       );
  //     },
  //   );
  // }

  //NORMAL
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      scrollBehavior: foundation.kIsWeb ? const MaterialScrollBehavior().copyWith(
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
      // home: const SixthUi(),
      // home: const EighthUi(),
      // home: const DetailsPageUi(),
      // home: const StepperTask(),
      home: const TmyFun(),
    );
  }
}
