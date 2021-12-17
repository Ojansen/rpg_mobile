import 'package:arpg/models/item_model.dart';

class Vendor {
  final int id;
  final String name;
  final String type; // what kind the vendor is: armour, weapon, unique
  final int currency; // how much the vendor has
  final List<Item>items; // what items the vendor has

  Vendor(this.id, this.name, this.type, this.currency, this.items);
}