// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'campaign.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

// ignore_for_file: type=lint
class Campaign extends $Campaign
    with RealmEntity, RealmObjectBase, RealmObject {
  static var _defaultsSet = false;

  Campaign(
    ObjectId id, {
    String name = 'None',
    Uint8List? image,
    String? world,
    String? desc,
    Iterable<CampaignCharacter> characters = const [],
    Iterable<Encounter> encounters = const [],
    Iterable<Source> allowedSources = const [],
  }) {
    if (!_defaultsSet) {
      _defaultsSet = RealmObjectBase.setDefaults<Campaign>({
        'name': 'None',
      });
    }
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'name', name);
    RealmObjectBase.set(this, 'image', image);
    RealmObjectBase.set(this, 'world', world);
    RealmObjectBase.set(this, 'desc', desc);
    RealmObjectBase.set<RealmList<CampaignCharacter>>(
        this, 'characters', RealmList<CampaignCharacter>(characters));
    RealmObjectBase.set<RealmList<Encounter>>(
        this, 'encounters', RealmList<Encounter>(encounters));
    RealmObjectBase.set<RealmList<Source>>(
        this, 'allowedSources', RealmList<Source>(allowedSources));
  }

  Campaign._();

  @override
  ObjectId get id => RealmObjectBase.get<ObjectId>(this, 'id') as ObjectId;
  @override
  set id(ObjectId value) => RealmObjectBase.set(this, 'id', value);

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
  String? get world => RealmObjectBase.get<String>(this, 'world') as String?;
  @override
  set world(String? value) => RealmObjectBase.set(this, 'world', value);

  @override
  String? get desc => RealmObjectBase.get<String>(this, 'desc') as String?;
  @override
  set desc(String? value) => RealmObjectBase.set(this, 'desc', value);

  @override
  RealmList<CampaignCharacter> get characters =>
      RealmObjectBase.get<CampaignCharacter>(this, 'characters')
          as RealmList<CampaignCharacter>;
  @override
  set characters(covariant RealmList<CampaignCharacter> value) =>
      throw RealmUnsupportedSetError();

  @override
  RealmList<Encounter> get encounters =>
      RealmObjectBase.get<Encounter>(this, 'encounters')
          as RealmList<Encounter>;
  @override
  set encounters(covariant RealmList<Encounter> value) =>
      throw RealmUnsupportedSetError();

  @override
  RealmList<Source> get allowedSources =>
      RealmObjectBase.get<Source>(this, 'allowedSources') as RealmList<Source>;
  @override
  set allowedSources(covariant RealmList<Source> value) =>
      throw RealmUnsupportedSetError();

  @override
  Stream<RealmObjectChanges<Campaign>> get changes =>
      RealmObjectBase.getChanges<Campaign>(this);

  @override
  Stream<RealmObjectChanges<Campaign>> changesFor([List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<Campaign>(this, keyPaths);

  @override
  Campaign freeze() => RealmObjectBase.freezeObject<Campaign>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'id': id.toEJson(),
      'name': name.toEJson(),
      'image': image.toEJson(),
      'world': world.toEJson(),
      'desc': desc.toEJson(),
      'characters': characters.toEJson(),
      'encounters': encounters.toEJson(),
      'allowedSources': allowedSources.toEJson(),
    };
  }

  static EJsonValue _toEJson(Campaign value) => value.toEJson();
  static Campaign _fromEJson(EJsonValue ejson) {
    return switch (ejson) {
      {
        'id': EJsonValue id,
        'name': EJsonValue name,
        'image': EJsonValue image,
        'world': EJsonValue world,
        'desc': EJsonValue desc,
        'characters': EJsonValue characters,
        'encounters': EJsonValue encounters,
        'allowedSources': EJsonValue allowedSources,
      } =>
        Campaign(
          fromEJson(id),
          name: fromEJson(name),
          image: fromEJson(image),
          world: fromEJson(world),
          desc: fromEJson(desc),
          characters: fromEJson(characters),
          encounters: fromEJson(encounters),
          allowedSources: fromEJson(allowedSources),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(Campaign._);
    register(_toEJson, _fromEJson);
    return SchemaObject(ObjectType.realmObject, Campaign, 'Campaign', [
      SchemaProperty('id', RealmPropertyType.objectid, primaryKey: true),
      SchemaProperty('name', RealmPropertyType.string,
          indexType: RealmIndexType.regular),
      SchemaProperty('image', RealmPropertyType.binary, optional: true),
      SchemaProperty('world', RealmPropertyType.string, optional: true),
      SchemaProperty('desc', RealmPropertyType.string, optional: true),
      SchemaProperty('characters', RealmPropertyType.object,
          linkTarget: 'CampaignCharacter',
          collectionType: RealmCollectionType.list),
      SchemaProperty('encounters', RealmPropertyType.object,
          linkTarget: 'Encounter', collectionType: RealmCollectionType.list),
      SchemaProperty('allowedSources', RealmPropertyType.object,
          linkTarget: 'Source', collectionType: RealmCollectionType.list),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}

class CampaignCharacter extends $CampaignCharacter
    with RealmEntity, RealmObjectBase, EmbeddedObject {
  static var _defaultsSet = false;

  CampaignCharacter(
    String name, {
    int level = 1,
    int armorClass = 10,
    int hitPoints = 1,
    int sizeBack = 0,
    int strength = 8,
    int dexterity = 8,
    int constitution = 8,
    int intelligence = 8,
    int wisdom = 8,
    int charisma = 8,
    Class? dndClass,
    Race? race,
  }) {
    if (!_defaultsSet) {
      _defaultsSet = RealmObjectBase.setDefaults<CampaignCharacter>({
        'level': 1,
        'armorClass': 10,
        'hitPoints': 1,
        'sizeBack': 0,
        'strength': 8,
        'dexterity': 8,
        'constitution': 8,
        'intelligence': 8,
        'wisdom': 8,
        'charisma': 8,
      });
    }
    RealmObjectBase.set(this, 'name', name);
    RealmObjectBase.set(this, 'level', level);
    RealmObjectBase.set(this, 'armorClass', armorClass);
    RealmObjectBase.set(this, 'hitPoints', hitPoints);
    RealmObjectBase.set(this, 'sizeBack', sizeBack);
    RealmObjectBase.set(this, 'strength', strength);
    RealmObjectBase.set(this, 'dexterity', dexterity);
    RealmObjectBase.set(this, 'constitution', constitution);
    RealmObjectBase.set(this, 'intelligence', intelligence);
    RealmObjectBase.set(this, 'wisdom', wisdom);
    RealmObjectBase.set(this, 'charisma', charisma);
    RealmObjectBase.set(this, 'dndClass', dndClass);
    RealmObjectBase.set(this, 'race', race);
  }

  CampaignCharacter._();

  @override
  String get name => RealmObjectBase.get<String>(this, 'name') as String;
  @override
  set name(String value) => RealmObjectBase.set(this, 'name', value);

  @override
  int get level => RealmObjectBase.get<int>(this, 'level') as int;
  @override
  set level(int value) => RealmObjectBase.set(this, 'level', value);

  @override
  int get armorClass => RealmObjectBase.get<int>(this, 'armorClass') as int;
  @override
  set armorClass(int value) => RealmObjectBase.set(this, 'armorClass', value);

  @override
  int get hitPoints => RealmObjectBase.get<int>(this, 'hitPoints') as int;
  @override
  set hitPoints(int value) => RealmObjectBase.set(this, 'hitPoints', value);

  @override
  int get sizeBack => RealmObjectBase.get<int>(this, 'sizeBack') as int;
  @override
  set sizeBack(int value) => RealmObjectBase.set(this, 'sizeBack', value);

  @override
  int get strength => RealmObjectBase.get<int>(this, 'strength') as int;
  @override
  set strength(int value) => RealmObjectBase.set(this, 'strength', value);

  @override
  int get dexterity => RealmObjectBase.get<int>(this, 'dexterity') as int;
  @override
  set dexterity(int value) => RealmObjectBase.set(this, 'dexterity', value);

  @override
  int get constitution => RealmObjectBase.get<int>(this, 'constitution') as int;
  @override
  set constitution(int value) =>
      RealmObjectBase.set(this, 'constitution', value);

  @override
  int get intelligence => RealmObjectBase.get<int>(this, 'intelligence') as int;
  @override
  set intelligence(int value) =>
      RealmObjectBase.set(this, 'intelligence', value);

  @override
  int get wisdom => RealmObjectBase.get<int>(this, 'wisdom') as int;
  @override
  set wisdom(int value) => RealmObjectBase.set(this, 'wisdom', value);

  @override
  int get charisma => RealmObjectBase.get<int>(this, 'charisma') as int;
  @override
  set charisma(int value) => RealmObjectBase.set(this, 'charisma', value);

  @override
  Class? get dndClass => RealmObjectBase.get<Class>(this, 'dndClass') as Class?;
  @override
  set dndClass(covariant Class? value) =>
      RealmObjectBase.set(this, 'dndClass', value);

  @override
  Race? get race => RealmObjectBase.get<Race>(this, 'race') as Race?;
  @override
  set race(covariant Race? value) => RealmObjectBase.set(this, 'race', value);

  @override
  Stream<RealmObjectChanges<CampaignCharacter>> get changes =>
      RealmObjectBase.getChanges<CampaignCharacter>(this);

  @override
  Stream<RealmObjectChanges<CampaignCharacter>> changesFor(
          [List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<CampaignCharacter>(this, keyPaths);

  @override
  CampaignCharacter freeze() =>
      RealmObjectBase.freezeObject<CampaignCharacter>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'name': name.toEJson(),
      'level': level.toEJson(),
      'armorClass': armorClass.toEJson(),
      'hitPoints': hitPoints.toEJson(),
      'sizeBack': sizeBack.toEJson(),
      'strength': strength.toEJson(),
      'dexterity': dexterity.toEJson(),
      'constitution': constitution.toEJson(),
      'intelligence': intelligence.toEJson(),
      'wisdom': wisdom.toEJson(),
      'charisma': charisma.toEJson(),
      'dndClass': dndClass.toEJson(),
      'race': race.toEJson(),
    };
  }

  static EJsonValue _toEJson(CampaignCharacter value) => value.toEJson();
  static CampaignCharacter _fromEJson(EJsonValue ejson) {
    return switch (ejson) {
      {
        'name': EJsonValue name,
        'level': EJsonValue level,
        'armorClass': EJsonValue armorClass,
        'hitPoints': EJsonValue hitPoints,
        'sizeBack': EJsonValue sizeBack,
        'strength': EJsonValue strength,
        'dexterity': EJsonValue dexterity,
        'constitution': EJsonValue constitution,
        'intelligence': EJsonValue intelligence,
        'wisdom': EJsonValue wisdom,
        'charisma': EJsonValue charisma,
        'dndClass': EJsonValue dndClass,
        'race': EJsonValue race,
      } =>
        CampaignCharacter(
          fromEJson(name),
          level: fromEJson(level),
          armorClass: fromEJson(armorClass),
          hitPoints: fromEJson(hitPoints),
          sizeBack: fromEJson(sizeBack),
          strength: fromEJson(strength),
          dexterity: fromEJson(dexterity),
          constitution: fromEJson(constitution),
          intelligence: fromEJson(intelligence),
          wisdom: fromEJson(wisdom),
          charisma: fromEJson(charisma),
          dndClass: fromEJson(dndClass),
          race: fromEJson(race),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(CampaignCharacter._);
    register(_toEJson, _fromEJson);
    return SchemaObject(
        ObjectType.embeddedObject, CampaignCharacter, 'CampaignCharacter', [
      SchemaProperty('name', RealmPropertyType.string),
      SchemaProperty('level', RealmPropertyType.int),
      SchemaProperty('armorClass', RealmPropertyType.int),
      SchemaProperty('hitPoints', RealmPropertyType.int),
      SchemaProperty('sizeBack', RealmPropertyType.int),
      SchemaProperty('strength', RealmPropertyType.int),
      SchemaProperty('dexterity', RealmPropertyType.int),
      SchemaProperty('constitution', RealmPropertyType.int),
      SchemaProperty('intelligence', RealmPropertyType.int),
      SchemaProperty('wisdom', RealmPropertyType.int),
      SchemaProperty('charisma', RealmPropertyType.int),
      SchemaProperty('dndClass', RealmPropertyType.object,
          optional: true, linkTarget: 'Class'),
      SchemaProperty('race', RealmPropertyType.object,
          optional: true, linkTarget: 'Race'),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}
