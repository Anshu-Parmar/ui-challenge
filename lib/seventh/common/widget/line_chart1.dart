import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:uichallenge/seventh/common/widget/show_text_widget.dart';
import 'package:uichallenge/seventh/widgets/top_section_widget.dart';

class LineChartWidget1 extends StatelessWidget {
  const LineChartWidget1({super.key});

  @override
  Widget build(BuildContext context) {
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
                          // begin: AlignmentDirectional(0.5, 0),
                          // end: AlignmentDirectional(0.5, 1)
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
                minY: 0,
                gridData: const FlGridData(show: false),
                borderData: FlBorderData(show: false),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
