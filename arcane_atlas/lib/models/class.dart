import 'dart:typed_data';
import 'package:realm/realm.dart';
import 'models.dart';
import '../enums.dart';

part 'class.realm.dart';

// =================================
// Class Models
// =================================

///Represents a D&D class in the Realms database
@RealmModel()
class $Class implements IName, IImage {
  @override
  @PrimaryKey()
  late String name;

  @override
  late Uint8List? image;

  late Map<String, String> descriptions;

  // Hitpoints
  late $DiceRoller? hitDice; // HP modifier is always constitution
  int get levelUpHP => (((hitDice?.range ?? 0) / 2) + 1).toInt();

  // Proficiencies
  late List<String> armorProfs;
  late List<String> weaponProfs;
  late $Option? toolProfs;
  late $Option? skillProfs;

  late List<int> _savingThrows;
  List<AbilityScores> get savingThrows =>
      [for (var i in _savingThrows) AbilityScores.values[i]];
  set savingThrows(List<AbilityScores> values) =>
      _savingThrows = [for (var abs in values) abs.index];

  // Starting Equipment
  late List<$Option> startingEquipment;
  late $DiceRoller? rolledGold;

  bool get isSpellcaster => spellcaster == null ? false : true;
  late $Spellcaster? spellcaster;
  late List<$Spell> classSpells;
  late $Option? cantrips;
  late $Option? spellsAtLevel1;

  // Features
  late String featureDesc = 'No Description';
  late List<$Feature> features;

  // Subclasses
  late List<$Subclass> subclasses;
  late String subclassType = 'Archetypes';
  late String subclassDesc = 'No Description';

  // Character table
  late $DndTable? table;

  late $Source? source;

  @override
  String toString() {
    return name;
  }
}

// ==================================
// Subclass Model
// ==================================

@RealmModel()
class $Subclass implements IName {
  @override
  @PrimaryKey()
  late String name;

  late $Class? superclass;
  late String desc = 'No Description';
  late List<$Feature> features;

  late $Source? source;

  @override
  String toString() {
    return name;
  }
}
