import 'package:flutter/material.dart';
import 'package:uichallenge/third/models/hero_model.dart';
import 'package:uichallenge/third/widget/hero_widget.dart';

class ThirdUi extends StatefulWidget {
  const ThirdUi({super.key});

  @override
  State<ThirdUi> createState() => _ThirdUiState();
}

class _ThirdUiState extends State<ThirdUi> {
  late ScrollController _scrollController;

  double toolbarOpacity = 1.0;

  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(() {
      setState(() {
        if (_scrollController.offset <= 80) {
          final tempOpacity = (80 - _scrollController.offset) / 80;
          tempOpacity < 0 || tempOpacity > 1 ? toolbarOpacity = 0 : toolbarOpacity = tempOpacity;
        } else {
          toolbarOpacity = 0;
        }
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xffFF6958),
              Color(0xffC358ED),
            ],
            begin: Alignment(0.3, -1),
            end: Alignment(-0.8, 1),
          ),
        ),
        child: Stack(
          children: [
            ListView.builder(
              controller: _scrollController,
              padding: const EdgeInsets.only(top: 80, bottom: 40),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 12.0),
                  child: HeroRowWidget(hero: heroes[index]),
                );
              },
              itemCount: heroes.length,
            ),
            Opacity(
              opacity: toolbarOpacity,
              child: SafeArea(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      width: 18,
                    ),
                    const Text(
                      'MAIN MENU',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Expanded(
                        child: Container(
                      height: 80,
                    )),
                    const SizedBox(
                      width: 80,
                      height: 80,
                      child: Icon(
                        Icons.menu,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
