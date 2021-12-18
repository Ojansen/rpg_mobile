
import 'package:arpg/controllers/enemy_controller.dart';
import 'package:arpg/games/main_game.dart';
import 'package:arpg/services/constants.dart';
import 'package:arpg/sprites/player_sprite.dart';
import 'package:flame/components.dart';
import 'package:flame/game.dart';

class CombatGame extends FlameGame with HasCollidables, HasDraggables {
  FlameGame mainGame = MainGame();

  @override
  Future<void>? onLoad() async {
    await super.onLoad();
    EnemyController enemyController = EnemyController();
    add(enemyController);
    final player = Player(
      joystick: joystick,
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