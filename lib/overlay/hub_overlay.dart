import 'package:arpg/games/main_game.dart';
import 'package:arpg/models/player_model.dart';
import 'package:arpg/overlay/pause_overlay.dart';
import 'package:arpg/services/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HudOverlay extends StatelessWidget {
  static const String id = 'HudOverlay';
  final MainGame gameRef;

  const HudOverlay({Key? key, required this.gameRef}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Consumer(
        builder: (BuildContext context, PlayerModel playerValue, Widget? child) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.5),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Level: ${playerValue.level}',
                      style: kHudTextStyle,
                    ),
                    Text(
                      'Money: ${playerValue.money}',
                      style: kHudTextStyle,
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    child: const Icon(
                      Icons.pause_rounded,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      gameRef.overlays.add(PauseOverlay.id);
                      gameRef.pauseEngine();
                    },
                  ),
                  TextButton(
                    child: const Icon(
                      Icons.grid_on,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
