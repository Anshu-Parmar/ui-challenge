import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Container(
        height: MediaQuery.sizeOf(context).height,
        width: 300,
        color: Colors.green,
        child: SingleChildScrollView(
          child: StaggeredGrid.count(
            crossAxisCount: 10,
            mainAxisSpacing: 5,
            children: [
              _imageBox("Hello there1", start: true),
              _imageBox("Hello there2" ),
              _imageBox("Hello there3"),
              _imageBox("Hello there4hdsbfsbdfhbsnbdjhajksdj hsadjasnd asdjbasd jadsbabsdjauisdhw uasdbsabdki")
            ],
          ),
        ),
      ),
    );
  }

  Widget _imageBox(String text, {bool start = false}) {
    double widthDevice = MediaQuery.sizeOf(context).width;

    return StaggeredGridTile.count(
      crossAxisCellCount: 24,
      mainAxisCellCount: 12,
      child: Padding(
        padding: const EdgeInsets.only(left: 5.0, right: 5.0, bottom: 2, top: 2.5),
        child: Stack(
          fit: StackFit.expand,
          children: [
            ColorFiltered(
              colorFilter: ColorFilter.mode(
                Colors.black.withValues(alpha: 0.4),
                BlendMode.darken,
              ),
              child: Image.asset(
                "assets/images/second/player1.png",
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(30, 20, 60, start ? 200 : 100),
              child: Text(
                text,
                textAlign: TextAlign.start,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Positioned(
              bottom: 10,
              left: 10,   
              child: Row(
                children: [Text("some text")],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
