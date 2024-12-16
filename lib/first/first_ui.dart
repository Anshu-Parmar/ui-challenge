import 'package:flutter/material.dart';
import 'package:uichallenge/first/widgets/constants/colors.dart';

import 'widgets/curved_line/curved_line_animated.dart';

class FirstUi extends StatelessWidget {
  const FirstUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        title: const Text("Ticket Hall", style: TextStyle(color: Colors.white),),
      ),
      body: Center(
        child: SafeArea(
            child: Column(
              children: [
                const SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10.0,
                  ),
                  child: AnimatedCurveLine(
                    colorsToAnimate: [
                      sceneColor1,
                      sceneColor2,
                      sceneColor3,
                      sceneColor4
                    ],
                  ),
                ),
              ],
            )
        ),
      ),
    );
  }
}
