
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
  int experience;

  @HiveField(5)
  int health;

  @HiveField(6)
  int attack;

  @HiveField(7)
  int attackSpeed;

  @HiveField(8)
  int defence;

  @HiveField(9)
  int money;

  @HiveField(10)
  int equippedArmour;

  @HiveField(12)
  int equippedWeapon;

  @HiveField(13)
  int equippedTrinket;

  @HiveField(14)
  List<dynamic> ownedArmour;

  @HiveField(15)
  List<dynamic> ownedWeapon;

  @HiveField(16)
  List<dynamic> ownedTrinket;

  PlayerModel({
    required this.id,
    required this.type,
    required this.name,
    required this.level,
    required this.experience,
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
        experience = map['experience'],
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
    'experience': 0,
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
