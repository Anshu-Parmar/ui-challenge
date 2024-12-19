// import 'package:flutter/material.dart';
// import 'package:uichallenge/fifth/widgets/parallax_effect.dart';
//
// class FifthUi extends StatefulWidget {
//   const FifthUi({super.key});
//
//   @override
//   State<FifthUi> createState() => _FifthUiState();
// }
//
// class _FifthUiState extends State<FifthUi> {
//   late PageController _pageController;
//   double page = 0.0;
//
//   List<String> images = [
//     'https://cdn.pixabay.com/photo/2023/02/18/11/22/cactus-7797750_1280.jpg',
//     'https://cdn.pixabay.com/photo/2024/07/09/16/37/abstract-8884025_960_720.png',
//     'https://cdn.pixabay.com/photo/2024/03/02/07/09/car-8607713_960_720.jpg',
//     'https://cdn.pixabay.com/photo/2023/10/23/16/24/bird-8336436_1280.jpg',
//     'https://cdn.pixabay.com/photo/2023/10/23/16/24/bird-8336436_1280.jpg',
//     'https://cdn.pixabay.com/photo/2023/10/23/16/24/bird-8336436_1280.jpg',
//     'https://cdn.pixabay.com/photo/2023/10/23/16/24/bird-8336436_1280.jpg',
//     'https://cdn.pixabay.com/photo/2023/10/23/16/24/bird-8336436_1280.jpg',
//     'https://cdn.pixabay.com/photo/2023/10/23/16/24/bird-8336436_1280.jpg',
//     'https://cdn.pixabay.com/photo/2023/10/23/16/24/bird-8336436_1280.jpg',
//   ];
//
//   @override
//   void initState() {
//     _pageController = PageController(
//       initialPage: 0,
//       viewportFraction: 0.5,
//     );
//
//     _pageController.addListener(_onScroll);
//     super.initState();
//   }
//
//   void _onScroll() {
//     setState(() {
//       page = _pageController.page!;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final screenSize = MediaQuery.of(context).size;
//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: Center(
//         child: SizedBox(
//           height: screenSize.width / 1.5,
//           child: PageView.builder(
//             controller: _pageController,
//             itemBuilder: (context, index) {
//               return SizedBox(
//                 child: Padding(
//                   padding: const EdgeInsets.all(16.0),
//                   child: ParallaxImage(
//                     url: images[index],
//                     horizontalSlide: (index - page).clamp(-1, 1).toDouble(),
//                   ),
//                 ),
//               );
//             },
//             itemCount: images.length,
//           ),
//         ),
//       ),
//     );
//   }
//
//   @override
//   void dispose() {
//     _pageController.removeListener(_onScroll);
//     _pageController.dispose();
//     super.dispose();
//   }
// }
