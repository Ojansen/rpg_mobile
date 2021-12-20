import 'package:arpg/games/main_game.dart';
import 'package:arpg/models/player_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CombatOverlay extends StatelessWidget {
  static const String id = 'CombatOverlay';
  final MainGame gameRef;

  const CombatOverlay({Key? key, required this.gameRef}) : super(key: key);
  //
  // Future<PlayerModel> getPlayerData() async {
  //   await initHive();
  //
  //   final box = await Hive.openBox<PlayerModel>('PlayerModelBox');
  //   final playerModel = box.get('PlayerData');
  //   if (playerModel == null) {
  //     box.put('PlayerData', PlayerModel.fromMap(PlayerModel.defaultPlayer));
  //   }
  //
  //   return box.get('PlayerData')!;
  // }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Consumer(
        builder: (BuildContext context, PlayerModel playerValue, Widget? child) {
          return Column(
            children: [
              Text('Name: ${playerValue.name}'),
              Text('Money: ${playerValue.money}'),
              SizedBox(
                width: MediaQuery.of(context).size.width / 3,
                child: ElevatedButton(
                  onPressed: () {
                    gameRef.resumeEngine();
                    gameRef.overlays.remove(CombatOverlay.id);
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
