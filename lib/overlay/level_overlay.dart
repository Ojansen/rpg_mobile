import 'package:arpg/components/level_list.dart';
import 'package:arpg/games/main_game.dart';
import 'package:flutter/material.dart';

class LevelOverlay extends StatelessWidget {
  static const String id = 'LevelOverlay';
  final MainGame gameRef;

  const LevelOverlay({Key? key, required this.gameRef}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return levelList;
  }
}
