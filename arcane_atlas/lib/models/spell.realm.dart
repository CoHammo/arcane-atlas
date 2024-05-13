// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spell.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

// ignore_for_file: type=lint
class Spell extends $Spell with RealmEntity, RealmObjectBase, RealmObject {
  static var _defaultsSet = false;

  Spell(
    String name, {
    Uint8List? image,
    int level = 0,
    String? description,
    String duration = 'instantaneous',
    String? range,
    String? attackType,
    String? damageType,
    String? material,
    String castingTime = '1 action',
    bool concentration = false,
    bool ritual = false,
    String? materials,
    String? school,
    Iterable<int> componentsBack = const [],
    bool characterBasedDamage = false,
    DiceRoller? dice,
    Iterable<Source> sources = const [],
  }) {
    if (!_defaultsSet) {
      _defaultsSet = RealmObjectBase.setDefaults<Spell>({
        'level': 0,
        'duration': 'instantaneous',
        'castingTime': '1 action',
        'concentration': false,
        'ritual': false,
        'characterBasedDamage': false,
      });
    }
    RealmObjectBase.set(this, 'name', name);
    RealmObjectBase.set(this, 'image', image);
    RealmObjectBase.set(this, 'level', level);
    RealmObjectBase.set(this, 'description', description);
    RealmObjectBase.set(this, 'duration', duration);
    RealmObjectBase.set(this, 'range', range);
    RealmObjectBase.set(this, 'attackType', attackType);
    RealmObjectBase.set(this, 'damageType', damageType);
    RealmObjectBase.set(this, 'material', material);
    RealmObjectBase.set(this, 'castingTime', castingTime);
    RealmObjectBase.set(this, 'concentration', concentration);
    RealmObjectBase.set(this, 'ritual', ritual);
    RealmObjectBase.set(this, 'materials', materials);
    RealmObjectBase.set(this, 'school', school);
    RealmObjectBase.set<RealmList<int>>(
        this, 'componentsBack', RealmList<int>(componentsBack));
    RealmObjectBase.set(this, 'characterBasedDamage', characterBasedDamage);
    RealmObjectBase.set(this, 'dice', dice);
    RealmObjectBase.set<RealmList<Source>>(
        this, 'sources', RealmList<Source>(sources));
  }

  Spell._();

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
  int get level => RealmObjectBase.get<int>(this, 'level') as int;
  @override
  set level(int value) => RealmObjectBase.set(this, 'level', value);

  @override
  String? get description =>
      RealmObjectBase.get<String>(this, 'description') as String?;
  @override
  set description(String? value) =>
      RealmObjectBase.set(this, 'description', value);

  @override
  String get duration =>
      RealmObjectBase.get<String>(this, 'duration') as String;
  @override
  set duration(String value) => RealmObjectBase.set(this, 'duration', value);

  @override
  String? get range => RealmObjectBase.get<String>(this, 'range') as String?;
  @override
  set range(String? value) => RealmObjectBase.set(this, 'range', value);

  @override
  String? get attackType =>
      RealmObjectBase.get<String>(this, 'attackType') as String?;
  @override
  set attackType(String? value) =>
      RealmObjectBase.set(this, 'attackType', value);

  @override
  String? get damageType =>
      RealmObjectBase.get<String>(this, 'damageType') as String?;
  @override
  set damageType(String? value) =>
      RealmObjectBase.set(this, 'damageType', value);

  @override
  String? get material =>
      RealmObjectBase.get<String>(this, 'material') as String?;
  @override
  set material(String? value) => RealmObjectBase.set(this, 'material', value);

  @override
  String get castingTime =>
      RealmObjectBase.get<String>(this, 'castingTime') as String;
  @override
  set castingTime(String value) =>
      RealmObjectBase.set(this, 'castingTime', value);

  @override
  bool get concentration =>
      RealmObjectBase.get<bool>(this, 'concentration') as bool;
  @override
  set concentration(bool value) =>
      RealmObjectBase.set(this, 'concentration', value);

  @override
  bool get ritual => RealmObjectBase.get<bool>(this, 'ritual') as bool;
  @override
  set ritual(bool value) => RealmObjectBase.set(this, 'ritual', value);

  @override
  String? get materials =>
      RealmObjectBase.get<String>(this, 'materials') as String?;
  @override
  set materials(String? value) => RealmObjectBase.set(this, 'materials', value);

  @override
  String? get school => RealmObjectBase.get<String>(this, 'school') as String?;
  @override
  set school(String? value) => RealmObjectBase.set(this, 'school', value);

  @override
  RealmList<int> get componentsBack =>
      RealmObjectBase.get<int>(this, 'componentsBack') as RealmList<int>;
  @override
  set componentsBack(covariant RealmList<int> value) =>
      throw RealmUnsupportedSetError();

  @override
  bool get characterBasedDamage =>
      RealmObjectBase.get<bool>(this, 'characterBasedDamage') as bool;
  @override
  set characterBasedDamage(bool value) =>
      RealmObjectBase.set(this, 'characterBasedDamage', value);

  @override
  DiceRoller? get dice =>
      RealmObjectBase.get<DiceRoller>(this, 'dice') as DiceRoller?;
  @override
  set dice(covariant DiceRoller? value) =>
      RealmObjectBase.set(this, 'dice', value);

  @override
  RealmList<Source> get sources =>
      RealmObjectBase.get<Source>(this, 'sources') as RealmList<Source>;
  @override
  set sources(covariant RealmList<Source> value) =>
      throw RealmUnsupportedSetError();

  @override
  RealmResults<Class> get classes {
    if (!isManaged) {
      throw RealmError('Using backlinks is only possible for managed objects.');
    }
    return RealmObjectBase.get<Class>(this, 'classes') as RealmResults<Class>;
  }

  @override
  set classes(covariant RealmResults<Class> value) =>
      throw RealmUnsupportedSetError();

  @override
  Stream<RealmObjectChanges<Spell>> get changes =>
      RealmObjectBase.getChanges<Spell>(this);

  @override
  Stream<RealmObjectChanges<Spell>> changesFor([List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<Spell>(this, keyPaths);

  @override
  Spell freeze() => RealmObjectBase.freezeObject<Spell>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'name': name.toEJson(),
      'image': image.toEJson(),
      'level': level.toEJson(),
      'description': description.toEJson(),
      'duration': duration.toEJson(),
      'range': range.toEJson(),
      'attackType': attackType.toEJson(),
      'damageType': damageType.toEJson(),
      'material': material.toEJson(),
      'castingTime': castingTime.toEJson(),
      'concentration': concentration.toEJson(),
      'ritual': ritual.toEJson(),
      'materials': materials.toEJson(),
      'school': school.toEJson(),
      'componentsBack': componentsBack.toEJson(),
      'characterBasedDamage': characterBasedDamage.toEJson(),
      'dice': dice.toEJson(),
      'sources': sources.toEJson(),
    };
  }

  static EJsonValue _toEJson(Spell value) => value.toEJson();
  static Spell _fromEJson(EJsonValue ejson) {
    return switch (ejson) {
      {
        'name': EJsonValue name,
        'image': EJsonValue image,
        'level': EJsonValue level,
        'description': EJsonValue description,
        'duration': EJsonValue duration,
        'range': EJsonValue range,
        'attackType': EJsonValue attackType,
        'damageType': EJsonValue damageType,
        'material': EJsonValue material,
        'castingTime': EJsonValue castingTime,
        'concentration': EJsonValue concentration,
        'ritual': EJsonValue ritual,
        'materials': EJsonValue materials,
        'school': EJsonValue school,
        'componentsBack': EJsonValue componentsBack,
        'characterBasedDamage': EJsonValue characterBasedDamage,
        'dice': EJsonValue dice,
        'sources': EJsonValue sources,
      } =>
        Spell(
          fromEJson(name),
          image: fromEJson(image),
          level: fromEJson(level),
          description: fromEJson(description),
          duration: fromEJson(duration),
          range: fromEJson(range),
          attackType: fromEJson(attackType),
          damageType: fromEJson(damageType),
          material: fromEJson(material),
          castingTime: fromEJson(castingTime),
          concentration: fromEJson(concentration),
          ritual: fromEJson(ritual),
          materials: fromEJson(materials),
          school: fromEJson(school),
          componentsBack: fromEJson(componentsBack),
          characterBasedDamage: fromEJson(characterBasedDamage),
          dice: fromEJson(dice),
          sources: fromEJson(sources),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(Spell._);
    register(_toEJson, _fromEJson);
    return SchemaObject(ObjectType.realmObject, Spell, 'Spell', [
      SchemaProperty('name', RealmPropertyType.string,
          indexType: RealmIndexType.regular),
      SchemaProperty('image', RealmPropertyType.binary, optional: true),
      SchemaProperty('level', RealmPropertyType.int),
      SchemaProperty('description', RealmPropertyType.string, optional: true),
      SchemaProperty('duration', RealmPropertyType.string),
      SchemaProperty('range', RealmPropertyType.string, optional: true),
      SchemaProperty('attackType', RealmPropertyType.string, optional: true),
      SchemaProperty('damageType', RealmPropertyType.string, optional: true),
      SchemaProperty('material', RealmPropertyType.string, optional: true),
      SchemaProperty('castingTime', RealmPropertyType.string),
      SchemaProperty('concentration', RealmPropertyType.bool),
      SchemaProperty('ritual', RealmPropertyType.bool),
      SchemaProperty('materials', RealmPropertyType.string, optional: true),
      SchemaProperty('school', RealmPropertyType.string, optional: true),
      SchemaProperty('componentsBack', RealmPropertyType.int,
          collectionType: RealmCollectionType.list),
      SchemaProperty('characterBasedDamage', RealmPropertyType.bool),
      SchemaProperty('dice', RealmPropertyType.object,
          optional: true, linkTarget: 'DiceRoller'),
      SchemaProperty('sources', RealmPropertyType.object,
          linkTarget: 'Source', collectionType: RealmCollectionType.list),
      SchemaProperty('classes', RealmPropertyType.linkingObjects,
          linkOriginProperty: 'classSpells',
          collectionType: RealmCollectionType.list,
          linkTarget: 'Class'),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}
