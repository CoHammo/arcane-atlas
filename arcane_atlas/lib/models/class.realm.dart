// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'class.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

// ignore_for_file: type=lint
class Class extends $Class with RealmEntity, RealmObjectBase, RealmObject {
  static var _defaultsSet = false;

  Class(
    String name, {
    Uint8List? image,
    Map<String, String> descriptions = const {},
    DiceRoller? hitDice,
    Iterable<String> armorProfs = const [],
    Iterable<String> weaponProfs = const [],
    Option? toolProfs,
    Option? skillProfs,
    Iterable<int> savingThrows = const [],
    Iterable<Option> startingEquipment = const [],
    DiceRoller? rolledGold,
    Spellcaster? spellcaster,
    Iterable<Spell> classSpells = const [],
    Option? cantrips,
    Option? spellsAtLevel1,
    String featureDesc = 'No Description',
    Iterable<Feature> features = const [],
    Iterable<Subclass> subclasses = const [],
    String subclassType = 'Archetypes',
    String subclassDesc = 'No Description',
    DndTable? table,
    Source? source,
  }) {
    if (!_defaultsSet) {
      _defaultsSet = RealmObjectBase.setDefaults<Class>({
        'featureDesc': 'No Description',
        'subclassType': 'Archetypes',
        'subclassDesc': 'No Description',
      });
    }
    RealmObjectBase.set(this, 'name', name);
    RealmObjectBase.set(this, 'image', image);
    RealmObjectBase.set<RealmMap<String>>(
        this, 'descriptions', RealmMap<String>(descriptions));
    RealmObjectBase.set(this, 'hitDice', hitDice);
    RealmObjectBase.set<RealmList<String>>(
        this, 'armorProfs', RealmList<String>(armorProfs));
    RealmObjectBase.set<RealmList<String>>(
        this, 'weaponProfs', RealmList<String>(weaponProfs));
    RealmObjectBase.set(this, 'toolProfs', toolProfs);
    RealmObjectBase.set(this, 'skillProfs', skillProfs);
    RealmObjectBase.set<RealmList<int>>(
        this, '_savingThrows', RealmList<int>(savingThrows));
    RealmObjectBase.set<RealmList<Option>>(
        this, 'startingEquipment', RealmList<Option>(startingEquipment));
    RealmObjectBase.set(this, 'rolledGold', rolledGold);
    RealmObjectBase.set(this, 'spellcaster', spellcaster);
    RealmObjectBase.set<RealmList<Spell>>(
        this, 'classSpells', RealmList<Spell>(classSpells));
    RealmObjectBase.set(this, 'cantrips', cantrips);
    RealmObjectBase.set(this, 'spellsAtLevel1', spellsAtLevel1);
    RealmObjectBase.set(this, 'featureDesc', featureDesc);
    RealmObjectBase.set<RealmList<Feature>>(
        this, 'features', RealmList<Feature>(features));
    RealmObjectBase.set<RealmList<Subclass>>(
        this, 'subclasses', RealmList<Subclass>(subclasses));
    RealmObjectBase.set(this, 'subclassType', subclassType);
    RealmObjectBase.set(this, 'subclassDesc', subclassDesc);
    RealmObjectBase.set(this, 'table', table);
    RealmObjectBase.set(this, 'source', source);
  }

  Class._();

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
  RealmMap<String> get descriptions =>
      RealmObjectBase.get<String>(this, 'descriptions') as RealmMap<String>;
  @override
  set descriptions(covariant RealmMap<String> value) =>
      throw RealmUnsupportedSetError();

  @override
  DiceRoller? get hitDice =>
      RealmObjectBase.get<DiceRoller>(this, 'hitDice') as DiceRoller?;
  @override
  set hitDice(covariant DiceRoller? value) =>
      RealmObjectBase.set(this, 'hitDice', value);

  @override
  RealmList<String> get armorProfs =>
      RealmObjectBase.get<String>(this, 'armorProfs') as RealmList<String>;
  @override
  set armorProfs(covariant RealmList<String> value) =>
      throw RealmUnsupportedSetError();

  @override
  RealmList<String> get weaponProfs =>
      RealmObjectBase.get<String>(this, 'weaponProfs') as RealmList<String>;
  @override
  set weaponProfs(covariant RealmList<String> value) =>
      throw RealmUnsupportedSetError();

  @override
  Option? get toolProfs =>
      RealmObjectBase.get<Option>(this, 'toolProfs') as Option?;
  @override
  set toolProfs(covariant Option? value) =>
      RealmObjectBase.set(this, 'toolProfs', value);

  @override
  Option? get skillProfs =>
      RealmObjectBase.get<Option>(this, 'skillProfs') as Option?;
  @override
  set skillProfs(covariant Option? value) =>
      RealmObjectBase.set(this, 'skillProfs', value);

  @override
  RealmList<int> get _savingThrows =>
      RealmObjectBase.get<int>(this, '_savingThrows') as RealmList<int>;
  @override
  set _savingThrows(covariant RealmList<int> value) =>
      throw RealmUnsupportedSetError();

  @override
  RealmList<Option> get startingEquipment =>
      RealmObjectBase.get<Option>(this, 'startingEquipment')
          as RealmList<Option>;
  @override
  set startingEquipment(covariant RealmList<Option> value) =>
      throw RealmUnsupportedSetError();

  @override
  DiceRoller? get rolledGold =>
      RealmObjectBase.get<DiceRoller>(this, 'rolledGold') as DiceRoller?;
  @override
  set rolledGold(covariant DiceRoller? value) =>
      RealmObjectBase.set(this, 'rolledGold', value);

  @override
  Spellcaster? get spellcaster =>
      RealmObjectBase.get<Spellcaster>(this, 'spellcaster') as Spellcaster?;
  @override
  set spellcaster(covariant Spellcaster? value) =>
      RealmObjectBase.set(this, 'spellcaster', value);

  @override
  RealmList<Spell> get classSpells =>
      RealmObjectBase.get<Spell>(this, 'classSpells') as RealmList<Spell>;
  @override
  set classSpells(covariant RealmList<Spell> value) =>
      throw RealmUnsupportedSetError();

  @override
  Option? get cantrips =>
      RealmObjectBase.get<Option>(this, 'cantrips') as Option?;
  @override
  set cantrips(covariant Option? value) =>
      RealmObjectBase.set(this, 'cantrips', value);

  @override
  Option? get spellsAtLevel1 =>
      RealmObjectBase.get<Option>(this, 'spellsAtLevel1') as Option?;
  @override
  set spellsAtLevel1(covariant Option? value) =>
      RealmObjectBase.set(this, 'spellsAtLevel1', value);

  @override
  String get featureDesc =>
      RealmObjectBase.get<String>(this, 'featureDesc') as String;
  @override
  set featureDesc(String value) =>
      RealmObjectBase.set(this, 'featureDesc', value);

  @override
  RealmList<Feature> get features =>
      RealmObjectBase.get<Feature>(this, 'features') as RealmList<Feature>;
  @override
  set features(covariant RealmList<Feature> value) =>
      throw RealmUnsupportedSetError();

  @override
  RealmList<Subclass> get subclasses =>
      RealmObjectBase.get<Subclass>(this, 'subclasses') as RealmList<Subclass>;
  @override
  set subclasses(covariant RealmList<Subclass> value) =>
      throw RealmUnsupportedSetError();

  @override
  String get subclassType =>
      RealmObjectBase.get<String>(this, 'subclassType') as String;
  @override
  set subclassType(String value) =>
      RealmObjectBase.set(this, 'subclassType', value);

  @override
  String get subclassDesc =>
      RealmObjectBase.get<String>(this, 'subclassDesc') as String;
  @override
  set subclassDesc(String value) =>
      RealmObjectBase.set(this, 'subclassDesc', value);

  @override
  DndTable? get table =>
      RealmObjectBase.get<DndTable>(this, 'table') as DndTable?;
  @override
  set table(covariant DndTable? value) =>
      RealmObjectBase.set(this, 'table', value);

  @override
  Source? get source => RealmObjectBase.get<Source>(this, 'source') as Source?;
  @override
  set source(covariant Source? value) =>
      RealmObjectBase.set(this, 'source', value);

  @override
  Stream<RealmObjectChanges<Class>> get changes =>
      RealmObjectBase.getChanges<Class>(this);

  @override
  Stream<RealmObjectChanges<Class>> changesFor([List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<Class>(this, keyPaths);

  @override
  Class freeze() => RealmObjectBase.freezeObject<Class>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'name': name.toEJson(),
      'image': image.toEJson(),
      'descriptions': descriptions.toEJson(),
      'hitDice': hitDice.toEJson(),
      'armorProfs': armorProfs.toEJson(),
      'weaponProfs': weaponProfs.toEJson(),
      'toolProfs': toolProfs.toEJson(),
      'skillProfs': skillProfs.toEJson(),
      '_savingThrows': _savingThrows.toEJson(),
      'startingEquipment': startingEquipment.toEJson(),
      'rolledGold': rolledGold.toEJson(),
      'spellcaster': spellcaster.toEJson(),
      'classSpells': classSpells.toEJson(),
      'cantrips': cantrips.toEJson(),
      'spellsAtLevel1': spellsAtLevel1.toEJson(),
      'featureDesc': featureDesc.toEJson(),
      'features': features.toEJson(),
      'subclasses': subclasses.toEJson(),
      'subclassType': subclassType.toEJson(),
      'subclassDesc': subclassDesc.toEJson(),
      'table': table.toEJson(),
      'source': source.toEJson(),
    };
  }

  static EJsonValue _toEJson(Class value) => value.toEJson();
  static Class _fromEJson(EJsonValue ejson) {
    return switch (ejson) {
      {
        'name': EJsonValue name,
        'image': EJsonValue image,
        'descriptions': EJsonValue descriptions,
        'hitDice': EJsonValue hitDice,
        'armorProfs': EJsonValue armorProfs,
        'weaponProfs': EJsonValue weaponProfs,
        'toolProfs': EJsonValue toolProfs,
        'skillProfs': EJsonValue skillProfs,
        '_savingThrows': EJsonValue _savingThrows,
        'startingEquipment': EJsonValue startingEquipment,
        'rolledGold': EJsonValue rolledGold,
        'spellcaster': EJsonValue spellcaster,
        'classSpells': EJsonValue classSpells,
        'cantrips': EJsonValue cantrips,
        'spellsAtLevel1': EJsonValue spellsAtLevel1,
        'featureDesc': EJsonValue featureDesc,
        'features': EJsonValue features,
        'subclasses': EJsonValue subclasses,
        'subclassType': EJsonValue subclassType,
        'subclassDesc': EJsonValue subclassDesc,
        'table': EJsonValue table,
        'source': EJsonValue source,
      } =>
        Class(
          fromEJson(name),
          image: fromEJson(image),
          descriptions: fromEJson(descriptions),
          hitDice: fromEJson(hitDice),
          armorProfs: fromEJson(armorProfs),
          weaponProfs: fromEJson(weaponProfs),
          toolProfs: fromEJson(toolProfs),
          skillProfs: fromEJson(skillProfs),
          savingThrows: fromEJson(_savingThrows),
          startingEquipment: fromEJson(startingEquipment),
          rolledGold: fromEJson(rolledGold),
          spellcaster: fromEJson(spellcaster),
          classSpells: fromEJson(classSpells),
          cantrips: fromEJson(cantrips),
          spellsAtLevel1: fromEJson(spellsAtLevel1),
          featureDesc: fromEJson(featureDesc),
          features: fromEJson(features),
          subclasses: fromEJson(subclasses),
          subclassType: fromEJson(subclassType),
          subclassDesc: fromEJson(subclassDesc),
          table: fromEJson(table),
          source: fromEJson(source),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(Class._);
    register(_toEJson, _fromEJson);
    return SchemaObject(ObjectType.realmObject, Class, 'Class', [
      SchemaProperty('name', RealmPropertyType.string, primaryKey: true),
      SchemaProperty('image', RealmPropertyType.binary, optional: true),
      SchemaProperty('descriptions', RealmPropertyType.string,
          collectionType: RealmCollectionType.map),
      SchemaProperty('hitDice', RealmPropertyType.object,
          optional: true, linkTarget: 'DiceRoller'),
      SchemaProperty('armorProfs', RealmPropertyType.string,
          collectionType: RealmCollectionType.list),
      SchemaProperty('weaponProfs', RealmPropertyType.string,
          collectionType: RealmCollectionType.list),
      SchemaProperty('toolProfs', RealmPropertyType.object,
          optional: true, linkTarget: 'Option'),
      SchemaProperty('skillProfs', RealmPropertyType.object,
          optional: true, linkTarget: 'Option'),
      SchemaProperty('_savingThrows', RealmPropertyType.int,
          collectionType: RealmCollectionType.list),
      SchemaProperty('startingEquipment', RealmPropertyType.object,
          linkTarget: 'Option', collectionType: RealmCollectionType.list),
      SchemaProperty('rolledGold', RealmPropertyType.object,
          optional: true, linkTarget: 'DiceRoller'),
      SchemaProperty('spellcaster', RealmPropertyType.object,
          optional: true, linkTarget: 'Spellcaster'),
      SchemaProperty('classSpells', RealmPropertyType.object,
          linkTarget: 'Spell', collectionType: RealmCollectionType.list),
      SchemaProperty('cantrips', RealmPropertyType.object,
          optional: true, linkTarget: 'Option'),
      SchemaProperty('spellsAtLevel1', RealmPropertyType.object,
          optional: true, linkTarget: 'Option'),
      SchemaProperty('featureDesc', RealmPropertyType.string),
      SchemaProperty('features', RealmPropertyType.object,
          linkTarget: 'Feature', collectionType: RealmCollectionType.list),
      SchemaProperty('subclasses', RealmPropertyType.object,
          linkTarget: 'Subclass', collectionType: RealmCollectionType.list),
      SchemaProperty('subclassType', RealmPropertyType.string),
      SchemaProperty('subclassDesc', RealmPropertyType.string),
      SchemaProperty('table', RealmPropertyType.object,
          optional: true, linkTarget: 'DndTable'),
      SchemaProperty('source', RealmPropertyType.object,
          optional: true, linkTarget: 'Source'),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}

class Subclass extends $Subclass
    with RealmEntity, RealmObjectBase, RealmObject {
  static var _defaultsSet = false;

  Subclass(
    String name, {
    Class? superclass,
    String desc = 'No Description',
    Iterable<Feature> features = const [],
    Source? source,
  }) {
    if (!_defaultsSet) {
      _defaultsSet = RealmObjectBase.setDefaults<Subclass>({
        'desc': 'No Description',
      });
    }
    RealmObjectBase.set(this, 'name', name);
    RealmObjectBase.set(this, 'superclass', superclass);
    RealmObjectBase.set(this, 'desc', desc);
    RealmObjectBase.set<RealmList<Feature>>(
        this, 'features', RealmList<Feature>(features));
    RealmObjectBase.set(this, 'source', source);
  }

  Subclass._();

  @override
  String get name => RealmObjectBase.get<String>(this, 'name') as String;
  @override
  set name(String value) => RealmObjectBase.set(this, 'name', value);

  @override
  Class? get superclass =>
      RealmObjectBase.get<Class>(this, 'superclass') as Class?;
  @override
  set superclass(covariant Class? value) =>
      RealmObjectBase.set(this, 'superclass', value);

  @override
  String get desc => RealmObjectBase.get<String>(this, 'desc') as String;
  @override
  set desc(String value) => RealmObjectBase.set(this, 'desc', value);

  @override
  RealmList<Feature> get features =>
      RealmObjectBase.get<Feature>(this, 'features') as RealmList<Feature>;
  @override
  set features(covariant RealmList<Feature> value) =>
      throw RealmUnsupportedSetError();

  @override
  Source? get source => RealmObjectBase.get<Source>(this, 'source') as Source?;
  @override
  set source(covariant Source? value) =>
      RealmObjectBase.set(this, 'source', value);

  @override
  Stream<RealmObjectChanges<Subclass>> get changes =>
      RealmObjectBase.getChanges<Subclass>(this);

  @override
  Stream<RealmObjectChanges<Subclass>> changesFor([List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<Subclass>(this, keyPaths);

  @override
  Subclass freeze() => RealmObjectBase.freezeObject<Subclass>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'name': name.toEJson(),
      'superclass': superclass.toEJson(),
      'desc': desc.toEJson(),
      'features': features.toEJson(),
      'source': source.toEJson(),
    };
  }

  static EJsonValue _toEJson(Subclass value) => value.toEJson();
  static Subclass _fromEJson(EJsonValue ejson) {
    return switch (ejson) {
      {
        'name': EJsonValue name,
        'superclass': EJsonValue superclass,
        'desc': EJsonValue desc,
        'features': EJsonValue features,
        'source': EJsonValue source,
      } =>
        Subclass(
          fromEJson(name),
          superclass: fromEJson(superclass),
          desc: fromEJson(desc),
          features: fromEJson(features),
          source: fromEJson(source),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(Subclass._);
    register(_toEJson, _fromEJson);
    return SchemaObject(ObjectType.realmObject, Subclass, 'Subclass', [
      SchemaProperty('name', RealmPropertyType.string, primaryKey: true),
      SchemaProperty('superclass', RealmPropertyType.object,
          optional: true, linkTarget: 'Class'),
      SchemaProperty('desc', RealmPropertyType.string),
      SchemaProperty('features', RealmPropertyType.object,
          linkTarget: 'Feature', collectionType: RealmCollectionType.list),
      SchemaProperty('source', RealmPropertyType.object,
          optional: true, linkTarget: 'Source'),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}
