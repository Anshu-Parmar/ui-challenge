import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uichallenge/seventh/common/theme/theme.dart';
import 'package:uichallenge/seventh/common/widget/show_text_widget.dart';
import 'package:uichallenge/seventh/widgets/top_section_widget.dart';

class LineChartWidget1 extends StatelessWidget {
  const LineChartWidget1({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<MyThemeModel>(
        builder: (context, themeModel, child) {
        return Column(
          children: [
            TopSectionWidget(
              title: 'Line Graph',
              legends: [
                Legend(title: 'Omuk', color: const Color(0xFF5974FF)),
                Legend(
                  title: 'Tomuk',
                  color: const Color(0xFFFF3E8D),
                ),
              ],
              padding: const EdgeInsets.only(left: 8, right: 18, top: 8, bottom: 8),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 18, top: 18, bottom: 18),
                child: LineChart(
                  LineChartData(
                    lineBarsData: [
                      LineChartBarData(
                        spots: const [
                          FlSpot(0, 24),
                          FlSpot(1, 24),
                          FlSpot(2, 40),
                          FlSpot(3, 84),
                          FlSpot(4, 100),
                          FlSpot(5, 80),
                          FlSpot(6, 64),
                          FlSpot(7, 86),
                          FlSpot(8, 108),
                          FlSpot(9, 105),
                          FlSpot(10, 105),
                          FlSpot(11, 124),
                        ],
                        dotData: const FlDotData(show: false),
                        gradient: const LinearGradient(
                          colors: [Color(0xFFFF26B5), Color(0xFFFF5B5B)],
                        ),
                        isCurved: true,
                        belowBarData: BarAreaData(
                          show: true,
                          gradient: const LinearGradient(
                              colors: [Color(0x10FF26B5), Color(0x00FF26B5)],
                          ),
                        ),
                      ),
                      LineChartBarData(
                        spots: const [
                          FlSpot(0, 40),
                          FlSpot(1, 28),
                          FlSpot(2, 20),
                          FlSpot(3, 18),
                          FlSpot(4, 40),
                          FlSpot(5, 92),
                          FlSpot(6, 88),
                          FlSpot(7, 70),
                          FlSpot(8, 85),
                          FlSpot(9, 102),
                          FlSpot(10, 80),
                          FlSpot(11, 80),
                        ],
                        dotData: const FlDotData(show: false),
                        gradient: const LinearGradient(
                          colors: [Color(0xFF268AFF), Color(0xFF905BFF)],
                        ),
                        isCurved: true,
                        belowBarData: BarAreaData(
                          show: true,
                          gradient: const LinearGradient(
                              colors: [Color(0x1f268AFF), Color(0x00268AFF)],
                              // begin: AlignmentDirectional(0.5, 0),
                              // end: AlignmentDirectional(0.5, 1)
                          ),
                        ),
                      ),
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
                                if(double.parse(meta.formattedValue).round() == 0) {
                                  return ShowTextWidget(text: 'Jan', meta: meta, isDark: themeModel.isDark(), fontWeight: FontWeight.bold);
                                } else {
                                  return const SizedBox();
                                }
                              case 1:
                                if(double.parse(meta.formattedValue).round() == 1) {
                                  return ShowTextWidget(text: 'Feb', meta: meta, isDark: themeModel.isDark(), fontWeight: FontWeight.bold);
                                } else {
                                  return const SizedBox();
                                }
                              case 2:
                                if(double.parse(meta.formattedValue).round() == 2) {
                                  return ShowTextWidget(text: 'Mar', meta: meta, isDark: themeModel.isDark(), fontWeight: FontWeight.bold);
                                } else {
                                  return const SizedBox();
                                }
                              case 3:
                                if(double.parse(meta.formattedValue).round() == 3) {
                                  return ShowTextWidget(text: 'Apr', meta: meta, isDark: themeModel.isDark(), fontWeight: FontWeight.bold);
                                } else {
                                  return const SizedBox();
                                }
                              case 4:
                                if(double.parse(meta.formattedValue).round() == 4) {
                                  return ShowTextWidget(text: 'May', meta: meta, isDark: themeModel.isDark(), fontWeight: FontWeight.bold);
                                } else {
                                  return const SizedBox();
                                }
                              case 5:
                                if(double.parse(meta.formattedValue).round() == 5) {
                                  return ShowTextWidget(text: 'Jun', meta: meta, isDark: themeModel.isDark(), fontWeight: FontWeight.bold);
                                } else {
                                  return const SizedBox();
                                }
                              case 6:
                                if(double.parse(meta.formattedValue).round() == 6) {
                                  return ShowTextWidget(text: 'Jul', meta: meta, isDark: themeModel.isDark(), fontWeight: FontWeight.bold);
                                } else {
                                  return const SizedBox();
                                }
                              case 7:
                                if(double.parse(meta.formattedValue).round() == 7) {
                                  return ShowTextWidget(text: 'Aug', meta: meta, isDark: themeModel.isDark(), fontWeight: FontWeight.bold);
                                } else {
                                  return const SizedBox();
                                }
                              case 8:
                                if(double.parse(meta.formattedValue).round() == 8) {
                                  return ShowTextWidget(text: 'Sep', meta: meta, isDark: themeModel.isDark(), fontWeight: FontWeight.bold);
                                } else {
                                  return const SizedBox();
                                }
                              case 9:
                                if(double.parse(meta.formattedValue).round() == 9) {
                                  return ShowTextWidget(text: 'Oct', meta: meta, isDark: themeModel.isDark(), fontWeight: FontWeight.bold);
                                } else {
                                  return const SizedBox();
                                }
                              case 10:
                                if(double.parse(meta.formattedValue).round() == 10) {
                                  return ShowTextWidget(text: 'Nov', meta: meta, isDark: themeModel.isDark(), fontWeight: FontWeight.bold);
                                } else {
                                  return const SizedBox();
                                }
                              case 11:
                                if(double.parse(meta.formattedValue).round() == 11) {
                                  return ShowTextWidget(text: 'Dec', meta: meta, isDark: themeModel.isDark(), fontWeight: FontWeight.bold);
                                } else {
                                  return const SizedBox();
                                }
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
                ),
              ),
            ),
          ],
        );
      }
    );
  }
}
