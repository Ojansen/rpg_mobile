import 'package:arpg/games/main_game.dart';
import 'package:arpg/overlay/pause_overlay.dart';
import 'package:flutter/material.dart';

class PauseButton extends StatelessWidget {
  static const String id = 'PauseButton';
  final MainGame gameRef;

  const PauseButton({Key? key, required this.gameRef}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: TextButton(
        child: const Icon(
          Icons.pause_rounded,
          color: Colors.white,
        ),
        onPressed: () {
          gameRef.overlays.add(PauseOverlay.id);
          gameRef.pauseEngine();
        },
      ),
    );
  }
}
