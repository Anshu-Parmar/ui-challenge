import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ShowTextWidget extends StatelessWidget {
  final String text;
  final TitleMeta meta;
  final bool isDark;
  final FontWeight fontWeight;

  const ShowTextWidget({super.key, required this.text, required this.meta, this.isDark = false, this.fontWeight = FontWeight.w300});

  @override
  Widget build(BuildContext context) {
    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 16,
      child: Text(
        text,
        style: TextStyle(fontWeight: fontWeight, fontSize: 11, color: isDark ? Colors.white : Colors.black,),
      ),
    );
  }
}
