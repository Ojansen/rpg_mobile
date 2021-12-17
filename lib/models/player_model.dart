
import 'package:flutter/cupertino.dart';
import 'package:hive/hive.dart';

part 'player_model.g.dart';

@HiveType(typeId: 0)
class PlayerModel extends ChangeNotifier with HiveObjectMixin {
  @HiveField(0)
  int id;

  @HiveField(1)
  String type;

  @HiveField(2)
  String name;

  @HiveField(3)
  int level;

  @HiveField(4)
  int health;

  @HiveField(5)
  int attack;

  @HiveField(6)
  int attackSpeed;

  @HiveField(7)
  int defence;

  @HiveField(8)
  int money;

  @HiveField(9)
  int equippedArmour;

  @HiveField(10)
  int equippedWeapon;

  @HiveField(11)
  int equippedTrinket;

  @HiveField(12)
  List<dynamic> ownedArmour;

  @HiveField(13)
  List<dynamic> ownedWeapon;

  @HiveField(14)
  List<dynamic> ownedTrinket;

  PlayerModel({
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
    required this.equippedTrinket,
    required this.ownedArmour,
    required this.ownedWeapon,
    required this.ownedTrinket,
  });

  PlayerModel.fromMap(Map<String, dynamic> map)
      : id = map['id'],
        type = map['type'],
        name = map['name'],
        level = map['level'],
        health = map['health'],
        attack = map['attack'],
        attackSpeed = map['attackSpeed'],
        defence = map['defence'],
        money = map['money'],
        equippedArmour = map['equippedArmour'],
        equippedWeapon = map['equippedWeapon'],
        equippedTrinket = map['equippedTrinket'],
        ownedArmour = map['ownedArmour'],
        ownedWeapon = map['ownedWeapon'],
        ownedTrinket = map['ownedTrinket'];

  static Map<String, dynamic> defaultPlayer = {
    'id': 1,
    'type': 'human',
    'name': 'Finn',
    'level': 1,
    'health': 100,
    'attack': 1,
    'attackSpeed': 1,
    'defence': 10,
    'money': 0,
    'equippedArmour': 0,
    'equippedWeapon': 0,
    'equippedTrinket': 0,
    'ownedArmour': [],
    'ownedWeapon': [],
    'ownedTrinket': [],
  };
}
