import 'dart:typed_data';
import 'package:realm/realm.dart';
import '../enums.dart';
import '/create.dart';
import 'models.dart';

part 'character.realm.dart';

// ==================================
// Character Models
// ==================================

@RealmModel()
class $Character implements IName, IImage {
  @PrimaryKey()
  late ObjectId id;

  @override
  @Indexed()
  late String name;

  @override
  late Uint8List? image;

  // Preferences
  // optionalFeats, advanceByXP, encumberence, coinWeight
  late Map<String, bool> prefs;
  late List<$Source> allowedSources;

  // Physical characteristics
  // eyeColor, skingColor, hairColor, height, personalityTraits, ideals, bonds
  // flaws, faith, lifestyle, notes
  late List<$Descriptor> descriptors;

  late int genderBack = 0;
  Gender get gender => Gender.values[genderBack];
  set gender(Gender val) => genderBack = val.index;

  late $Race? race;

  // Characteristics
  late $Background? background;

  // General Stats
  late $Class? dndClass;
  late bool? multiclass = false;
  late List<$Class> multiclasses;
  late int levelBack = 1;
  int get level => levelBack;
  set level(int lev) {
    abilities?.level = lev;
    level = lev;
  }

  late int hitPoints = 1;
  late int armorClass = 0;
  int get speed => race?.speed ?? 30;
  DndSize get size => race?.size ?? DndSize.medium;
  bool get isSpellcaster => dndClass?.isSpellcaster ?? false;
  late int? passivePerception;
  late List<String> proficiencies;
  late int xp = 0;

  late int alignmentBack = 0;
  DndAlignment get alignment => DndAlignment.values[alignmentBack];
  set alignment(DndAlignment val) => alignmentBack = val.index;

  // Conditions
  late int inspiration = 0;
  late int exhaustion = 0;
  late bool encumbered = false;
  late List<$Condition> conditions;
  int get carriedWeight =>
      [for (var e in inventory) e.weight].fold(0, (val, el) => val + (el));

  int get proficiencyBonus => calcProfBonus(level);

  late $Abilities? abilities;
  late List<RealmValue> spellSlots;
  late List<$Spell> spells;
  late List<$Feature> features;
  late List<$Feature> traits;
  late List<$Equipment> inventory;
  late List<$Creature> creatures;
  late $Coins? coins;
  late List<$Language> languages;

  late List<String> resistances;

  static Character fromMock(MockCharacter c) {
    List<String> profs = [];
    profs.addAll(c.classProficiencies);
    profs.addAll(c.backgroundProficiencies);
    for (var prof in c.allOptions[String]!.values) {
      profs.addAll(prof.cast<String>());
    }

    List<RealmValue> slots = [];
    for (var slot in c.spellSlots) {
      slots.add(RealmValue.from(slot));
    }

    List<Spell> spells = [];
    for (var spell in c.allOptions[Spell]!.values) {
      spells.addAll(spell.cast<Spell>());
    }

    List<Equipment> equipment = [];
    for (var equip in c.allOptions[Equipment]!.values) {
      equipment.addAll(equip.cast<Equipment>());
    }

    List<Creature> creatures = [];
    for (var creat in c.allOptions[Creature]!.values) {
      creatures.addAll(creat.cast<Creature>());
    }

    List<Language> languages = [];
    languages.addAll(c.raceLanguages);
    for (var lang in c.allOptions[Language]!.values) {
      languages.addAll(lang.cast<Language>());
    }

    return Character(
      ObjectId(),
      c.name,
      image: c.image,
      prefs: c.prefs,
      allowedSources: c.allowedSources.value,
      descriptors: c.descriptors,
      genderBack: c.gender.index,
      race: c.race,
      dndClass: c.dndClass,
      multiclass: c.multiclass,
      hitPoints:
          c.dndClass!.hitDice!.range + c.abilities.constitution!.modifier,
      armorClass: 10 + c.abilities.dexterity!.modifier,
      proficiencies: profs,
      alignmentBack: c.alignment.index,
      abilities: c.abilities,
      spellSlots: slots,
      spells: spells,
      features: c.dndClass!.features,
      traits: c.race!.traits,
      inventory: equipment,
      creatures: creatures,
      coins: c.coins,
      languages: languages,
    );
  }

  @override
  String toString() {
    return '$name, ${dndClass ?? 'No Class'}';
  }
}

@RealmModel(ObjectType.embeddedObject)
class $Descriptor {
  late String name;
  late String type;
  late bool isInt;
  late String value;

  static List<Descriptor> createMain() {
    return [
      Descriptor('Eye Color', 'Physical', false, ''),
      Descriptor('Skin Color', 'Physical', false, ''),
      Descriptor('Hair Color', 'Physical', false, ''),
      Descriptor('Height', 'Physical', false, ''),
      Descriptor('Weight (pounds)', 'Physical', true, ''),
      Descriptor('Age (years)', 'Physical', true, ''),
      Descriptor('Personality Traits', 'Personal', false, ''),
      Descriptor('Ideals', 'Personal', false, ''),
      Descriptor('Bonds', 'Personal', false, ''),
      Descriptor('Flaws', 'Personal', false, ''),
      Descriptor('Faith', 'Personal', false, ''),
      Descriptor('Lifestyle', 'Personal', false, ''),
      Descriptor('Extra Notes', 'Personal', false, ''),
    ];
  }
}

@RealmModel()
class $Background implements IName {
  @override
  @PrimaryKey()
  late String name;

  late String desc = 'No Description';
  late String characteristicsDesc = '';
  late List<String> skillProfs;
  late List<$Option> toolProfs;
  late $Option? languages;
  late List<$Option> startingEquipment;
  late List<$Feature> features;
  late $CharacteristicList? specialty;
  late List<$CharacteristicList> suggestedCharacteristics = [];

  late $Source? source;
}

/// For use with backgrounds, as a list of suggested characteristics
/// for a user to choose from for their character during character creation.
@RealmModel(ObjectType.embeddedObject)
class $CharacteristicList {
  late List<String> values;
  late String name;
  late String desc = '';
  late int diceBack = 0;

  Dice get dice => Dice.values[diceBack];
  set dice(Dice val) => diceBack = val.index;

  @override
  String toString() {
    return name;
  }
}

// ==================================
// End Character Models
// ==================================
