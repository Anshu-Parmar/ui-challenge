import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uichallenge/seventh/common/theme/theme.dart';
import 'package:uichallenge/seventh/common/widget/bar_chart1.dart';
import 'package:uichallenge/seventh/common/widget/bar_chart2.dart';
import 'package:uichallenge/seventh/common/widget/line_chart1.dart';
import 'package:uichallenge/seventh/common/widget/line_chart2.dart';
import 'package:uichallenge/seventh/utils/utils.dart';
import 'package:uichallenge/seventh/widgets/card_widget.dart';
import 'package:uichallenge/seventh/widgets/divider_widget.dart';

class SeventhUi extends StatelessWidget {
  const SeventhUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<MyThemeModel>(
      builder: (context, themeModel, child) {
        return Scaffold(
          backgroundColor: themeModel.isDark() ? const Color(0xFF20202A) : Colors.white,
          body: Stack(
            children: [
              LayoutBuilder(builder: (context, constraints) {
                return Column(
                  children: [
                    Container(
                      height: 40,
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          RichText(
                            text: TextSpan(
                              text: 'Graphs For Dashboards (',
                              style: TextStyle(
                                color: themeModel.isDark() ? Colors.white : Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                              children: [
                                TextSpan(
                                  text: 'Uplabs',
                                  style: TextStyle(color: Theme.of(context).textTheme.labelMedium?.color ?? Colors.blueAccent),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      Utils.launchURL('https://www.uplabs.com/posts/dashboard-chart-elements-ui-kit-figma');
                                    },
                                ),
                                const TextSpan(text: ')'),
                              ],
                            ),
                          ),
                          Expanded(child: Container()),
                          Switch(
                            value: themeModel.isDark(),
                            onChanged: (newValue) {
                              Provider.of<MyThemeModel>(context, listen: false).switchTheme();
                            },
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: GridView.count(
                        crossAxisCount: constraints.maxWidth < 800 ? 1 : 2,
                        childAspectRatio: 1.7,
                        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16, top: 4),
                        crossAxisSpacing: 16,
                        mainAxisSpacing: 16,
                        children: const [
                          MyCard(child: BarChartWidget1()),
                          MyCard(child: BarChartWidget2()),
                          MyCard(child: LineChartWidget1()),
                          MyCard(child: LineChartWidget2()),
                        ],
                      ),
                    ),
                  ],
                );
              }),
            ],
          ),
        );
      },
    );
  }
}
