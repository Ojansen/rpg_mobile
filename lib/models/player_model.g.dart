// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PlayerModelAdapter extends TypeAdapter<PlayerModel> {
  @override
  final int typeId = 0;

  @override
  PlayerModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PlayerModel(
      id: fields[0] as int,
      type: fields[1] as String,
      name: fields[2] as String,
      level: fields[3] as int,
      health: fields[4] as int,
      attack: fields[5] as int,
      attackSpeed: fields[6] as int,
      defence: fields[7] as int,
      money: fields[8] as int,
      equippedArmour: fields[9] as int,
      equippedWeapon: fields[10] as int,
      equippedTrinket: fields[11] as int,
      ownedArmour: (fields[12] as List).cast<dynamic>(),
      ownedWeapon: (fields[13] as List).cast<dynamic>(),
      ownedTrinket: (fields[14] as List).cast<dynamic>(),
    );
  }

  @override
  void write(BinaryWriter writer, PlayerModel obj) {
    writer
      ..writeByte(15)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.type)
      ..writeByte(2)
      ..write(obj.name)
      ..writeByte(3)
      ..write(obj.level)
      ..writeByte(4)
      ..write(obj.health)
      ..writeByte(5)
      ..write(obj.attack)
      ..writeByte(6)
      ..write(obj.attackSpeed)
      ..writeByte(7)
      ..write(obj.defence)
      ..writeByte(8)
      ..write(obj.money)
      ..writeByte(9)
      ..write(obj.equippedArmour)
      ..writeByte(10)
      ..write(obj.equippedWeapon)
      ..writeByte(11)
      ..write(obj.equippedTrinket)
      ..writeByte(12)
      ..write(obj.ownedArmour)
      ..writeByte(13)
      ..write(obj.ownedWeapon)
      ..writeByte(14)
      ..write(obj.ownedTrinket);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PlayerModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
