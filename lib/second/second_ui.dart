import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:uichallenge/second/widget/heading_section.dart';
import 'package:uichallenge/second/widget/new_games_section.dart';
import 'package:uichallenge/second/widget/popular_games_section.dart';
import 'package:uichallenge/second/widget/recommended_games_section.dart';
import 'package:uichallenge/second/widget/stories_section.dart';

class SecondUi extends StatefulWidget {
  const SecondUi({super.key});

  @override
  State<SecondUi> createState() => _SecondUiState();
}

class _SecondUiState extends State<SecondUi> {
  int navPos = 2;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          IndexedStack(
            index: navPos,
            children: const [
              TextScreen(text: "Search"),
              TextScreen(text: "Favorites"),
              HomeScreen(),
              TextScreen(text: "Notifications"),
              TextScreen(text: "Settings"),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: CurvedNavigationBar(
              onTap: (pos) {
                setState(() {
                  navPos = pos;
                });
              },
              index: navPos,
              backgroundColor: Colors.transparent,
              color: Colors.black,
              items: [
                Icon(navPos == 0 ? Icons.mic : Icons.mic_outlined, color: Colors.white),
                Icon(navPos == 1 ? Icons.chat_rounded : Icons.chat_outlined, color: Colors.white),
                Icon(navPos == 2 ? Icons.home : Icons.home_outlined, color: Colors.white),
                Icon(navPos == 3 ? Icons.favorite : Icons.favorite_outline_rounded, color: Colors.white),
                Icon(navPos == 4 ? Icons.search : Icons.search_outlined, color: Colors.white),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView(
          children: const [
            SafeArea(child: HeadingSection()),
            StoriesSection(),
            SizedBox(
              height: 22,
            ),
            PopularGamesSection(),
            RecommendedGamesSection(),
            NewGamesSection(),
            SizedBox(
              height: 120,
            ),
          ],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 60,
            decoration: const BoxDecoration(boxShadow: [BoxShadow(color: Colors.white, blurRadius: 30, spreadRadius: 40)]),
          ),
        )
      ],
    );
  }
}

class TextScreen extends StatelessWidget {
  final String text;

  const TextScreen({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 22,
        ),
      ),
    );
  }
}
