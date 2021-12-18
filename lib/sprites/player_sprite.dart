
import 'package:arpg/overlay/combat_overlay.dart';
import 'package:arpg/sprites/enemy_sprite.dart';
import 'package:arpg/world/earth.dart';
import 'package:flame/components.dart';
import 'package:flame/geometry.dart';

class Player extends SpriteComponent with HasGameRef, HasHitboxes, Collidable {
  /// Pixels/s
  double maxSpeed = 200.0;
  Vector2 lastPos = Vector2.zero();
  final JoystickComponent joystick;
  // late PlayerModel _playerModel;
  final Earth _world = Earth();

  Player({
    required this.joystick,
    Sprite? sprite,
    Vector2? size,
    Vector2? position,
  }) : super(sprite: sprite, position: position, size: size) {
    collidableType = CollidableType.active;
    addHitbox(HitboxCircle());
    // size = Vector2.all(150.0);

    anchor = Anchor.center;
    debugMode = true;
  }

  @override
  Future<void> onLoad() async {
    // sprite: sprite;
    sprite = await gameRef.loadSprite('sprites/FinnSprite.png');
    super.onLoad();
    // add(SpriteComponent(
    //   sprite: await gameRef.loadSprite('sprites/FinnSprite.png'),
    //   // position: position,
    //   size: size,
    //   // anchor: anchor,
    // ));
    // position = _world.size / 2;
    // gameRef.camera.followComponent(this, worldBounds: Rect.fromLTRB(0, 0, _world.size.x, _world.size.y));
    // add(TextComponent());
    // print(_playerModel.save());
  }

  @override
  void update(double dt) {
    super.update(dt);
    lastPos.setFrom(position);

    if (!joystick.delta.isZero()) {
      position.add(joystick.relativeDelta * maxSpeed * dt);
      angle = joystick.delta.screenAngle();
    }
  }

  @override
  void onCollision(Set<Vector2> intersectionPoints, Collidable other) {
    if (other is ScreenCollidable) {
      position = lastPos;
    } else if (other is Enemy) {
      position = lastPos;
      gameRef.pauseEngine();
      // gameRef.pauseEngine();
      gameRef.overlays.add(CombatMenu.id);
    }
  }
}
