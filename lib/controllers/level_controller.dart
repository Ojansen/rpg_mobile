import 'dart:ui';

import 'package:arpg/services/constants.dart';
import 'package:arpg/sprites/player_sprite.dart';
import 'package:arpg/world/level_map.dart';
import 'package:flame/components.dart';

class LevelController extends Component with HasGameRef {
  // LevelMap level = LevelMap(name: '');

  // Future<List<Component>> loadHub(String name) async {
  //   var hubmap = LevelMap().hubLevel;
    // final mapbg = await hubmap.getTiledMap(hubmap.mapPathName, hubmap.mapSize);
    // gameRef.add(mapbg);
    // gameRef.add(hubmap);
    // gameRef.camera.followComponent(hubmap.player);
    // gameRef.camera.worldBounds = Rect.fromLTRB(0, 0, hubmap.mapSize.x, hubmap.mapSize.y);
    // add(ScreenCollidable());
    // return hubmap;
  // }

  // void loadLevel(String name) {
  //   var currentLevel = LevelMap(
  //       name: name,
  //       mapPathName: mapPathName,
  //       mapSize: mapSize,
  //       player: player,
  //       playerSpawnPosition: playerSpawnPosition);
  //   // add(level);
  // }
}
