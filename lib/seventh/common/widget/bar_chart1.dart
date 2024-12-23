import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uichallenge/seventh/common/theme/theme.dart';
import 'package:uichallenge/seventh/common/widget/show_text_widget.dart';
import 'package:uichallenge/seventh/widgets/top_section_widget.dart';

class BarChartWidget1 extends StatelessWidget {
  const BarChartWidget1({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<MyThemeModel>(
      builder: (context, themeModel, child) {
        BarChartRodData makeRodData(double y) {
          return BarChartRodData(
            gradient: const LinearGradient(
              colors: [
                Color(0xFFFFAB5E),
                Color(0xFFFFD336),
              ],
            ),
            width: 14,
            borderRadius: BorderRadius.circular(2),
            backDrawRodData: BackgroundBarChartRodData(
              show: true,
              color: themeModel.isDark() ? const Color(0xFF1D1D2B) : const Color(0xFFFCFCFC),
              toY: 140
            ),
            toY: y,
          );
        }

        return Column(
          children: [
            const TopSectionWidget(
              title: 'Bar Graph',
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
                          reservedSize: 40,
                          showTitles: true,
                          getTitlesWidget: (double value, TitleMeta meta) {
                            switch (value.toInt()) {
                              case 0:
                                return SideTitleWidget(
                                    axisSide: AxisSide.top,
                                    child: ShowTextWidget(
                                        text: 'Jan', meta: meta, isDark: themeModel.isDark(), fontWeight: FontWeight.bold));
                              case 1:
                                return ShowTextWidget(
                                    text: 'Feb', meta: meta, isDark: themeModel.isDark(), fontWeight: FontWeight.bold);
                              case 2:
                                return ShowTextWidget(
                                    text: 'Mar', meta: meta, isDark: themeModel.isDark(), fontWeight: FontWeight.bold);
                              case 3:
                                return ShowTextWidget(
                                    text: 'Apr', meta: meta, isDark: themeModel.isDark(), fontWeight: FontWeight.bold);
                              case 4:
                                return ShowTextWidget(
                                    text: 'May', meta: meta, isDark: themeModel.isDark(), fontWeight: FontWeight.bold);
                              case 5:
                                return ShowTextWidget(
                                    text: 'Jun', meta: meta, isDark: themeModel.isDark(), fontWeight: FontWeight.bold);
                              case 6:
                                return ShowTextWidget(
                                    text: 'Jul', meta: meta, isDark: themeModel.isDark(), fontWeight: FontWeight.bold);
                              case 7:
                                return ShowTextWidget(
                                    text: 'Aug', meta: meta, isDark: themeModel.isDark(), fontWeight: FontWeight.bold);
                              case 8:
                                return ShowTextWidget(
                                    text: 'Sep', meta: meta, isDark: themeModel.isDark(), fontWeight: FontWeight.bold);
                              case 9:
                                return ShowTextWidget(
                                    text: 'Oct', meta: meta, isDark: themeModel.isDark(), fontWeight: FontWeight.bold);
                              case 10:
                                return ShowTextWidget(
                                    text: 'Nov', meta: meta, isDark: themeModel.isDark(), fontWeight: FontWeight.bold);
                              case 11:
                                return ShowTextWidget(
                                    text: 'Dec', meta: meta, isDark: themeModel.isDark(), fontWeight: FontWeight.bold);
                              default:
                                throw StateError('Not supported');
                            }
                          },
                        ),
                      ),
                      leftTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                          interval: 20,
                          reservedSize: 40,
                          maxIncluded: true,
                          minIncluded: true,
                          getTitlesWidget: (value, meta) {
                            switch (value.toInt()) {
                              case 20:
                                return ShowTextWidget(
                                    text: '20', meta: meta, isDark: themeModel.isDark(), fontWeight: FontWeight.bold);
                              case 40:
                                return ShowTextWidget(
                                    text: '40', meta: meta, isDark: themeModel.isDark(), fontWeight: FontWeight.bold);
                              case 60:
                                return ShowTextWidget(
                                    text: '60', meta: meta, isDark: themeModel.isDark(), fontWeight: FontWeight.bold);
                              case 80:
                                return ShowTextWidget(
                                    text: '80', meta: meta, isDark: themeModel.isDark(), fontWeight: FontWeight.bold);
                              case 100:
                                return ShowTextWidget(
                                    text: '100', meta: meta, isDark: themeModel.isDark(), fontWeight: FontWeight.bold);
                              case 120:
                                return ShowTextWidget(
                                    text: '120', meta: meta, isDark: themeModel.isDark(), fontWeight: FontWeight.bold);
                              case 140:
                                return ShowTextWidget(
                                    text: '140', meta: meta, isDark: themeModel.isDark(), fontWeight: FontWeight.bold);
                              default:
                                throw StateError('Not supported');
                            }
                          },
                        ),
                      ),
                    ),
                    maxY: 140,
                    minY: 20,
                    gridData: const FlGridData(show: false),
                    borderData: FlBorderData(show: false),
                  ),
                  swapAnimationDuration: Duration.zero,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
