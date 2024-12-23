import 'package:flutter/material.dart';
import 'package:uichallenge/sixth/common/global.dart';

class ReviewsList extends StatelessWidget {
  const ReviewsList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (_, index) => const SizedBox(width: 18),
        itemBuilder: (_, index) {
          if (index == reviewImages.length) {
            return Image.network(addImageUrl);
          }

          return Image.network(reviewImages[index]);
        },
        itemCount: reviewImages.length + 1,
      ),
    );
  }
}