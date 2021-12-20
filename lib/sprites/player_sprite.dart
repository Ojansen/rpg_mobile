import 'package:arpg/overlay/combat_overlay.dart';
import 'package:arpg/overlay/level_overlay.dart';
import 'package:arpg/overlay/vendor_overlay.dart';
import 'package:arpg/sprites/enemy_sprite.dart';
import 'package:arpg/sprites/teleport_sprite.dart';
import 'package:arpg/sprites/vendor_sprite.dart';
import 'package:flame/components.dart';
import 'package:flame/geometry.dart';
import 'package:flame/sprite.dart';

class Player extends SpriteAnimationComponent with HasGameRef, HasHitboxes, Collidable {
  /// Pixels/s
  double maxSpeed = 500.0;
  Vector2 lastPos = Vector2.zero();
  final JoystickComponent joystick;

  late final SpriteAnimation _runDownAnimation;
  late final SpriteAnimation _runLeftAnimation;
  late final SpriteAnimation _runUpAnimation;
  late final SpriteAnimation _runRightAnimation;
  late final SpriteAnimation _standingAnimation;

  // late PlayerModel _playerModel;
  // final Earth _world = Earth();

  Player({
    required this.joystick,
    Vector2? size,
    Vector2? position,
  }) : super(position: position, size: size) {
    collidableType = CollidableType.active;
    addHitbox(HitboxCircle());

    anchor = Anchor.center;
    debugMode = true;
  }

  @override
  Future<void> onLoad() async {
    // final spriteBatch = await SpriteBatch.load('sprites/BlackKnight.png');

    final spriteSheet = SpriteSheet(
      image: await gameRef.images.load('sprites/BlackKnight.png'),
      srcSize: Vector2(16, 16),
    );

    _runDownAnimation = spriteSheet.createAnimation(row: 0, stepTime: 0.5, to: 4);
    _runUpAnimation = spriteSheet.createAnimation(row: 1, stepTime: 0.5, to: 4);
    _runRightAnimation = spriteSheet.createAnimation(row: 2, stepTime: 0.5, to: 4);
    _runLeftAnimation = spriteSheet.createAnimation(row: 3, stepTime: 0.5, to: 4);
    _standingAnimation = spriteSheet.createAnimation(row: 0, stepTime: 0.5, to: 4);

    final spriteAnimation = SpriteAnimationComponent(
      animation: _standingAnimation,
      position: position,
      size: Vector2(64, 64),
    );

    add(spriteAnimation);

    super.onLoad();
  }

  @override
  void update(double dt) {
    super.update(dt);
    lastPos.setFrom(position);

    if (!joystick.delta.isZero()) {
      position.add(joystick.relativeDelta * maxSpeed * dt);
    } else {
      animation = _standingAnimation;
    }

    if (joystick.direction.name == 'down') {
      animation = _runDownAnimation;
    } else if (joystick.direction.name == 'up') {
      animation = _runUpAnimation;
    } else if (joystick.direction.name == 'left') {
      animation = _runLeftAnimation;
    } else if (joystick.direction.name == 'right') {
      animation = _runRightAnimation;
    }
  }

  @override
  void onCollision(Set<Vector2> intersectionPoints, Collidable other) {
    if (other is ScreenCollidable) {
      position = lastPos;
    }
    if (other is Enemy) {
      position = lastPos;
      gameRef.pauseEngine();
      gameRef.overlays.add(CombatOverlay.id);
    }
    if (other is Vendor) {
      position = lastPos;
      gameRef.pauseEngine();
      gameRef.overlays.add(VendorOverlay.id);
    }
    if (other is TeleportSprite) {
      position = lastPos;
      gameRef.overlays.add(LevelOverlay.id);
    }
  }

  void reset() {
    position = gameRef.canvasSize / 2;
  }
}
