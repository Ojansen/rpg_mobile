import 'package:arpg/sprites/player_sprite.dart';
import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:arpg/services/constants.dart';

class MainGame extends FlameGame with HasDraggables, HasCollidables {

  @override
  Future<void> onLoad() async {
    await super.onLoad();
    final player = Player(joystick);

    add(ScreenCollidable());
    add(player);
    add(joystick);
  }
}