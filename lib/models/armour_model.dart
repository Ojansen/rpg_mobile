
class Armour {
  final String name;
  final String description;
  final String rarity;
  final bool isUnique;
  final int price;
  final String spritePath;

  const Armour({
    required this.name,
    required this.description,
    required this.rarity,
    required this.isUnique,
    required this.price,
    required this.spritePath,
  });

  static const Map<armourType, Armour> armours = {
    armourType.rags: Armour(
      name: 'rags',
      description: 'clothes',
      rarity: 'common',
      isUnique: false,
      price: 0,
      spritePath: 'spritePath',
    ),
    armourType.rouge: Armour(
      name: 'Rouge',
      description: 'Rouge armour',
      rarity: 'common',
      isUnique: false,
      price: 100,
      spritePath: 'spritePath',
    ),
    armourType.bruiser: Armour(
      name: 'Bruiser',
      description: 'Bruiser armour',
      rarity: 'common',
      isUnique: false,
      price: 100,
      spritePath: 'spritePath',
    ),
    armourType.knight: Armour(
      name: 'Knight',
      description: 'Knight armour',
      rarity: 'common',
      isUnique: false,
      price: 100,
      spritePath: 'spritePath',
    ),
    armourType.paladin: Armour(
      name: 'Paladin',
      description: 'Paladin armour',
      rarity: 'common',
      isUnique: false,
      price: 100,
      spritePath: 'spritePath',
    ),
  };
}

enum armourType {
  rags,
  rouge,
  bruiser,
  knight,
  paladin,
}
