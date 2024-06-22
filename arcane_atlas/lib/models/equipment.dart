import 'dart:typed_data';
import 'package:realm/realm.dart';
import 'models.dart';
import '../enums.dart';

part 'equipment.realm.dart';

// =================================
// Equipment Models
// =================================

@RealmModel()
class $Equipment implements IName, IImage {
  @override
  @PrimaryKey()
  late String name;

  @override
  late Uint8List? image;

  late String desc;
  late $Rarity? rarity;

  late int _type;
  EquipmentTypes get type => EquipmentTypes.values[_type];
  set type(EquipmentTypes val) => _type = val.index;

  late $EquipmentSubtype? subtype;

  late $Coins? cost;
  late int weight;

  // Armor
  late int? armorClass;
  late int? abilityModMax;
  late int? strengthScore;
  late bool? stealthDisadvantage;

  late int? _acAbilityMod;
  AbilityScores? get acAbilityMod =>
      _acAbilityMod == null ? null : AbilityScores.values[_acAbilityMod!];
  set acAbilityMod(AbilityScores? val) => _acAbilityMod = val?.index;

  // Weapons
  late $Damage? damage;
  late List<String> properties;

  // Adventuring Gear
  late bool isContainer = false;
  late List<$Equipment> containerInventory;
  late $Coins? coinsHeld;

  // Mounts
  late int? speed;
  late String? speedUnit;
  late int? mountCapacity;
  late String? beast; // reimplement when beasts are done

  late int? _size = 0;
  DndSize? get size => _size == null ? null : DndSize.values[_size!];
  set size(DndSize? val) => _size = val?.index;

  // Magic Items
  late bool needsAttunement = false;

  late $Source? source;

  static Equipment create({
    required String name,
    required EquipmentTypes type,
    EquipmentSubtype? subtype,
    Uint8List? image,
    String desc = 'No Description',
    Rarity? rarity,
    Coins? cost,
    int weight = 0,
    int? armorClass,
    int? abilityModMax,
    int? strengthScore,
    bool? stealthDisadvantage,
    AbilityScores? acAbilityMod,
    Damage? damage,
    List<String> properties = const [],
    bool isContainer = false,
    List<Equipment> containerInventory = const [],
    Coins? coinsHeld,
    int? speed,
    String? speedUnit,
    int? mountCapacity,
    String? beast,
    DndSize? size,
    Source? source,
  }) {
    return Equipment(
      name,
      desc,
      type.index,
      weight,
      subtype: subtype,
      rarity: rarity,
      cost: cost ?? Coins(gold: 1),
      armorClass: armorClass,
      abilityModMax: abilityModMax,
      strengthScore: strengthScore,
      stealthDisadvantage: stealthDisadvantage,
      acAbilityMod: acAbilityMod?.index,
      damage: damage,
      properties: properties,
      isContainer: isContainer,
      containerInventory: containerInventory,
      coinsHeld: coinsHeld,
      speed: speed,
      speedUnit: speedUnit,
      mountCapacity: mountCapacity,
      beast: beast,
      size: size?.index,
      source: source,
    );
  }

  @override
  String toString() {
    return name;
  }
}

@RealmModel(ObjectType.embeddedObject)
class $Coins {
  late int copper = 0;
  late int silver = 0;
  late int electrum = 0;
  late int gold = 0;
  late int platinum = 0;

  int get total =>
      (copper) +
      (silver * 10) +
      (electrum * 50) +
      (gold * 100) +
      (platinum * 1000);

  bool get isEmpty =>
      (copper + silver + electrum + gold + platinum) > 0 ? false : true;

  bool get isNotEmpty =>
      (copper + silver + electrum + gold + platinum) > 0 ? true : false;

  void clear() {
    copper = 0;
    silver = 0;
    electrum = 0;
    gold = 0;
    platinum = 0;
  }

  void add($Coins coins) {
    copper += coins.copper;
    silver += coins.silver;
    electrum += coins.electrum;
    gold += coins.gold;
    platinum += coins.platinum;

    silver += copper ~/ 10;
    copper = copper % 10;

    electrum += silver ~/ 5;
    silver = silver % 5;

    gold += electrum ~/ 2;
    electrum = electrum % 2;

    platinum += gold ~/ 10;
    gold = gold % 10;
  }

  bool subtract($Coins coins) {
    int diff = difference(coins);
    if (diff < 0) {
      return false;
    } else {
      copper = diff;

      silver = copper ~/ 10;
      copper = copper % 10;

      electrum = silver ~/ 5;
      silver = silver % 5;

      gold = electrum ~/ 2;
      electrum = electrum % 2;

      platinum = gold ~/ 10;
      gold = gold % 10;

      return true;
    }
  }

  int difference($Coins coins) {
    return total - coins.total;
  }

  @override
  String toString() {
    var coins = [
      if (platinum > 0) '$platinum pp',
      if (gold > 0) '$gold gp',
      if (electrum > 0) '$electrum ep',
      if (silver > 0) '$silver sp',
      if (copper > 0) '$copper cp'
    ].join(', ');
    return coins.isNotEmpty ? coins : '0 coins';
  }
}

// =================================
// End Equipment Models
// =================================
