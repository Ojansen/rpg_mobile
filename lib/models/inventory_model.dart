import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class InventoryModel extends ChangeNotifier {
  final int money;
  final int equippedArmour;
  final int equippedWeapon;
  final int equippedTrinket;
  final List<dynamic> ownedArmour;
  final List<dynamic> ownedWeapon;
  final List<dynamic> ownedTrinket;
  // final List<dynamic> ownedGem;
  // final Item item;

  InventoryModel({
    required this.money,
    required this.equippedArmour,
    required this.equippedWeapon,
    required this.equippedTrinket,
    required this.ownedArmour,
    required this.ownedWeapon,
    required this.ownedTrinket,
  });

  InventoryModel.fromMap(Map<String, dynamic> map):
    money = map['money'],
    equippedArmour = map['equippedArmour'],
    equippedWeapon = map['equippedWeapon'],
    equippedTrinket = map['equippedTrinket'],
    ownedArmour = map['ownedArmour'],
    ownedWeapon = map['ownedWeapon'],
    ownedTrinket = map['ownedTrinket'];

  Map<String, dynamic> startInventory = {
    'money': 0,
    'equippedArmour': 0,
    'equippedWeapon': 0,
    'equippedTrinket': 0,
    'ownedArmour': [],
    'ownedWeapon': [],
    'ownedTrinket': [],
  };


}