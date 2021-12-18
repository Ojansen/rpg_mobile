
class Item {
  final int id;
  final String name;
  final String description;
  final String rarity;
  final int isUnique;
  final int price;
  final String spritePath;

  const Item({
    required this.id,
    required this.name,
    required this.description,
    required this.rarity,
    required this.isUnique,
    required this.price,
    required this.spritePath,
  });
}