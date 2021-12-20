
import 'package:flame/components.dart';
import 'package:flame/geometry.dart';

class TeleportSprite extends SpriteComponent with HasGameRef, HasHitboxes, Collidable {

  TeleportSprite({
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
    size = Vector2.all(100);
    position = Vector2(500, 500);
  }
}