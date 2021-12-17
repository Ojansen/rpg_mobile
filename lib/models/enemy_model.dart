import 'package:flutter/cupertino.dart';

class EnemyModel extends ChangeNotifier {
  int id;
  String type;
  String name;
  int level;
  double health;
  double attack;
  double attackSpeed;
  double defence;

  EnemyModel({
    required this.id,
    required this.type,
    required this.name,
    required this.level,
    required this.health,
    required this.attack,
    required this.attackSpeed,
    required this.defence,
  });

  EnemyModel.fromMap(Map<String, dynamic> map):
        id = map['id'],
        type = map['type'],
        name = map['name'],
        level = map['level'],
        health = map['health'],
        attack = map['attack'],
        attackSpeed = map['attackSpeed'],
        defence = map['defence'];

  static Map<String, dynamic> defaultEnemy = {
    'id': 1,
    'type': 'enemy',
    'name': 'Finn',
    'level': 2,
    'health': 100,
    'attack': 1,
    'attackSpeed': 0.5,
    'defence': 10
  };
}
