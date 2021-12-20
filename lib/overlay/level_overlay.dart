import 'package:arpg/components/level_list.dart';
import 'package:arpg/games/main_game.dart';
import 'package:arpg/models/level_model.dart';
import 'package:arpg/models/player_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LevelOverlay extends StatelessWidget {
  static const String id = 'LevelOverlay';
  final MainGame gameRef;

  const LevelOverlay({Key? key, required this.gameRef}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Consumer(
        builder: (BuildContext context, PlayerModel playerValue, Widget? child) {
          return Column(
            children: [
                // levelList,


              // LevelModel.levels.values.toList()

              Text('Name: ${playerValue.name}'),
              Text('Money: ${playerValue.money}'),
              SizedBox(
                width: MediaQuery.of(context).size.width / 3,
                child: ElevatedButton(
                  onPressed: () {
                    // gameRef.resumeEngine();
                    gameRef.overlays.remove(LevelOverlay.id);
                  },
                  child: const Text('Resume'),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
