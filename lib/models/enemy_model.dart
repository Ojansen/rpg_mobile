class EnemyModel {
  final int id;
  final String type;
  final String name;
  final int level;
  final double health;
  final double attack;
  final double attackSpeed;
  final double defence;
  final double money;
  final int equippedArmour;
  final int equippedWeapon;

  const EnemyModel({
    required this.id,
    required this.type,
    required this.name,
    required this.level,
    required this.health,
    required this.attack,
    required this.attackSpeed,
    required this.defence,
    required this.money,
    required this.equippedArmour,
    required this.equippedWeapon,
  });

  static const Map<EnemyNames, EnemyModel> wetEnemies = {
    EnemyNames.human: EnemyModel(
        id: 0,
        type: 'human',
        name: 'Human',
        level: 1,
        health: 100,
        attack: 10,
        attackSpeed: 1,
        defence: 100,
        money: 100,
        equippedArmour: 0,
        equippedWeapon: 0),

    EnemyNames.exoHuman: EnemyModel(
        id: 0,
        type: 'exo human',
        name: 'Exo human',
        level: 1,
        health: 200,
        attack: 10,
        attackSpeed: 1,
        defence: 200,
        money: 200,
        equippedArmour: 0,
        equippedWeapon: 0),
  };
}

enum EnemyNames {
  human,
  exoHuman,
  android,
  robot,
  computer,
}
