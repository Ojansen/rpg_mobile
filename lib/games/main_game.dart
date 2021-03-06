import 'dart:math';
import 'dart:ui';

import 'package:arpg/controllers/enemy_controller.dart';
import 'package:arpg/controllers/level_controller.dart';
import 'package:arpg/sprites/enemy_sprite.dart';
import 'package:arpg/sprites/player_sprite.dart';
import 'package:arpg/sprites/teleport_sprite.dart';
import 'package:arpg/sprites/vendor_sprite.dart';
import 'package:arpg/world/level_map.dart';
import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:arpg/services/constants.dart';
import 'package:flame/sprite.dart';
import 'package:flame_tiled/flame_tiled.dart';
import 'package:flutter/material.dart';
import 'package:tiled/tiled.dart';

class MainGame extends FlameGame with HasDraggables, HasCollidables {

  get random => Random();

  static const double mapSizeX = 1920;
  static const double mapSizeY = 1920;

  late final ComponentSet components = createComponentSet();

  late final PlayerSprite _player = PlayerSprite(
    joystick: kjoystick,
    size: Vector2(16, 16),
    position: Vector2(1920, 1920) / 2,
  );

  @override
  Future<void> onLoad() async {
    await super.onLoad();
    resumeEngine();

    LevelController levelController = LevelController();
    add(LevelMap().hubLevel);
    // final hublevel = await levelController.loadHub('hub');
    // for (var element in hublevel) {
    //   add(element);
    //   print(element);
    //   if (element is PlayerSprite) {
    //     camera.followComponent(element);
    //   }
    // }
    // add(hublevel);

    // camera.followComponent(hubmap.player);
    // camera.worldBounds = Rect.fromLTRB(0, 0, mapSizeX, mapSizeY);

    // EnemyController enemyController = EnemyController();

    // final spacehipSpritebatch = SpriteBatch(atlas);
    // final TiledComponent map = TiledComponent(
    //   RenderableTiledMap(
    //     TiledMap(type: TileMapType.map, width: 1920, height: 1920, tileWidth: 64, tileHeight: 64),
    //     spacehipSpritebatch,
    //     Vector2(1920, 1920),
    //   ),
    // );

    // final tiledMap = await TiledComponent.load('Spaceship.tmx', Vector2.all(64));
    // add(tiledMap);

    // final map = TiledMap(width: 1920, height: 1920, tileWidth: 64, tileHeight: 64);
    // add(map);
    // print(map.tileMap.batches);
    // final TiledComponent tiledMap = TiledComponent(map);
    // add(tiledMap);

    // SpriteComponent mapSprite = SpriteComponent()
    //   ..sprite = await loadSprite('spaceships/Spaceship.png')
    //   ..size = Vector2(1920, 1920);
    // add(mapSprite);

    // final Earth _world1 = Earth();
    // add(_world1);

    // TeleportSprite teleporter = TeleportSprite(
    //   sprite: await loadSprite('sprites/teleport.png'),
    // );
    // add(teleporter);

    // final vendor = Vendor();
    // add(Vendor());

    // add(enemyController);

    // add(_player);
    // add(kjoystick);

    // camera.follow = player.center;
    // camera.position = player.position / 2;
    // camera.followComponent(player);

    // camera.snapTo(player.position);
    // camera.moveTo(parent1.position);
    // camera.speed = 50;

    // camera.zoom = 1.5; // bugged in v1.0.0

    // camera.screenToWorld(Vector2(1920, 1920));
    // camera.worldToScreen(Vector2(1920, 1920));

  }

  @override
  void update(double dt) {
    // TODO: implement update
    // super.update(dt);
    // camera.update(dt);
  }

  void reset() {
    // First reset player, enemy manager and power-up manager .
    // _player.reset();
    // remove(_player);
    // remove(kjoystick);

    // Now remove all the enemies, bullets and power ups
    // from the game world. Note that, we are not calling
    // Enemy.destroy() because it will unnecessarily
    // run explosion effect and increase players score.
    // components.whereType<EnemySprite>().forEach((enemy) {
    //   remove(enemy);
    // });
    // detach();
  }
}
