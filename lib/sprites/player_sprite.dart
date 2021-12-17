
import 'package:arpg/models/player_model.dart';
import 'package:arpg/sprites/enemy_sprite.dart';
import 'package:flame/components.dart';
import 'package:flame/geometry.dart';
import 'package:hive/hive.dart';

class Player extends SpriteComponent with HasGameRef, HasHitboxes, Collidable {
  /// Pixels/s
  double maxSpeed = 500.0;
  Vector2 lastPos = Vector2.zero();
  final JoystickComponent joystick;
  // PlayerModel _playerModel;

  Player({
    required this.joystick,
    Sprite? sprite,
    Vector2? size,
    Vector2? position,
  }) : super(sprite: sprite, position: position, size: size) {
    collidableType = CollidableType.active;
    addHitbox(HitboxCircle());

    anchor = Anchor.center;
    debugMode = true;
  }

  Future<void> getPlayerModelBox() async {
    var box = Hive.box<PlayerModel>('PlayerModelBox');
    print(box.values);
  }

  @override
  void onMount() {
    // TODO: implement onMount
    super.onMount();

    // _playerModel = Provider.of(gameRef.buildContext!, listen: false);
  }

  @override
  Future<void> onLoad() async {
    super.onLoad();
    sprite = sprite;
    position = gameRef.size / 2;
    // add(TextComponent());
    getPlayerModelBox();
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
      gameRef.overlays.add('CombatOverlay');
      gameRef.pauseEngine();
      // gameRef.pauseEngine();
    }
  }
}