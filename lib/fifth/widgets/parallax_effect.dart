import 'package:flutter/material.dart';

class ParallaxImage extends StatelessWidget {
  final String url;
  final double horizontalSlide;

  const ParallaxImage({
    super.key,
    required this.url,
    required this.horizontalSlide,
  });

  @override
  Widget build(BuildContext context) {
    final scale = 1 - horizontalSlide.abs();
    final size = MediaQuery.of(context).size;
    return Center(
      child: SizedBox(
        width: size.width * ((scale * 0.8) + 0.8),
        height: size.height * ((scale * 0.2) + 0.2),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(48)),
          child: Image.asset(
            url,
            alignment: Alignment(horizontalSlide, 1),
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return const Center(
                child: Text("NO IMAGE", style: TextStyle(color: Colors.white),),
              );
            },
          ),
        ),
      ),
    );
  }
}
