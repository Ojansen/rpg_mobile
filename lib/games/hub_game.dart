import 'package:arpg/games/main_game.dart';
import 'package:arpg/sprites/player_sprite.dart';
import 'package:arpg/services/constants.dart';

class HubGame extends MainGame {
  
  @override
  Future<void> onLoad() async {
    super.onLoad();
    add(Player(joystick));
  }
}