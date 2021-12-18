import 'dart:ui';

import 'package:arpg/controllers/enemy_controller.dart';
import 'package:arpg/sprites/player_sprite.dart';
import 'package:arpg/world/earth.dart';
import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:arpg/services/constants.dart';

class MainGame extends FlameGame with HasDraggables, HasCollidables {

  @override
  Future<void> onLoad() async {
    await super.onLoad();

    EnemyController enemyController = EnemyController();
    // final map = RenderableTiledMap(TiledMap(tileWidth: 1, width: 16, height: 16, tileHeight: 1), Map(), Vector2(16.0,16.0));
    // final TiledComponent tiledMap = TiledComponent(map);
    // add(tiledMap);

    SpriteComponent map = SpriteComponent()
      ..sprite = await loadSprite('world/maps/Earth.png')
      ..size = Vector2(3200, 3200);
    add(map);

    // final Earth _world1 = Earth();
    // add(_world1);

    final player = Player(
      joystick: joystick,
      size: Vector2(100, 100),
      position: map.size / 2,
    );

    add(ScreenCollidable());
    add(enemyController);

    add(player);
    add(joystick);
    // camera.follow = player.center;
    camera.followComponent(player);
    // camera.position = player.position / 2;
    // camera.followComponent(player);
    camera.worldBounds = Rect.fromLTRB(0, 0, map.size.x, map.size.y);
    // camera.snapTo(player.position);
    // camera.moveTo(parent1.position);
    camera.speed = 10;
    // camera.screenToWorld(Vector2(1920, 1080));
    camera.worldToScreen(map.size);
  }

  @override
  void update(double dt) {
    // TODO: implement update
    super.update(dt);
    // camera.update(dt);
  }
}
