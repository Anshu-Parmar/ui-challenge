import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uichallenge/seventh/common/theme/theme.dart';
import 'package:uichallenge/seventh/common/widget/show_text_widget.dart';
import 'package:uichallenge/seventh/widgets/top_section_widget.dart';

class BarChartWidget2 extends StatelessWidget {
  const BarChartWidget2({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<MyThemeModel>(builder: (context, themeModel, child) {
      BarChartRodData makeRodData(double y) {
        return BarChartRodData(
          gradient: const LinearGradient(
            colors: [
              Color(0xFF1726AB),
              Color(0xFF364AFF),
            ],
          ),
          width: 3,
          borderRadius: BorderRadius.circular(2),
          backDrawRodData: BackgroundBarChartRodData(
            show: true,
            color: themeModel.isDark()
                  ? const Color(0xFF1D1D2B)
                  : const Color(0xFFFCFCFC),
            fromY: 140,
          ),
          toY: y,
        );
      }

      return Column(
        children: [
          const TopSectionWidget(
            title: 'Line Graph',
            legends: [],
            padding: EdgeInsets.only(left: 8, right: 18, top: 8, bottom: 8),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 18, top: 18, bottom: 18),
              child: BarChart(
                BarChartData(
                  barGroups: [
                    BarChartGroupData(x: 0, barRods: [makeRodData(20)]),
                    BarChartGroupData(x: 1, barRods: [makeRodData(40)]),
                    BarChartGroupData(x: 2, barRods: [makeRodData(30)]),
                    BarChartGroupData(x: 3, barRods: [makeRodData(60)]),
                    BarChartGroupData(x: 4, barRods: [makeRodData(75)]),
                    BarChartGroupData(x: 5, barRods: [makeRodData(35)]),
                    BarChartGroupData(x: 6, barRods: [makeRodData(42)]),
                    BarChartGroupData(x: 7, barRods: [makeRodData(33)]),
                    BarChartGroupData(x: 8, barRods: [makeRodData(60)]),
                    BarChartGroupData(x: 9, barRods: [makeRodData(90)]),
                    BarChartGroupData(x: 10, barRods: [makeRodData(86)]),
                    BarChartGroupData(x: 11, barRods: [makeRodData(120)]),
                  ],
                  titlesData: FlTitlesData(
                      rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
                      topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
                      bottomTitles: AxisTitles(
                        sideTitles: SideTitles(
                          reservedSize: 6,
                          showTitles: true,
                          getTitlesWidget: (double value, TitleMeta meta) {
                            switch (value.toInt()) {
                              case 0:
                                return ShowTextWidget(text: 'Jan', meta: meta,);
                              case 1:
                                return ShowTextWidget(text: 'Feb', meta: meta,);
                              case 2:
                                return ShowTextWidget(text: 'Mar', meta: meta,);
                              case 3:
                                return ShowTextWidget(text: 'Apr', meta: meta,);
                              case 4:
                                return ShowTextWidget(text: 'May', meta: meta,);
                              case 5:
                                return ShowTextWidget(text: 'Jun', meta: meta,);
                              case 6:
                                return ShowTextWidget(text: 'Jul', meta: meta,);
                              case 7:
                                return ShowTextWidget(text: 'Aug', meta: meta,);
                              case 8:
                                return ShowTextWidget(text: 'Sep', meta: meta,);
                              case 9:
                                return ShowTextWidget(text: 'Oct', meta: meta,);
                              case 10:
                                return ShowTextWidget(text: 'Nov', meta: meta,);
                              case 11:
                                return ShowTextWidget(text: 'Dec', meta: meta,);
                              default:
                                throw StateError('Not supported');
                            }
                          },
                        ),
                      ),
                      leftTitles: const AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                          interval: 20,
                          reservedSize: 32,
                        ),
                      )),
                  maxY: 140,
                  gridData: const FlGridData(show: false),
                  borderData: FlBorderData(show: false),
                ),
                swapAnimationDuration: Duration.zero,
              ),
            ),
          ),
        ],
      );
    });
  }
}
