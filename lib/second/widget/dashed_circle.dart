import 'package:flutter/material.dart';
import 'dart:math';

const int _defaultDashes = 20;
const Color _defaultColor = Color(0x00000000);
const double _defaultGapSize = 3.0;
const double _defaultStrokeWidth = 2.5;

class DashedCircle extends StatelessWidget {
  final int dashes;
  final Color color;
  final double gapSize;
  final double strokeWidth;
  final Widget child;

  const DashedCircle(
      {super.key,
      required this.child,
      this.dashes = _defaultDashes,
      this.color = _defaultColor,
      this.gapSize = _defaultGapSize,
      this.strokeWidth = _defaultStrokeWidth});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: DashedCirclePainter(
        dashes: dashes,
        color: color,
        gapSize: gapSize,
        strokeWidth: strokeWidth,
      ),
      child: child,
    );
  }
}

class DashedCirclePainter extends CustomPainter {
  final int dashes;
  final Color color;
  final double gapSize;
  final double strokeWidth;

  DashedCirclePainter(
      {this.dashes = _defaultDashes,
      this.color = _defaultColor,
      this.gapSize = _defaultGapSize,
      this.strokeWidth = _defaultStrokeWidth});

  @override
  void paint(Canvas canvas, Size size) {
    final double gap = pi / 180 * gapSize;
    final double singleAngle = (pi * 2) / dashes;

    for (int i = 0; i < dashes; i++) {
      final Paint paint = Paint()
        ..color = color
        ..strokeWidth = strokeWidth
        ..style = PaintingStyle.stroke;

      canvas.drawArc(Offset.zero & size, gap + singleAngle * i, singleAngle - gap * 2, false, paint);
    }
  }

  @override
  bool shouldRepaint(DashedCirclePainter oldDelegate) {
    return dashes != oldDelegate.dashes || color != oldDelegate.color;
  }
}
