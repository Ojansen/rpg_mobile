import 'package:arpg/games/main_game.dart';
import 'package:arpg/models/player_model.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:provider/provider.dart';

import '../main.dart';

class CombatMenu extends StatelessWidget {
  static const String id = 'CombatMenu';
  final MainGame gameRef;

  const CombatMenu({Key? key, required this.gameRef}) : super(key: key);

  Future<PlayerModel> getPlayerData() async {
    await initHive();

    final box = await Hive.openBox<PlayerModel>('PlayerModelBox');
    final playerModel = box.get('PlayerData');
    if (playerModel == null) {
      box.put('PlayerData', PlayerModel.fromMap(PlayerModel.defaultPlayer));
    }

    return box.get('PlayerData')!;
  }

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
                    gameRef.overlays.remove(CombatMenu.id);
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
