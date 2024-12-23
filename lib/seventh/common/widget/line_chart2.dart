import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uichallenge/seventh/common/theme/theme.dart';
import 'package:uichallenge/seventh/common/widget/show_text_widget.dart';
import 'package:uichallenge/seventh/widgets/top_section_widget.dart';

class LineChartWidget2 extends StatelessWidget {
  const LineChartWidget2({super.key});

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
                          FlSpot(0, 40),
                          FlSpot(1, 50),
                          FlSpot(2, 60),
                          FlSpot(3, 48),
                          FlSpot(4, 36),
                          FlSpot(5, 58),
                          FlSpot(6, 80),
                          FlSpot(7, 40),
                          FlSpot(8, 31),
                          FlSpot(9, 22),
                          FlSpot(10, 71),
                          FlSpot(11, 120),
                        ],
                        dotData: const FlDotData(show: false),
                        gradient: const LinearGradient(
                            colors: [Color(0xFFFF26B5), Color(0xFFFF5B5B)],
                        ),
                        isCurved: false,
                        belowBarData: BarAreaData(
                          show: true,
                          gradient: const LinearGradient(
                              colors: [Color(0x10FF26B5), Color(0x00FF26B5)],
                          ),
                        ),
                      ),
                      LineChartBarData(
                        spots: const [
                          FlSpot(0, 20),
                          FlSpot(1, 36),
                          FlSpot(2, 60),
                          FlSpot(3, 40),
                          FlSpot(4, 80),
                          FlSpot(5, 90),
                          FlSpot(6, 50),
                          FlSpot(7, 42),
                          FlSpot(8, 64),
                          FlSpot(9, 68),
                          FlSpot(10, 100),
                          FlSpot(11, 95),
                        ],
                        dotData: const FlDotData(show: false),
                        gradient: const LinearGradient(
                            colors: [Color(0xFF905BFF), Color(0xFF268AFF)],
                        ),
                        isCurved: false,
                        belowBarData: BarAreaData(
                          show: true,
                          gradient: const LinearGradient(
                              colors: [Color(0x1f268AFF), Color(0x00268AFF)],
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
                                return ShowTextWidget(text: 'Jan', meta: meta, isDark: themeModel.isDark(), fontWeight: FontWeight.bold);
                              case 1:
                                return ShowTextWidget(text: 'Feb', meta: meta, isDark: themeModel.isDark(), fontWeight: FontWeight.bold);
                              case 2:
                                return ShowTextWidget(text: 'Mar', meta: meta, isDark: themeModel.isDark(), fontWeight: FontWeight.bold);
                              case 3:
                                return ShowTextWidget(text: 'Apr', meta: meta, isDark: themeModel.isDark(), fontWeight: FontWeight.bold);
                              case 4:
                                return ShowTextWidget(text: 'May', meta: meta, isDark: themeModel.isDark(), fontWeight: FontWeight.bold);
                              case 5:
                                return ShowTextWidget(text: 'Jun', meta: meta, isDark: themeModel.isDark(), fontWeight: FontWeight.bold);
                              case 6:
                                return ShowTextWidget(text: 'Jul', meta: meta, isDark: themeModel.isDark(), fontWeight: FontWeight.bold);
                              case 7:
                                return ShowTextWidget(text: 'Aug', meta: meta, isDark: themeModel.isDark(), fontWeight: FontWeight.bold);
                              case 8:
                                return ShowTextWidget(text: 'Sep', meta: meta, isDark: themeModel.isDark(), fontWeight: FontWeight.bold);
                              case 9:
                                return ShowTextWidget(text: 'Oct', meta: meta, isDark: themeModel.isDark(), fontWeight: FontWeight.bold);
                              case 10:
                                return ShowTextWidget(text: 'Nov', meta: meta, isDark: themeModel.isDark(), fontWeight: FontWeight.bold);
                              case 11:
                                return ShowTextWidget(text: 'Dec', meta: meta, isDark: themeModel.isDark(), fontWeight: FontWeight.bold);
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
                    gridData: const FlGridData(show: false, drawHorizontalLine: true, drawVerticalLine: true ),
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
