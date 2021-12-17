import 'package:arpg/controllers/enemy_controller.dart';
import 'package:arpg/sprites/player_sprite.dart';
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

    SpriteComponent background = SpriteComponent()
      ..sprite = await loadSprite('world/startScreenBackground.png')
      ..size = size;
    add(background);

    final player = Player(
      joystick: joystick,
      sprite: await loadSprite('sprites/FinnSprite.png'),
      size: Vector2.all(150.0),
      position: Vector2(100, 500),
    );

    // camera.follow = player.position / 2;

    add(ScreenCollidable());
    add(enemyController);
    add(player);
    add(joystick);
  }
}