import 'package:arpg/components/pause_button.dart';
import 'package:arpg/games/main_game.dart';
import 'package:arpg/overlay/combat_overlay.dart';
import 'package:arpg/overlay/hub_overlay.dart';
import 'package:arpg/overlay/hub_overlay.dart';
import 'package:arpg/overlay/level_overlay.dart';
import 'package:arpg/overlay/pause_overlay.dart';
import 'package:arpg/overlay/vendor_overlay.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';

final mainGame = MainGame();

class GameScreen extends StatelessWidget {
  const GameScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GameWidget(
      game: mainGame,
      initialActiveOverlays: const [
        HudOverlay.id,
      ],
      overlayBuilderMap: {
        CombatOverlay.id: (BuildContext context, MainGame gameRef) => CombatOverlay(
              gameRef: gameRef,
            ),
        PauseOverlay.id: (BuildContext context, MainGame gameRef) => PauseOverlay(
              gameRef: gameRef,
            ),
        VendorOverlay.id: (BuildContext context, MainGame gameRef) => VendorOverlay(
              gameRef: gameRef,
            ),
        HudOverlay.id: (BuildContext context, MainGame gameRef) => HudOverlay(
              gameRef: gameRef,
            ),
        LevelOverlay.id: (BuildContext context, MainGame gameRef) => LevelOverlay(
          gameRef: gameRef,
        ),
      },
    );
  }
}
