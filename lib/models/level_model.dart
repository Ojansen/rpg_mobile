import 'enemy_model.dart';

class LevelModel {
  final String name;
  final String spriteName;
  final String description;
  final Map<EnemyNames, EnemyModel> enemies;
  final int enemyLevel;

  const LevelModel({
    required this.name,
    required this.spriteName,
    required this.description,
    required this.enemies,
    required this.enemyLevel,
  });

  static const Map<LevelName, LevelModel> levels = {
    LevelName.wet: LevelModel(
      name: 'wet',
      spriteName: 'world/planets/Wet',
      description: 'A wet planet full of jungle',
      enemies: EnemyModel.wetEnemies,
      enemyLevel: 1,
    ),
  };
}

enum LevelName {
  wet,
  dry,
  neutron,
  moon,
  lava,
}
