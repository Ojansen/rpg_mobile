
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
}