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
      experience: fields[4] as int,
      health: fields[5] as int,
      attack: fields[6] as int,
      attackSpeed: fields[7] as int,
      defence: fields[8] as int,
      money: fields[9] as int,
      equippedArmour: fields[10] as int,
      equippedWeapon: fields[12] as int,
      equippedTrinket: fields[13] as int,
      ownedArmour: (fields[14] as List).cast<dynamic>(),
      ownedWeapon: (fields[15] as List).cast<dynamic>(),
      ownedTrinket: (fields[16] as List).cast<dynamic>(),
    );
  }

  @override
  void write(BinaryWriter writer, PlayerModel obj) {
    writer
      ..writeByte(16)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.type)
      ..writeByte(2)
      ..write(obj.name)
      ..writeByte(3)
      ..write(obj.level)
      ..writeByte(4)
      ..write(obj.experience)
      ..writeByte(5)
      ..write(obj.health)
      ..writeByte(6)
      ..write(obj.attack)
      ..writeByte(7)
      ..write(obj.attackSpeed)
      ..writeByte(8)
      ..write(obj.defence)
      ..writeByte(9)
      ..write(obj.money)
      ..writeByte(10)
      ..write(obj.equippedArmour)
      ..writeByte(12)
      ..write(obj.equippedWeapon)
      ..writeByte(13)
      ..write(obj.equippedTrinket)
      ..writeByte(14)
      ..write(obj.ownedArmour)
      ..writeByte(15)
      ..write(obj.ownedWeapon)
      ..writeByte(16)
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
