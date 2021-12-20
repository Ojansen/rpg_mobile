import 'package:flame/components.dart';
import 'package:flame/geometry.dart';

class Vendor extends SpriteComponent with HasGameRef, HasHitboxes, Collidable {
  Vendor({
    Sprite? sprite,
    Vector2? position,
    Vector2? size,
  }) : super(sprite: sprite, position: position, size: size) {
    collidableType = CollidableType.active;
    addHitbox(HitboxCircle());
    anchor = Anchor.center;
    debugMode = true;
  }

  @override
  Future<void> onLoad() async {
    super.onLoad();
    size = Vector2(100, 100);
    position = Vector2(1920/2, 750);
    sprite = await gameRef.loadSprite('sprites/FinnSprite.png');
  }
}
