import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ShowTextWidget extends StatelessWidget {
  final String text;
  final TitleMeta meta;

  const ShowTextWidget({super.key, required this.text, required this.meta});

  @override
  Widget build(BuildContext context) {
    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 16,
      child: Text(
        text,
        style: const TextStyle(fontWeight: FontWeight.w300, fontSize: 11, color: Colors.black),
      ),
    );
  }
}
