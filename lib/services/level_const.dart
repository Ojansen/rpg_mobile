class LevelModel {
  final String name;
  final String spriteName;
  final String description;
  // final List<EnemyModel> enemies;
  final int enemyLevel;

  LevelModel({
    required this.name,
    required this.spriteName,
    required this.description,
    // required this.enemies,
    required this.enemyLevel,
  });
}

List<LevelModel> levels = [
  LevelModel(
    name: 'Wet',
    spriteName: 'assets/images/world/planets/Wet.png',
    description: 'A wet planet full of jungle',
    // enemies: EnemyModel.wetEnemies,
    enemyLevel: 1,
  ),
  LevelModel(
    name: 'Moon',
    spriteName: 'assets/images/world/planets/TL_moon.png',
    description: 'A tidal locked moon',
    // enemies: EnemyModel.wetEnemies,
    enemyLevel: 10,
  ),
  LevelModel(
    name: 'Dry',
    spriteName: 'assets/images/world/planets/Dry.png',
    description: 'A dry planet with harsh environment',
    // enemies: EnemyModel.wetEnemies,
    enemyLevel: 20,
  ),
  LevelModel(
    name: 'Lava',
    spriteName: 'assets/images/world/planets/Lava.png',
    description: 'A planet coverd in lava',
    // enemies: EnemyModel.wetEnemies,
    enemyLevel: 30,
  ),
  LevelModel(
    name: 'Blue Giant',
    spriteName: 'assets/images/world/planets/O_type_star.png',
    description: 'A star rich with minerals',
    // enemies: EnemyModel.wetEnemies,
    enemyLevel: 40,
  ),
];
