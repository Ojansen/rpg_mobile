import 'package:arpg/games/main_game.dart';
import 'package:arpg/models/player_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class VendorOverlay extends StatelessWidget {
  static const String id = 'VendorOverlay';
  final MainGame gameRef;

  const VendorOverlay({Key? key, required this.gameRef}) : super(key: key);

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
                    gameRef.overlays.remove(VendorOverlay.id);
                    gameRef.resumeEngine();
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
