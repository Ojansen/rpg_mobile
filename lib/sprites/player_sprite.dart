import 'package:flame/components.dart';
import 'package:flame/geometry.dart';

class Player extends SpriteComponent with HasGameRef, HasHitboxes, Collidable {
  /// Pixels/s
  double maxSpeed = 300.0;
  Vector2 lastPos = Vector2.zero();

  final JoystickComponent joystick;

  Player(this.joystick): super(size: Vector2.all(150.0)) {
    anchor = Anchor.center;
    addHitbox(HitboxRectangle());
    collidableType = CollidableType.active;
    debugMode = true;
  }

  @override
  Future<void> onLoad() async {
    super.onLoad();
    sprite = await gameRef.loadSprite('sprites/FinnSprite.png');
    position = gameRef.size / 2;
  }

  @override
  void update(double dt) {
    lastPos.setFrom(position);
    if (!joystick.delta.isZero()) {
      position.add(joystick.relativeDelta * maxSpeed * dt);
      angle = joystick.delta.screenAngle();
    }
  }

  @override
  void onCollision(Set<Vector2> intersectionPoints, Collidable other) {
    final direction = joystick.direction.toString().replaceAll('JoystickDirection.', '');

    if (other is ScreenCollidable) {
      position = lastPos;
      print(lastPos);
      // print(joystick.relativeDelta);
    }
  }
}