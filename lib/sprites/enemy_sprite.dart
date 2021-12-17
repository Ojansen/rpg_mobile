import 'package:flame/components.dart';
import 'package:flame/geometry.dart';

class Enemy extends SpriteComponent with HasGameRef, HasHitboxes, Collidable {

  Enemy({
    Sprite? sprite,
    Vector2? position,
    Vector2? size,
  }) : super(sprite: sprite, position: position, size: size) {
    collidableType = CollidableType.active;
    addHitbox(HitboxCircle());

    anchor = Anchor.topCenter;
    debugMode = true;
  }

  @override
  Future<void> onLoad() async {
    super.onLoad();
    sprite = sprite;
    position = Vector2(100, 500);
  }
}
