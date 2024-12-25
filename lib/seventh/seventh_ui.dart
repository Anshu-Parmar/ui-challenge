import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uichallenge/seventh/common/theme/theme.dart';
import 'package:uichallenge/seventh/common/widget/bar_chart1.dart';
import 'package:uichallenge/seventh/common/widget/bar_chart2.dart';
import 'package:uichallenge/seventh/common/widget/line_chart1.dart';
import 'package:uichallenge/seventh/common/widget/line_chart2.dart';
import 'package:uichallenge/seventh/widgets/card_widget.dart';

class SeventhUi extends StatelessWidget {
  const SeventhUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<MyThemeModel>(
      builder: (context, themeModel, child) {
        return Scaffold(
          body: Stack(
            children: [
              LayoutBuilder(builder: (context, constraints) {
                return Column(
                  children: [
                    Container(
                      height: 40,
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      color: Colors.green,
                      child: Row(
                        children: [
                          Text(
                            'Graphs For Dashboards',
                            style: TextStyle(
                              color: themeModel.isDark() ? Colors.white : Colors.black,
                              fontWeight: FontWeight.bold,
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
                        childAspectRatio: 2.2,
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
