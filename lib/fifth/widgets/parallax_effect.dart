// import 'package:flutter/material.dart';
//
// class ParallaxImage extends StatelessWidget {
//   final String url;
//   final double horizontalSlide;
//
//   const ParallaxImage({
//     super.key,
//     required this.url,
//     required this.horizontalSlide,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     final scale = 1 - horizontalSlide.abs();
//     final size = MediaQuery.of(context).size;
//     print(url);
//     return Center(
//       child: SizedBox(
//         width: size.width * ((scale * 0.8) + 0.8),
//         height: size.height * ((scale * 0.2) + 0.2),
//         child: ClipRRect(
//           borderRadius: const BorderRadius.all(Radius.circular(48)),
//           child: Image.network(
//             url,
//             alignment: Alignment(horizontalSlide, 1),
//             fit: BoxFit.cover,
//             loadingBuilder: (context, child, loadingProgress) {
//               print("${loadingProgress?.cumulativeBytesLoaded}");
//               return Center(
//                 child: CircularProgressIndicator(
//                   value: loadingProgress?.cumulativeBytesLoaded.toDouble(),
//                   color: Colors.green,
//                 ),
//               );
//             },
//             errorBuilder: (context, error, stackTrace) {
//               // print(stackTrace.runtimeType);
//               // print(error);
//               return const Center(
//                 child: Text("NO IMAGE", style: TextStyle(color: Colors.white),),
//               );
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }
