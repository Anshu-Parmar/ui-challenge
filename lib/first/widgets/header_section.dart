import 'package:flutter/material.dart';
import 'package:uichallenge/first/common/constants/numbers.dart';
import 'package:uichallenge/second/second_ui.dart';

class HeaderSection extends StatelessWidget {
  final double imageSize = 52;
  final double iconsSize = 18;

  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: imageSize,
          height: imageSize,
          decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
            BoxShadow(
              color: const Color(0xFF00C4FF).withOpacity(0.7),
              blurRadius: 10,
              spreadRadius: 0,
            ),
          ]),
          child: Image.asset(
            'assets/images/first/joker.png',
            width: imageSize,
            height: imageSize,
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'JOKER',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: appDefaultFontSizes,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/images/first/ic_calendar.png',
                      width: iconsSize,
                      height: iconsSize,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    const Text(
                      'DECEMBER 04, 2020',
                      style: TextStyle(color: Color(0xffA2A2A2), fontSize: appDefaultFontSizes),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Image.asset(
                      'assets/images/first/ic_time.png',
                      width: iconsSize,
                      height: iconsSize,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    const Text(
                      '20:30',
                      style: TextStyle(
                        color: Color(0xffA2A2A2),
                        fontSize: appDefaultFontSizes,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        IconButton.filledTonal(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const SecondUi(),));
          },
          icon: const Icon(
              Icons.looks_two_rounded
          )
        ),
      ],
    );
  }
}
