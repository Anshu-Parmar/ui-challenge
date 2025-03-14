import 'package:flutter/material.dart';
import 'package:uichallenge/second/common/sizes.dart';

class HeadingSection extends StatelessWidget {
  const HeadingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(pagePadding),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Hi Anshu',
                  style: TextStyle(
                    color: Color(0xFF7B7B7B),
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  'Welcome Back!',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            width: 48,
            height: 48,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 4,
                    height: 4,
                    decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          spreadRadius: 8,
                          blurRadius: 12,
                          offset: Offset(0, 14),
                        )
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Image.asset('assets/images/second/Profile.png'),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    width: 14,
                    height: 14,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.green,
                          width: 3,
                        )),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
