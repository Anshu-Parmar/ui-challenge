import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TmyFun extends StatefulWidget {
  const TmyFun({super.key});

  @override
  State<TmyFun> createState() => _TmyFunState();
}

class _TmyFunState extends State<TmyFun> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: const Color(0xFF9465FB),
          ),
          Positioned(
            left: -150,
            top: -120,
            child: _buildGlowingCircle(),
          ),
          Positioned(
            right: -200,
            bottom: -50,
            child: _buildGlowingCircle(),
          ),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
              child: Container(
                color: const Color.fromRGBO(255, 255, 255, 0.05),
              ),
            ),
          ),
          CustomPaint(
            size: Size.infinite,
            painter: DotPatternPainter(),
          ),
          const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Hello, World!",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Professional Glass Effect",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildGlowingCircle() {
    return Container(
      width: 400,
      height: 400,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        gradient: RadialGradient(
          colors: [
            Color.fromRGBO(225, 159, 249, 0.9),
            Color.fromRGBO(225, 159, 249, 0.75),
            Color.fromRGBO(225, 159, 249, 0.3),
            Color.fromRGBO(225, 159, 249, 0.001),
          ],
          stops: [0.1, 0.3, 0.6, 1.0],
        ),
      ),
    );
  }
}

class DotPatternPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    const double dotSize = 1.5;
    const double spacing = 20.0;

    final Paint paint = Paint()
      ..color = const Color.fromRGBO(255, 255, 255, 0.1);

    for (double y = 0; y < size.height; y += spacing) {
      for (double x = 0; x < size.width; x += spacing) {
        canvas.drawCircle(Offset(x, y), dotSize, paint);
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}