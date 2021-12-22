import 'package:arpg/controllers/enemy_controller.dart';
import 'package:arpg/games/main_game.dart';
import 'package:arpg/services/constants.dart';
import 'package:arpg/sprites/player_sprite.dart';
import 'package:arpg/sprites/vendor_sprite.dart';
import 'package:flame/components.dart';
import 'package:flame_tiled/flame_tiled.dart';
import 'package:tiled/tiled.dart';

class LevelMap extends Component with HasGameRef {
  final String? name; // to know which planet level to load
  final String? mapPathName; // 'Spaceship.tmx' BASE64UNCOMPRESSED
  final String? mapSpriteName;
  final TiledComponent? mapTiledComponent;// spritebatch png used in tiled
  final Vector2? mapSize; // Vector2(1920, 1920);
  final Vector2? mapCollidable; // map of collidable
  final EnemyController? enemies; // load enemies
  final List<Vector2>? enemySpawnPosition; // where to spawn enemies
  final PlayerSprite? player; // the player sprite
  final Vector2? playerSpawnPosition; // where to spawn the player
  final Vendor? randomVendor; // spawn a vendor
  final Vector2? vendorSpawnPosition; // where to spawn the vendor

  LevelMap({
    this.name,
    this.mapPathName,
    this.mapSpriteName,
    this.mapTiledComponent,
    this.mapSize,
    this.mapCollidable,
    this.enemies,
    this.enemySpawnPosition,
    this.player,
    this.playerSpawnPosition,
    this.randomVendor,
    this.vendorSpawnPosition,
  });

  Future<TiledComponent> getTiledMap(String mapName, Vector2 tileSize) async {
    return await TiledComponent.load(mapName, tileSize);
  }

  Component hubLevel =
    LevelMap(
      name: 'hub',
      mapPathName: 'Spaceship.tmx',
      mapSpriteName: 'tileset_sf.png',
      mapSize: Vector2(1920, 1920),
      mapCollidable: null,
      enemies: null,
      enemySpawnPosition: null,
      player: PlayerSprite(joystick: kjoystick),
      playerSpawnPosition: Vector2(1920, 1920) / 2,
      randomVendor: null,
      vendorSpawnPosition: null,
    );
}


