import 'dart:math';

import 'package:arpg/sprites/enemy_sprite.dart';
import 'package:arpg/sprites/player_sprite.dart';
import 'package:flame/components.dart';

class EnemyController extends Component with HasGameRef {
  EnemyController() : super();
  Random random = Random();

  void _spawnEnemy() async {
    Enemy enemy = Enemy(
      sprite: await gameRef.loadSprite('sprites/enemy1.png'),
      size: Vector2(100, 100),
      position: Vector2(random.nextDouble() * gameRef.size.x, 0),
    );
    add(enemy);
  }

  @override
  void onMount() {
    // TODO: implement onMount
    super.onMount();
    _spawnEnemy();
  }

  void onCollision(Set<Vector2> intersectionPoints, Collidable other) {
    if (other is Player) {
      removeFromParent();
    }
  }
}
