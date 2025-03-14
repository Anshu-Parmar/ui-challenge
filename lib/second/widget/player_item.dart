import 'package:flutter/material.dart';

class PlayerModel {
  final Color bgColor;
  final String image, name, description;
  final bool isFavorite;
  final double rank;
  final double imageScale;

  PlayerModel({
    required this.bgColor,
    required this.image,
    required this.name,
    required this.description,
    required this.isFavorite,
    required this.rank,
    this.imageScale = 1.0,
  });
}

class PlayerItemWidget extends StatelessWidget {
  final PlayerModel playerModel;
  final double height;
  final double width;

  const PlayerItemWidget({
    super.key,
    required this.playerModel,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset(
              'assets/images/second/items_bg.png',
              color: playerModel.bgColor,
            ),
          ),
          const Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(top: 46.0, left: 10),
              child: Icon(
                Icons.favorite_outline,
                color: Colors.white,
              ),
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const SizedBox(
                height: 12,
              ),
              Image.asset(playerModel.image, width: width * 0.8 * playerModel.imageScale),
              Expanded(child: Container()),
              Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      playerModel.name,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            playerModel.description,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 24,
                        height: 24,
                        margin: const EdgeInsets.only(right: 8, left: 8),
                        decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(5))),
                        child: Center(
                          child: Text(
                            playerModel.rank.toStringAsFixed(1),
                            style: TextStyle(color: playerModel.bgColor, fontWeight: FontWeight.bold, fontSize: 12),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 22,
              )
            ],
          )
        ],
      ),
    );
  }
}
