import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:uichallenge/fourth/model/models.dart';
import 'package:uichallenge/fourth/widget/atom_widget.dart';

class FourthUi extends StatefulWidget {
  const FourthUi({super.key});

  @override
  State<FourthUi> createState() => _FourthUiState();
}

class _FourthUiState extends State<FourthUi> {
  final List<Orbit> _orbits = [
    Orbit(electrons: [], angle: 0.0),
    Orbit(electrons: [], angle: 60.0),
    Orbit(electrons: [], angle: 120.0),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF191636),
      body: Center(
        child: AtomWidget(
          orbits: _orbits,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _orbits[math.Random().nextInt(_orbits.length)]
                .electrons
                .add(Electron.random());
          });
        },
        child: const Icon(Icons.add),
      ),
      // bottomNavigationBar: const F4FBottomBarWidget(
      //   sections: [
      //     F4FBottomBarSection(title: 'Blog Post in Flutter 4 Fun', link: 'https://flutter4fun.com/ui-challenge-4/'),
      //     if (!kIsWeb)
      //       F4FBottomBarSection(title: 'Live Demo', link: 'https://flutter4fun.github.io/ui_challenge_4_live/#/'),
      //     F4FBottomBarSection(title: 'Source Code', link: 'https://github.com/Flutter4Fun/ui_challenge_4/'),
      //   ],
      // ),
    );
  }
}