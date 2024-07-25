import 'package:flutter/services.dart';
import 'package:signals/signals_flutter.dart';
import 'create.dart';
import 'enums.dart';
import 'models/models.dart';

class MockCharacter implements IName {
  Uint8List image = Create.characterImage;

  @override
  String name = 'Character';

  Abilities abilities = $Abilities.create();

  AbilityChooseMode abilityMode = AbilityChooseMode.manualRolled;

  Signal<bool> raceChange = signal(false);
  Race? _race;
  Race? get race => _race;
  set race(Race? r) {
    _race = r;
    raceChange.value ? raceChange.value = false : raceChange.value = true;
  }

  Class? dndClass;
  Background? background;

  Spellcaster? spellcaster;
  final List<List<bool>> spellSlots = List.filled(9, []);

  bool multiclass = false;
  Gender gender = Gender.male;
  DndAlignment alignment = DndAlignment.neutral;
  final Map<String, bool> prefs = {
    'Optional Class Features': false,
    'Advance By XP': false,
    'Encumbrance': false,
    'Coin Weight': false,
  };
  final List<Descriptor> descriptors = $Descriptor.createDefault();

  final Map<Type, Map<Option, List>> allOptions = {
    Equipment: {},
    Spell: {},
    Language: {},
    Creature: {},
    Coins: {},
    String: {},
  };

  final List<Equipment> rollGoldInventory = [];
  final List<String> classProficiencies = [];
  final List<Language> raceLanguages = [];
  final List<String> backgroundProficiencies = [];
  final Coins rolledGoldCoins = Coins();

  ListSignal<Source> allowedSources = listSignal([]);

  bool _rollGold = false;
  bool get rollGold => _rollGold;
  set rollGold(bool val) {
    _rollGold = val;
    if (!val) {
      rollGoldInventory.clear();
      rolledGoldCoins.clear();
      for (var feat in dndClass!.features.where((feat) =>
          feat.type == FeatureTypes.addon &&
          feat.option!.type == OptionTypes.equipment &&
          !feat.option!.isProficiency)) {
        updateOption(feat.option!);
      }
      for (var equip in dndClass!.startingEquipment) {
        updateOption(equip);
      }

      for (var feat in background!.features.where((feat) =>
          feat.type == FeatureTypes.addon &&
          feat.option!.type == OptionTypes.equipment &&
          !feat.option!.isProficiency)) {
        updateOption(feat.option!);
      }
      for (var equip in background!.startingEquipment) {
        updateOption(equip);
      }
    } else {
      for (var feat in dndClass!.features.where((feat) =>
          feat.type == FeatureTypes.addon &&
          feat.option!.type == OptionTypes.equipment &&
          !feat.option!.isProficiency)) {
        updateOption(feat.option!, remove: true);
      }
      for (var equip in dndClass!.startingEquipment) {
        updateOption(equip, remove: true);
      }

      for (var feat in background!.features.where((feat) =>
          feat.type == FeatureTypes.addon &&
          feat.option!.type == OptionTypes.equipment &&
          !feat.option!.isProficiency)) {
        updateOption(feat.option!, remove: true);
      }
      for (var equip in background!.startingEquipment) {
        updateOption(equip, remove: true);
      }
    }
  }

  Coins get coins {
    if (rollGold) {
      return rolledGoldCoins;
    } else {
      Coins coins = Coins();
      for (var cList in allOptions[Coins]!.values) {
        for (var coin in cList) {
          coins.add(coin);
        }
      }
      return coins;
    }
  }

  List<Equipment> get inventory {
    if (rollGold) {
      return rollGoldInventory;
    } else {
      List<Equipment> list = [];
      for (var eList in allOptions[Equipment]!.values) {
        list.addAll(eList.cast<Equipment>());
      }
      return list;
    }
  }

  Set get readiness {
    bool setScores = false;
    for (var ab in abilities.scores.values) {
      if (ab.baseScore != 8) {
        setScores = true;
      }
    }

    if (allowedSources.value.isEmpty) {
      return {false, 'You must choose at least one source'};
    }
    if (name == 'Character') {
      return {false, 'You must choose a name'};
    }
    if (race == null) {
      return {false, 'You must choose a race'};
    }
    if (dndClass == null) {
      return {false, 'You must choose a class'};
    }
    if (!setScores) {
      return {false, 'You must set ability scores'};
    }
    if (background == null) {
      return {false, 'You must choose a background'};
    }
    if (rollGold && rolledGoldCoins.isEmpty) {
      return {false, 'You must roll for starting gold'};
    }

    for (var optType in allOptions.values) {
      for (var opt in optType.entries) {
        if (opt.key.isChoice && opt.value.length != opt.key.selections) {
          String message =
              opt.key.isProficiency ? 'proficiencies' : opt.key.type.name;
          return {false, 'You have not chosen all $message'};
        }
      }
    }

    return {true};
  }

  List getOptionList(Option opt) {
    if (opt.isProficiency) {
      return allOptions[String]?[opt] ?? [];
    } else {
      switch (opt.type) {
        case OptionTypes.equipment:
          return allOptions[Equipment]?[opt] ?? [];
        case OptionTypes.spell:
          return allOptions[Spell]?[opt] ?? [];
        case OptionTypes.language:
          return allOptions[Language]?[opt] ?? [];
        case OptionTypes.creature:
          return allOptions[Creature]?[opt] ?? [];
        case OptionTypes.skill:
          return allOptions[String]?[opt] ?? [];
        case OptionTypes.coins:
          return allOptions[Coins]?[opt] ?? [];
        default:
          return [];
      }
    }
  }

  void updateOption(Option? opt, {bool remove = false, List? selections}) {
    if (opt == null) {
      return;
    }
    List items = opt.isChoice ? (selections ?? []) : opt.values;
    if (opt.isProficiency) {
      if (remove) {
        allOptions[String]?.remove(opt);
      } else {
        var l = items.cast<String>();
        allOptions[String]?.update(opt, (value) => l, ifAbsent: () => l);
      }
    } else {
      switch (opt.type) {
        case OptionTypes.equipment:
          if (remove) {
            allOptions[Equipment]?.remove(opt);
          } else {
            var l = items.cast<Equipment>();
            allOptions[Equipment]?.update(opt, (value) => l, ifAbsent: () => l);
          }
          break;
        case OptionTypes.spell:
          if (remove) {
            allOptions[Spell]?.remove(opt);
          } else {
            var l = items.cast<Spell>();
            allOptions[Spell]?.update(opt, (value) => l, ifAbsent: () => l);
          }
          break;
        case OptionTypes.language:
          if (remove) {
            allOptions[Language]?.remove(opt);
          } else {
            var l = items.cast<Language>();
            allOptions[Language]?.update(opt, (value) => l, ifAbsent: () => l);
          }
          break;
        case OptionTypes.creature:
          if (remove) {
            allOptions[Creature]?.remove(opt);
          } else {
            var l = items.cast<Creature>();
            allOptions[Creature]?.update(opt, (value) => l, ifAbsent: () => l);
          }
          break;
        case OptionTypes.skill:
          if (remove) {
            allOptions[String]?.remove(opt);
          } else {
            var l = items.cast<String>();
            allOptions[String]?.update(opt, (value) => l, ifAbsent: () => l);
          }
          break;
        case OptionTypes.coins:
          if (remove) {
            allOptions[Coins]?.remove(opt);
          } else {
            var l = items.cast<Coins>();
            allOptions[Coins]?.update(opt, (value) => l, ifAbsent: () => l);
          }
          break;
      }
    }
  }

  void updateRace(Race? r) {
    if (r != race) {
      if (race != null) {
        raceLanguages.clear();
        abilities.scores.forEach((key, value) => value.raceBonus = 0);
        for (var trait
            in race!.traits.where((t) => t.type == FeatureTypes.addon)) {
          updateOption(trait.option!, remove: true);
        }
      }
      if (r != null) {
        raceLanguages.addAll(r.languages);
        r.abilityIncrease
            .forEach((key, value) => abilities.scores[key]?.raceBonus = value);
        for (var trait in r.traits.where((t) => t.type == FeatureTypes.addon)) {
          updateOption(trait.option!);
        }
      }
      race = r;
    }
  }

  void updateClass(Class? c) {
    if (c != dndClass) {
      if (dndClass != null) {
        classProficiencies.clear();
        updateOption(dndClass!.skillProfs, remove: true);
        updateOption(dndClass!.toolProfs, remove: true);
        for (var feat
            in dndClass!.features.where((f) => f.type == FeatureTypes.addon)) {
          updateOption(feat.option!, remove: true);
        }
        for (var equip in dndClass!.startingEquipment) {
          updateOption(equip, remove: true);
        }

        if (dndClass!.isSpellcaster) {
          updateOption(dndClass!.cantrips!, remove: true);
          updateOption(dndClass!.spellsAtLevel1!, remove: true);
        }
      }
      if (c != null) {
        classProficiencies.addAll(c.armorProfs + c.weaponProfs);
        updateOption(c.skillProfs);
        updateOption(c.toolProfs);
        for (var feat
            in c.features.where((f) => f.type == FeatureTypes.addon)) {
          updateOption(feat.option!);
        }
        for (var equip in c.startingEquipment) {
          updateOption(equip);
        }

        if (c.isSpellcaster) {
          updateOption(c.cantrips!);
          updateOption(c.spellsAtLevel1!);
        }
      }
      spellcaster = c?.spellcaster;
      dndClass = c;
    }
  }

  void updateBackground(Background? b) {
    if (b != background) {
      if (background != null) {
        backgroundProficiencies.clear();
        updateOption(background!.languages, remove: true);
        for (var feat in background!.features
            .where((f) => f.type == FeatureTypes.addon)) {
          updateOption(feat.option!, remove: true);
        }
        for (var equip in background!.startingEquipment) {
          updateOption(equip, remove: true);
        }
      }
      if (b != null) {
        backgroundProficiencies.addAll(b.skillProfs);
        updateOption(b.languages);
        for (var feat
            in b.features.where((f) => f.type == FeatureTypes.addon)) {
          updateOption(feat.option!);
        }
        for (var equip in b.startingEquipment) {
          updateOption(equip);
        }
      }
      background = b;
    }
  }
}
