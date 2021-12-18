import 'package:arpg/components/button/pause_button.dart';
import 'package:arpg/games/main_game.dart';
import 'package:arpg/overlay/combat_overlay.dart';
import 'package:arpg/overlay/pause_overlay.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';

final mainGame = MainGame();

class GameScreen extends StatelessWidget {
  const GameScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GameWidget(
      game: mainGame,
      initialActiveOverlays: const [PauseButton.id],
      overlayBuilderMap: {
        CombatMenu.id: (BuildContext context, MainGame gameRef) => CombatMenu(
              gameRef: gameRef,
            ),
        PauseButton.id: (BuildContext context, MainGame gameRef) => PauseButton(
              gameRef: gameRef,
            ),
        PauseMenu.id: (BuildContext context, MainGame gameRef) => PauseMenu(
              gameRef: gameRef,
            ),
      },
    );
  }
}
