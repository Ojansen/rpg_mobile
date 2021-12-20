import 'package:arpg/models/item_model.dart';

class VendorModel {
  final int id;
  final String name;
  final String type; // what kind the vendor is: armour, weapon, unique
  final int currency; // how much the vendor has
  final List<Item>items; // what items the vendor has

  const VendorModel({
    required this.id,
    required this.name,
    required this.type,
    required this.currency,
    required this.items,
  });
}