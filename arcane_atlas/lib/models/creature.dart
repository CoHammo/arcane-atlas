import 'dart:typed_data';
import 'package:realm/realm.dart';
import 'models.dart';
import '../enums.dart';

part 'creature.realm.dart';

@RealmModel()
class $Creature implements IName, IImage, IGraphable {
  @override
  @PrimaryKey()
  late String name;

  @override
  late Uint8List? image;

  late String desc = 'No Description';
  late int armorClass = 0;
  late bool hasNaturalArmor = false;
  late int speed = 30;
  late $DiceRoller? hitDice;
  late $Abilities? abilities;
  late int xpWorth = 0;
  late Map<String, int> skillBonuses;
  late int exhaustionLevel = 0;
  late List<String> vulnerabilities;
  late List<String> resistances;
  late List<String> immunities;
  late List<$Condition> conditionImmunities;
  late List<String> senses;
  late bool hasTelepathy = false;
  late int telepathyRange = 0;
  int get proficiencyBonus => calcProfBonus(challengeRating.ceil());

  late double _challengeRating = 0;
  double get challengeRating => _challengeRating;
  set challengeRating(double cr) {
    _challengeRating = cr;
    abilities?.level = cr.ceil();
  }

  late List<int> _movementModes = [];
  List<MovementModes> get movementModes =>
      [for (var m in _movementModes) MovementModes.values[m]];
  set movementModes(List<MovementModes> vals) =>
      _movementModes = [for (var m in vals) m.index];

  late int _size = 0;
  DndSize get size => DndSize.values[_size];
  set size(DndSize val) => _size = val.index;

  late int _type = 0;
  CreatureTypes get type => CreatureTypes.values[_type];
  set type(CreatureTypes val) => _type = val.index;

  late int _alignment = 0;
  DndAlignment get alignment => DndAlignment.values[_alignment];
  set alignment(DndAlignment val) => _alignment = val.index;

  late List<$Equipment> inventory;
  late List<$Feature> features;
  late List<$Action> actions;
  bool get isSpellcaster => spellcaster == null ? false : true;
  late $Spellcaster? spellcaster;
  late List<$Spell> spells;
  late List<RealmValue> spellSlots;
  late List<$Language> languages;

  late $Source? source;

  @override
  GraphStats get stats => GraphStats(
      challengeRating, armorClass.toDouble(), hitDice!.average.toDouble());

  static Creature create(String name) {
    return Creature(
      name,
      hitDice: DiceRoller(),
      abilities: $Abilities.create(),
    );
  }

  @override
  String toString() {
    return name;
  }
}
