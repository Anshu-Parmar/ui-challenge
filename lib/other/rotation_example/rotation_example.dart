import 'package:flutter/material.dart';
import 'dart:math' as math;

// Degree / Radians converter
const double degrees2Radians = math.pi / 180.0;
const double radians2Degrees = 180.0 / math.pi;

double degrees(double radians) => radians * radians2Degrees;
double radians(double degrees) => degrees * degrees2Radians;

class RotationExample extends StatefulWidget {
  const RotationExample({super.key});

  @override
  State<RotationExample> createState() => _RotationExampleState();
}

class _RotationExampleState extends State<RotationExample> {
  double rotationY = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: const Color(0xffFF6958),
      body: Column(
        children: [
          const Expanded(
              child: Center(
                child: Text(
                  'Personal.com',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              )),
          Transform(
            alignment: FractionalOffset.center,
            transform: Matrix4.identity()
              ..setEntry(3, 2, 0.01)
              ..rotateY(radians(rotationY)),
            child: Container(
              height: 180,
              color: Colors.white.withOpacity(0.4),
              margin: const EdgeInsets.symmetric(horizontal: 40),
            ),
          ),
          Expanded(child: Container()),
          Text(
            '${rotationY.toInt()} degrees',
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Slider(
            value: rotationY,
            allowedInteraction: SliderInteraction.tapAndSlide,
            onChanged: (value) {
              setState(() {
                rotationY = value;
              });
            },
            min: 0,
            max: 180,
          )
        ],
      ),
    );
  }
}