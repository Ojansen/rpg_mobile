import 'package:arpg/games/combat_game.dart';
import 'package:arpg/games/main_game.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';

final mainGame = MainGame();
final combatGame = CombatGame();

class GameScreen extends StatelessWidget {
  const GameScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GameWidget(
      game: mainGame,
      overlayBuilderMap: {
        'CombatOverlay': (ctx, game) {
          return Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              // color: Colors.transparent,
              color: Color.fromRGBO(130, 130, 130, 0.5),
            ),
            child: GameWidget(
              game: combatGame,
            ),
          );
        },
      },
    );
  }
}
