import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uichallenge/seventh/common/theme/theme.dart';

class MyCard extends StatelessWidget {
  final Widget child;

  const MyCard({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<MyThemeModel>(
      builder: (context, themeModel, _) {
        return Container(
          decoration: BoxDecoration(
              color:
              themeModel.isDark() ? const Color(0xFF1A1A26) : Colors.white,
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 4,
                  spreadRadius: 1,
                )
              ]),
          child: child,
        );
      },
    );
  }
}