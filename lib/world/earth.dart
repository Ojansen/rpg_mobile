import 'package:flame/components.dart';

class Earth extends Component with HasGameRef {

  late SpriteComponent background;
  final size = Vector2(3200, 3200);

  Future<SpriteComponent> getMap() async {
    return background = SpriteComponent()
      ..sprite = await gameRef.loadSprite('world/maps/Earth.png')
      ..size = size;
  }

  @override
  Future<void>? onMount() async {
    super.onLoad();
    gameRef.add(background);
    // sprite = await gameRef.loadSprite('world/maps/Earth.png');
    // size = sprite!.originalSize;
  }
}
