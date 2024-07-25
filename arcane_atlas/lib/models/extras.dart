import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:realm/realm.dart';
import 'package:signals/signals_flutter.dart';
import '/enums.dart';
import '/globals.dart';
import 'models.dart';

part 'extras.realm.dart';

int Function(int level) calcProfBonus =
    (level) => ((level == 0 ? 4 : level) / 4).ceil() + 1;

@RealmModel(ObjectType.embeddedObject)
class $Option {
  late String desc = '';
  late int selections = 1;
  late bool isChoice = true;
  late bool isQuery = false;
  late bool isProficiency = false;
  late List<$Spell> spells;
  late List<$Equipment> equipment;
  late List<$Language> languages;
  late List<$Creature> creatures;
  late List<String> skills;
  late $Coins? coins;
  late String? query;

  late int _type = 0;
  OptionTypes get type => OptionTypes.values[_type];
  set type(OptionTypes val) => _type = val.index;

  List<T> _getQuery<T extends RealmObject>() {
    return (query == null ? realm.all<T>() : realm.query<T>(query!)).toList();
  }

  List get values {
    List<IName> results;
    switch (type) {
      case OptionTypes.equipment:
        results = (isQuery ? _getQuery<Equipment>() : equipment);
        break;
      case OptionTypes.spell:
        results = (isQuery ? _getQuery<Spell>() : spells);
        break;
      case OptionTypes.language:
        results = (isQuery ? _getQuery<Language>() : languages);
        break;
      case OptionTypes.creature:
        results = (isQuery ? _getQuery<Creature>() : creatures);
        break;
      case OptionTypes.skill:
        return skills;
      case OptionTypes.coins:
        return [coins];
    }

    if (isProficiency) {
      return [for (var item in results) item.name];
    } else {
      return results;
    }
  }

  @override
  String toString() {
    return desc;
  }
}

@RealmModel(ObjectType.embeddedObject)
class $Modifier {
  late String desc = 'No Description';
  late $DiceRoller? dice;
  late int? modifierNum;

  late int _type = 0;
  ModifierTypes get type => ModifierTypes.values[_type];
  set type(ModifierTypes val) => _type = val.index;
}

@RealmModel(ObjectType.embeddedObject)
class $Damage {
  late $DiceRoller? dice;

  late int _type = 0;
  DamageTypes get type => DamageTypes.values[_type];
  set type(DamageTypes val) => _type = val.index;

  @override
  String toString() {
    return '$dice $type';
  }
}

@RealmModel(ObjectType.embeddedObject)
class $Action implements IName {
  @override
  late String name = 'Action';

  late List<$DiceRoller> hitDice;

  late List<int> _damageType;
  List<DamageTypes> get damageType =>
      [for (var d in _damageType) DamageTypes.values[d]];
  set damageType(List<DamageTypes> val) =>
      _damageType = [for (var d in val) d.index];

  late String description = 'No Description';
  late int toHitModifier = 0;
  late String reach = '5';
  late int numTargets = 1;
  late bool hasSaveThrow = false;
  late int? saveThrowDC;
  late bool isLegendary = false;
  late List<String> properties;

  late int? _saveThrowAbilities;
  AbilityScores? get saveThrowAbility => _saveThrowAbilities == null
      ? null
      : AbilityScores.values[_saveThrowAbilities!];
  set saveThrowAbility(AbilityScores? val) => _saveThrowAbilities = val?.index;

  @override
  String toString() {
    return name;
  }
}

@RealmModel()
class $Language implements IName {
  @override
  @PrimaryKey()
  late String name;

  late List<String> speakers;
  late String? script;
  late bool exotic = false;

  late $Source? source;

  @override
  String toString() {
    return name;
  }
}

@RealmModel()
class $Feature implements IName {
  @override
  @PrimaryKey()
  late String name;

  late int levelAvailable = 1;
  late String desc = 'No Description';
  late Map<String, bool> prerequisites;
  late $Option? option;
  late List<$Modifier> modifiers;
  late List<$Action> actions;

  late int _type = 0;
  FeatureTypes get type => FeatureTypes.values[_type];
  set type(FeatureTypes val) => _type = val.index;

  @Backlink(#features)
  late Iterable<$Class> classes;

  @Backlink(#features)
  late Iterable<$Background> backgrounds;

  late $Source? source;

  @override
  String toString() => name;
}

@RealmModel(ObjectType.embeddedObject)
class $DndTable {
  final List<String> _columns = []; // columns.length is number of columns
  final List<RealmValue> _values = []; // table.length is number of rows

  List<List> get table {
    return [
      _columns,
      for (var row in _values) [for (var v in row.asList()) v.value]
    ];
  }

  set table(List<List> rows) {
    _columns.clear();
    _values.clear();
    if (rows.isNotEmpty) {
      int length = rows[0].length;
      _columns.addAll([for (var col in rows[0]) col.toString()]);
      for (List row in rows.getRange(1, rows.length)) {
        int diff = row.length - length;
        if (diff > 0) {
          row.removeRange(row.length - diff, row.length);
        } else if (diff < 0) {
          row.addAll([for (int i = 0; i > diff; i--) null]);
        }
        _values.add(RealmValue.from(row));
      }
    }
  }

  void addRows(List<List> rows) {
    for (List row in rows) {
      int diff = row.length - _columns.length;
      if (diff > 0) {
        row.removeRange(row.length - diff, row.length);
      } else if (diff < 0) {
        row.addAll([for (int i = 0; i > diff; i--) '--']);
      }
      _values.add(RealmValue.from(row));
    }
  }

  /// Gets the row at the given row index as a map.
  Map<String, dynamic> operator [](int row) {
    if (0 <= row && row < table.length) {
      return Map.fromIterables(
          _columns, [for (var v in _values[row].asList()) v.value]);
    } else {
      return {};
    }
  }

  @override
  String toString() {
    List<List> t = table;
    String str = '[';
    for (List row in t) {
      str = '$str${row.toString()}\n';
    }
    return str.replaceRange(str.length - 1, null, ']');
  }
}

@RealmModel()
class $Source implements IName {
  @override
  @PrimaryKey()
  late String name;

  @override
  String toString() => name;
}

@RealmModel()
class $Condition implements IName {
  @override
  @PrimaryKey()
  late String name;

  late String description;

  late List<$Modifier> modifiers;
}

@RealmModel(ObjectType.embeddedObject)
class $AbilityScore {
  int get value => baseScore + raceBonus + miscBonus + abilityImprovement;
  int get modifier => ((value - 10) / 2).floor();
  int get saveThrow => modifier + saveThrowBonus + proficiencyBonus;
  int get proficiencyBonus => calcProfBonus(level);
  late int saveThrowBonus = 0;
  late int baseScore = 0;
  late int raceBonus = 0;
  late int miscBonus = 0;
  late int abilityImprovement = 0;
  late int level = 1;

  late int _type;
  AbilityScores get type => AbilityScores.values[_type];
  set type(AbilityScores val) => _type = val.index;

  @override
  String toString() {
    return type.name;
  }
}

@RealmModel(ObjectType.embeddedObject)
class $Abilities {
  late $AbilityScore? strength;
  late $AbilityScore? dexterity;
  late $AbilityScore? constitution;
  late $AbilityScore? intelligence;
  late $AbilityScore? wisdom;
  late $AbilityScore? charisma;

  Map<String, AbilityScore> get scores => {
        AbilityScores.str.shortName: strength! as AbilityScore,
        AbilityScores.dex.shortName: dexterity! as AbilityScore,
        AbilityScores.con.shortName: constitution! as AbilityScore,
        AbilityScores.int.shortName: intelligence! as AbilityScore,
        AbilityScores.wis.shortName: wisdom! as AbilityScore,
        AbilityScores.cha.shortName: charisma! as AbilityScore,
      };

  late int _level = 1;
  int get level => _level;
  set level(int lev) {
    _level = lev;
    for (var ab in scores.entries) {
      ab.value.level = lev;
    }
  }

  int get proficiencyBonus => calcProfBonus(level);

  List<$AbilityScore?> get saveThrowBonuses => [
        for (var ab
            in scores.values.where((element) => element.saveThrowBonus > 0))
          ab
      ];

  late Map<String, int> skillBonuses;

  // Strength
  int get athletics => _skill(strength, athlete, 'Athletics');

  // Dexterity
  int get acrobatics => _skill(dexterity, acrobat, 'Acrobatics');
  int get sleightOfHand => _skill(dexterity, sleight, 'Sleight of Hand');
  int get stealth => _skill(dexterity, stealthy, 'Stealth');

  // Intelligence
  int get arcana => _skill(intelligence, arcane, 'Arcana');
  int get history => _skill(intelligence, historical, 'History');
  int get investigation => _skill(intelligence, investigative, 'Investigation');
  int get nature => _skill(intelligence, natural, 'Nature');
  int get religion => _skill(intelligence, religious, 'Religtion');

  // Wisdom
  int get animalHandling => _skill(wisdom, animal, 'Animal Handling');
  int get insight => _skill(wisdom, insightful, 'Insight');
  int get medicine => _skill(wisdom, medicinal, 'Medicine');
  int get perception => _skill(wisdom, perceptive, 'Perception');
  int get survival => _skill(wisdom, survivor, 'Survival');

  // Charisma
  int get deception => _skill(charisma, deceptive, 'Deception');
  int get intimidation => _skill(charisma, intimidating, 'Intimidation');
  int get performance => _skill(charisma, performer, 'Performance');
  int get persuasion => _skill(charisma, persuasive, 'Persuasion');

  bool athlete = false;
  bool acrobat = false;
  bool sleight = false;
  bool stealthy = false;
  bool arcane = false;
  bool historical = false;
  bool investigative = false;
  bool natural = false;
  bool religious = false;
  bool animal = false;
  bool insightful = false;
  bool medicinal = false;
  bool perceptive = false;
  bool survivor = false;
  bool deceptive = false;
  bool intimidating = false;
  bool performer = false;
  bool persuasive = false;

  int _skill($AbilityScore? ab, bool proficient, String skill) {
    return (ab?.modifier ?? 0) +
        (proficient ? proficiencyBonus : 0) +
        (skillBonuses[skill] ?? 0);
  }

  List getSkills() {
    return [
      {athletics, athlete},
      {acrobatics, acrobat},
      {sleightOfHand, sleight},
      {stealth, stealthy},
      {arcana, arcane},
      {history, historical},
      {investigation, investigative},
      {nature, natural},
      {religion, religious},
      {animalHandling, animal},
      {insight, insightful},
      {medicine, medicinal},
      {perception, perceptive},
      {survival, survivor},
      {deception, deceptive},
      {intimidation, intimidating},
      {performance, performer},
      {persuasion, persuasive}
    ];
  }

  static Abilities create() {
    return Abilities(
      strength: AbilityScore(AbilityScores.str.index, baseScore: 8),
      dexterity: AbilityScore(AbilityScores.dex.index, baseScore: 8),
      constitution: AbilityScore(AbilityScores.con.index, baseScore: 8),
      intelligence: AbilityScore(AbilityScores.int.index, baseScore: 8),
      wisdom: AbilityScore(AbilityScores.wis.index, baseScore: 8),
      charisma: AbilityScore(AbilityScores.cha.index, baseScore: 8),
    );
  }

  @override
  String toString() {
    return 'Str: ${strength?.value}\nDex: ${dexterity?.value}\n'
        'Con: ${constitution?.value}\nInt: ${intelligence?.value}\n'
        'Wis: ${wisdom?.value}\nCha: ${charisma?.value}';
  }
}

@RealmModel(ObjectType.embeddedObject)
class $Spellcaster {
  late int? levelObtained = 1;
  late String desc = 'No Description';
  // Prepared Spells, Cantrips, Spell Slots, Spells Known, Ritual Casting,
  // Spellcast Focus, Spell Ability
  late Map<String, String> features;
  late String spellAbilityDesc = 'No Description';
  late bool isRitualCaster = false;
  late bool canUseFocus = false;
  late bool isInnate = false;
  late bool isPsionic = false;

  late int _spellAbility = 0; // enum
  AbilityScores get spellAbility => AbilityScores.values[_spellAbility];
  set spellAbility(AbilityScores value) => _spellAbility = value.index;

  late int _focusType = 0;
  EquipmentTypes get focusType => EquipmentTypes.values[_focusType];
  set focusType(EquipmentTypes val) => _focusType = val.index;

  late String? focusSubtype;

  @override
  String toString() {
    return desc;
  }
}

@RealmModel()
class $EquipmentSubtype implements IName {
  @override
  @PrimaryKey()
  late String name;

  @override
  String toString() {
    return name;
  }
}

@RealmModel()
class $Rarity implements IName {
  @override
  @PrimaryKey()
  late String name;

  @override
  String toString() {
    return name;
  }
}

interface class IName {
  String name = '';
}

interface class IImage {
  Uint8List? image;
}
