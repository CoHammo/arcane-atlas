// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'equipment.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

// ignore_for_file: type=lint
class Equipment extends $Equipment
    with RealmEntity, RealmObjectBase, RealmObject {
  static var _defaultsSet = false;

  Equipment(
    String name,
    String desc,
    int typeBack,
    int weight, {
    Uint8List? image,
    Rarity? rarity,
    EquipmentSubtype? subtype,
    Coins? cost,
    int? armorClass,
    int? abilityModMax,
    int? strengthScore,
    bool? stealthDisadvantage,
    int? acAbilityModBack,
    Damage? damage,
    Iterable<String> properties = const [],
    bool isContainer = false,
    Iterable<Equipment> containerInventory = const [],
    Coins? coinsHeld,
    int? speed,
    String? speedUnit,
    int? mountCapacity,
    String? beast,
    int? sizeBack = 0,
    bool needsAttunement = false,
    Source? source,
  }) {
    if (!_defaultsSet) {
      _defaultsSet = RealmObjectBase.setDefaults<Equipment>({
        'isContainer': false,
        'sizeBack': 0,
        'needsAttunement': false,
      });
    }
    RealmObjectBase.set(this, 'name', name);
    RealmObjectBase.set(this, 'image', image);
    RealmObjectBase.set(this, 'desc', desc);
    RealmObjectBase.set(this, 'rarity', rarity);
    RealmObjectBase.set(this, 'typeBack', typeBack);
    RealmObjectBase.set(this, 'subtype', subtype);
    RealmObjectBase.set(this, 'cost', cost);
    RealmObjectBase.set(this, 'weight', weight);
    RealmObjectBase.set(this, 'armorClass', armorClass);
    RealmObjectBase.set(this, 'abilityModMax', abilityModMax);
    RealmObjectBase.set(this, 'strengthScore', strengthScore);
    RealmObjectBase.set(this, 'stealthDisadvantage', stealthDisadvantage);
    RealmObjectBase.set(this, 'acAbilityModBack', acAbilityModBack);
    RealmObjectBase.set(this, 'damage', damage);
    RealmObjectBase.set<RealmList<String>>(
        this, 'properties', RealmList<String>(properties));
    RealmObjectBase.set(this, 'isContainer', isContainer);
    RealmObjectBase.set<RealmList<Equipment>>(
        this, 'containerInventory', RealmList<Equipment>(containerInventory));
    RealmObjectBase.set(this, 'coinsHeld', coinsHeld);
    RealmObjectBase.set(this, 'speed', speed);
    RealmObjectBase.set(this, 'speedUnit', speedUnit);
    RealmObjectBase.set(this, 'mountCapacity', mountCapacity);
    RealmObjectBase.set(this, 'beast', beast);
    RealmObjectBase.set(this, 'sizeBack', sizeBack);
    RealmObjectBase.set(this, 'needsAttunement', needsAttunement);
    RealmObjectBase.set(this, 'source', source);
  }

  Equipment._();

  @override
  String get name => RealmObjectBase.get<String>(this, 'name') as String;
  @override
  set name(String value) => RealmObjectBase.set(this, 'name', value);

  @override
  Uint8List? get image =>
      RealmObjectBase.get<Uint8List>(this, 'image') as Uint8List?;
  @override
  set image(Uint8List? value) => RealmObjectBase.set(this, 'image', value);

  @override
  String get desc => RealmObjectBase.get<String>(this, 'desc') as String;
  @override
  set desc(String value) => RealmObjectBase.set(this, 'desc', value);

  @override
  Rarity? get rarity => RealmObjectBase.get<Rarity>(this, 'rarity') as Rarity?;
  @override
  set rarity(covariant Rarity? value) =>
      RealmObjectBase.set(this, 'rarity', value);

  @override
  int get typeBack => RealmObjectBase.get<int>(this, 'typeBack') as int;
  @override
  set typeBack(int value) => RealmObjectBase.set(this, 'typeBack', value);

  @override
  EquipmentSubtype? get subtype =>
      RealmObjectBase.get<EquipmentSubtype>(this, 'subtype')
          as EquipmentSubtype?;
  @override
  set subtype(covariant EquipmentSubtype? value) =>
      RealmObjectBase.set(this, 'subtype', value);

  @override
  Coins? get cost => RealmObjectBase.get<Coins>(this, 'cost') as Coins?;
  @override
  set cost(covariant Coins? value) => RealmObjectBase.set(this, 'cost', value);

  @override
  int get weight => RealmObjectBase.get<int>(this, 'weight') as int;
  @override
  set weight(int value) => RealmObjectBase.set(this, 'weight', value);

  @override
  int? get armorClass => RealmObjectBase.get<int>(this, 'armorClass') as int?;
  @override
  set armorClass(int? value) => RealmObjectBase.set(this, 'armorClass', value);

  @override
  int? get abilityModMax =>
      RealmObjectBase.get<int>(this, 'abilityModMax') as int?;
  @override
  set abilityModMax(int? value) =>
      RealmObjectBase.set(this, 'abilityModMax', value);

  @override
  int? get strengthScore =>
      RealmObjectBase.get<int>(this, 'strengthScore') as int?;
  @override
  set strengthScore(int? value) =>
      RealmObjectBase.set(this, 'strengthScore', value);

  @override
  bool? get stealthDisadvantage =>
      RealmObjectBase.get<bool>(this, 'stealthDisadvantage') as bool?;
  @override
  set stealthDisadvantage(bool? value) =>
      RealmObjectBase.set(this, 'stealthDisadvantage', value);

  @override
  int? get acAbilityModBack =>
      RealmObjectBase.get<int>(this, 'acAbilityModBack') as int?;
  @override
  set acAbilityModBack(int? value) =>
      RealmObjectBase.set(this, 'acAbilityModBack', value);

  @override
  Damage? get damage => RealmObjectBase.get<Damage>(this, 'damage') as Damage?;
  @override
  set damage(covariant Damage? value) =>
      RealmObjectBase.set(this, 'damage', value);

  @override
  RealmList<String> get properties =>
      RealmObjectBase.get<String>(this, 'properties') as RealmList<String>;
  @override
  set properties(covariant RealmList<String> value) =>
      throw RealmUnsupportedSetError();

  @override
  bool get isContainer =>
      RealmObjectBase.get<bool>(this, 'isContainer') as bool;
  @override
  set isContainer(bool value) =>
      RealmObjectBase.set(this, 'isContainer', value);

  @override
  RealmList<Equipment> get containerInventory =>
      RealmObjectBase.get<Equipment>(this, 'containerInventory')
          as RealmList<Equipment>;
  @override
  set containerInventory(covariant RealmList<Equipment> value) =>
      throw RealmUnsupportedSetError();

  @override
  Coins? get coinsHeld =>
      RealmObjectBase.get<Coins>(this, 'coinsHeld') as Coins?;
  @override
  set coinsHeld(covariant Coins? value) =>
      RealmObjectBase.set(this, 'coinsHeld', value);

  @override
  int? get speed => RealmObjectBase.get<int>(this, 'speed') as int?;
  @override
  set speed(int? value) => RealmObjectBase.set(this, 'speed', value);

  @override
  String? get speedUnit =>
      RealmObjectBase.get<String>(this, 'speedUnit') as String?;
  @override
  set speedUnit(String? value) => RealmObjectBase.set(this, 'speedUnit', value);

  @override
  int? get mountCapacity =>
      RealmObjectBase.get<int>(this, 'mountCapacity') as int?;
  @override
  set mountCapacity(int? value) =>
      RealmObjectBase.set(this, 'mountCapacity', value);

  @override
  String? get beast => RealmObjectBase.get<String>(this, 'beast') as String?;
  @override
  set beast(String? value) => RealmObjectBase.set(this, 'beast', value);

  @override
  int? get sizeBack => RealmObjectBase.get<int>(this, 'sizeBack') as int?;
  @override
  set sizeBack(int? value) => RealmObjectBase.set(this, 'sizeBack', value);

  @override
  bool get needsAttunement =>
      RealmObjectBase.get<bool>(this, 'needsAttunement') as bool;
  @override
  set needsAttunement(bool value) =>
      RealmObjectBase.set(this, 'needsAttunement', value);

  @override
  Source? get source => RealmObjectBase.get<Source>(this, 'source') as Source?;
  @override
  set source(covariant Source? value) =>
      RealmObjectBase.set(this, 'source', value);

  @override
  Stream<RealmObjectChanges<Equipment>> get changes =>
      RealmObjectBase.getChanges<Equipment>(this);

  @override
  Stream<RealmObjectChanges<Equipment>> changesFor([List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<Equipment>(this, keyPaths);

  @override
  Equipment freeze() => RealmObjectBase.freezeObject<Equipment>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'name': name.toEJson(),
      'image': image.toEJson(),
      'desc': desc.toEJson(),
      'rarity': rarity.toEJson(),
      'typeBack': typeBack.toEJson(),
      'subtype': subtype.toEJson(),
      'cost': cost.toEJson(),
      'weight': weight.toEJson(),
      'armorClass': armorClass.toEJson(),
      'abilityModMax': abilityModMax.toEJson(),
      'strengthScore': strengthScore.toEJson(),
      'stealthDisadvantage': stealthDisadvantage.toEJson(),
      'acAbilityModBack': acAbilityModBack.toEJson(),
      'damage': damage.toEJson(),
      'properties': properties.toEJson(),
      'isContainer': isContainer.toEJson(),
      'containerInventory': containerInventory.toEJson(),
      'coinsHeld': coinsHeld.toEJson(),
      'speed': speed.toEJson(),
      'speedUnit': speedUnit.toEJson(),
      'mountCapacity': mountCapacity.toEJson(),
      'beast': beast.toEJson(),
      'sizeBack': sizeBack.toEJson(),
      'needsAttunement': needsAttunement.toEJson(),
      'source': source.toEJson(),
    };
  }

  static EJsonValue _toEJson(Equipment value) => value.toEJson();
  static Equipment _fromEJson(EJsonValue ejson) {
    return switch (ejson) {
      {
        'name': EJsonValue name,
        'image': EJsonValue image,
        'desc': EJsonValue desc,
        'rarity': EJsonValue rarity,
        'typeBack': EJsonValue typeBack,
        'subtype': EJsonValue subtype,
        'cost': EJsonValue cost,
        'weight': EJsonValue weight,
        'armorClass': EJsonValue armorClass,
        'abilityModMax': EJsonValue abilityModMax,
        'strengthScore': EJsonValue strengthScore,
        'stealthDisadvantage': EJsonValue stealthDisadvantage,
        'acAbilityModBack': EJsonValue acAbilityModBack,
        'damage': EJsonValue damage,
        'properties': EJsonValue properties,
        'isContainer': EJsonValue isContainer,
        'containerInventory': EJsonValue containerInventory,
        'coinsHeld': EJsonValue coinsHeld,
        'speed': EJsonValue speed,
        'speedUnit': EJsonValue speedUnit,
        'mountCapacity': EJsonValue mountCapacity,
        'beast': EJsonValue beast,
        'sizeBack': EJsonValue sizeBack,
        'needsAttunement': EJsonValue needsAttunement,
        'source': EJsonValue source,
      } =>
        Equipment(
          fromEJson(name),
          fromEJson(desc),
          fromEJson(typeBack),
          fromEJson(weight),
          image: fromEJson(image),
          rarity: fromEJson(rarity),
          subtype: fromEJson(subtype),
          cost: fromEJson(cost),
          armorClass: fromEJson(armorClass),
          abilityModMax: fromEJson(abilityModMax),
          strengthScore: fromEJson(strengthScore),
          stealthDisadvantage: fromEJson(stealthDisadvantage),
          acAbilityModBack: fromEJson(acAbilityModBack),
          damage: fromEJson(damage),
          properties: fromEJson(properties),
          isContainer: fromEJson(isContainer),
          containerInventory: fromEJson(containerInventory),
          coinsHeld: fromEJson(coinsHeld),
          speed: fromEJson(speed),
          speedUnit: fromEJson(speedUnit),
          mountCapacity: fromEJson(mountCapacity),
          beast: fromEJson(beast),
          sizeBack: fromEJson(sizeBack),
          needsAttunement: fromEJson(needsAttunement),
          source: fromEJson(source),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(Equipment._);
    register(_toEJson, _fromEJson);
    return SchemaObject(ObjectType.realmObject, Equipment, 'Equipment', [
      SchemaProperty('name', RealmPropertyType.string, primaryKey: true),
      SchemaProperty('image', RealmPropertyType.binary, optional: true),
      SchemaProperty('desc', RealmPropertyType.string),
      SchemaProperty('rarity', RealmPropertyType.object,
          optional: true, linkTarget: 'Rarity'),
      SchemaProperty('typeBack', RealmPropertyType.int),
      SchemaProperty('subtype', RealmPropertyType.object,
          optional: true, linkTarget: 'EquipmentSubtype'),
      SchemaProperty('cost', RealmPropertyType.object,
          optional: true, linkTarget: 'Coins'),
      SchemaProperty('weight', RealmPropertyType.int),
      SchemaProperty('armorClass', RealmPropertyType.int, optional: true),
      SchemaProperty('abilityModMax', RealmPropertyType.int, optional: true),
      SchemaProperty('strengthScore', RealmPropertyType.int, optional: true),
      SchemaProperty('stealthDisadvantage', RealmPropertyType.bool,
          optional: true),
      SchemaProperty('acAbilityModBack', RealmPropertyType.int, optional: true),
      SchemaProperty('damage', RealmPropertyType.object,
          optional: true, linkTarget: 'Damage'),
      SchemaProperty('properties', RealmPropertyType.string,
          collectionType: RealmCollectionType.list),
      SchemaProperty('isContainer', RealmPropertyType.bool),
      SchemaProperty('containerInventory', RealmPropertyType.object,
          linkTarget: 'Equipment', collectionType: RealmCollectionType.list),
      SchemaProperty('coinsHeld', RealmPropertyType.object,
          optional: true, linkTarget: 'Coins'),
      SchemaProperty('speed', RealmPropertyType.int, optional: true),
      SchemaProperty('speedUnit', RealmPropertyType.string, optional: true),
      SchemaProperty('mountCapacity', RealmPropertyType.int, optional: true),
      SchemaProperty('beast', RealmPropertyType.string, optional: true),
      SchemaProperty('sizeBack', RealmPropertyType.int, optional: true),
      SchemaProperty('needsAttunement', RealmPropertyType.bool),
      SchemaProperty('source', RealmPropertyType.object,
          optional: true, linkTarget: 'Source'),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}

class Coins extends $Coins with RealmEntity, RealmObjectBase, EmbeddedObject {
  static var _defaultsSet = false;

  Coins({
    int copper = 0,
    int silver = 0,
    int electrum = 0,
    int gold = 0,
    int platinum = 0,
  }) {
    if (!_defaultsSet) {
      _defaultsSet = RealmObjectBase.setDefaults<Coins>({
        'copper': 0,
        'silver': 0,
        'electrum': 0,
        'gold': 0,
        'platinum': 0,
      });
    }
    RealmObjectBase.set(this, 'copper', copper);
    RealmObjectBase.set(this, 'silver', silver);
    RealmObjectBase.set(this, 'electrum', electrum);
    RealmObjectBase.set(this, 'gold', gold);
    RealmObjectBase.set(this, 'platinum', platinum);
  }

  Coins._();

  @override
  int get copper => RealmObjectBase.get<int>(this, 'copper') as int;
  @override
  set copper(int value) => RealmObjectBase.set(this, 'copper', value);

  @override
  int get silver => RealmObjectBase.get<int>(this, 'silver') as int;
  @override
  set silver(int value) => RealmObjectBase.set(this, 'silver', value);

  @override
  int get electrum => RealmObjectBase.get<int>(this, 'electrum') as int;
  @override
  set electrum(int value) => RealmObjectBase.set(this, 'electrum', value);

  @override
  int get gold => RealmObjectBase.get<int>(this, 'gold') as int;
  @override
  set gold(int value) => RealmObjectBase.set(this, 'gold', value);

  @override
  int get platinum => RealmObjectBase.get<int>(this, 'platinum') as int;
  @override
  set platinum(int value) => RealmObjectBase.set(this, 'platinum', value);

  @override
  Stream<RealmObjectChanges<Coins>> get changes =>
      RealmObjectBase.getChanges<Coins>(this);

  @override
  Stream<RealmObjectChanges<Coins>> changesFor([List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<Coins>(this, keyPaths);

  @override
  Coins freeze() => RealmObjectBase.freezeObject<Coins>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'copper': copper.toEJson(),
      'silver': silver.toEJson(),
      'electrum': electrum.toEJson(),
      'gold': gold.toEJson(),
      'platinum': platinum.toEJson(),
    };
  }

  static EJsonValue _toEJson(Coins value) => value.toEJson();
  static Coins _fromEJson(EJsonValue ejson) {
    return switch (ejson) {
      {
        'copper': EJsonValue copper,
        'silver': EJsonValue silver,
        'electrum': EJsonValue electrum,
        'gold': EJsonValue gold,
        'platinum': EJsonValue platinum,
      } =>
        Coins(
          copper: fromEJson(copper),
          silver: fromEJson(silver),
          electrum: fromEJson(electrum),
          gold: fromEJson(gold),
          platinum: fromEJson(platinum),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(Coins._);
    register(_toEJson, _fromEJson);
    return SchemaObject(ObjectType.embeddedObject, Coins, 'Coins', [
      SchemaProperty('copper', RealmPropertyType.int),
      SchemaProperty('silver', RealmPropertyType.int),
      SchemaProperty('electrum', RealmPropertyType.int),
      SchemaProperty('gold', RealmPropertyType.int),
      SchemaProperty('platinum', RealmPropertyType.int),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}
