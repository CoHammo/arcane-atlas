// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

// ignore_for_file: type=lint
class Character extends $Character
    with RealmEntity, RealmObjectBase, RealmObject {
  static var _defaultsSet = false;

  Character(
    ObjectId id, {
    String name = 'Character',
    Uint8List? image,
    Map<String, bool> prefs = const {},
    Iterable<Source> allowedSources = const [],
    Iterable<Descriptor> descriptors = const [],
    int gender = 0,
    Race? race,
    Background? background,
    Class? dndClass,
    bool? multiclass = false,
    Iterable<Class> multiclasses = const [],
    int level = 1,
    int hitPoints = 1,
    int armorClass = 0,
    int? passivePerception,
    Iterable<String> proficiencies = const [],
    int xp = 0,
    int alignment = 0,
    int inspiration = 0,
    int exhaustion = 0,
    bool encumbered = false,
    Iterable<Condition> conditions = const [],
    Abilities? abilities,
    Iterable<RealmValue> spellSlots = const [],
    Iterable<Spell> spells = const [],
    Iterable<Feature> features = const [],
    Iterable<Feature> traits = const [],
    Iterable<Equipment> inventory = const [],
    Iterable<Creature> creatures = const [],
    Coins? coins,
    Iterable<Language> languages = const [],
    Iterable<String> resistances = const [],
  }) {
    if (!_defaultsSet) {
      _defaultsSet = RealmObjectBase.setDefaults<Character>({
        'name': 'Character',
        '_gender': 0,
        'multiclass': false,
        '_level': 1,
        'hitPoints': 1,
        'armorClass': 0,
        'xp': 0,
        '_alignment': 0,
        'inspiration': 0,
        'exhaustion': 0,
        'encumbered': false,
      });
    }
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'name', name);
    RealmObjectBase.set(this, 'image', image);
    RealmObjectBase.set<RealmMap<bool>>(this, 'prefs', RealmMap<bool>(prefs));
    RealmObjectBase.set<RealmList<Source>>(
        this, 'allowedSources', RealmList<Source>(allowedSources));
    RealmObjectBase.set<RealmList<Descriptor>>(
        this, 'descriptors', RealmList<Descriptor>(descriptors));
    RealmObjectBase.set(this, '_gender', gender);
    RealmObjectBase.set(this, 'race', race);
    RealmObjectBase.set(this, 'background', background);
    RealmObjectBase.set(this, 'dndClass', dndClass);
    RealmObjectBase.set(this, 'multiclass', multiclass);
    RealmObjectBase.set<RealmList<Class>>(
        this, 'multiclasses', RealmList<Class>(multiclasses));
    RealmObjectBase.set(this, '_level', level);
    RealmObjectBase.set(this, 'hitPoints', hitPoints);
    RealmObjectBase.set(this, 'armorClass', armorClass);
    RealmObjectBase.set(this, 'passivePerception', passivePerception);
    RealmObjectBase.set<RealmList<String>>(
        this, 'proficiencies', RealmList<String>(proficiencies));
    RealmObjectBase.set(this, 'xp', xp);
    RealmObjectBase.set(this, '_alignment', alignment);
    RealmObjectBase.set(this, 'inspiration', inspiration);
    RealmObjectBase.set(this, 'exhaustion', exhaustion);
    RealmObjectBase.set(this, 'encumbered', encumbered);
    RealmObjectBase.set<RealmList<Condition>>(
        this, 'conditions', RealmList<Condition>(conditions));
    RealmObjectBase.set(this, 'abilities', abilities);
    RealmObjectBase.set<RealmList<RealmValue>>(
        this, 'spellSlots', RealmList<RealmValue>(spellSlots));
    RealmObjectBase.set<RealmList<Spell>>(
        this, 'spells', RealmList<Spell>(spells));
    RealmObjectBase.set<RealmList<Feature>>(
        this, 'features', RealmList<Feature>(features));
    RealmObjectBase.set<RealmList<Feature>>(
        this, 'traits', RealmList<Feature>(traits));
    RealmObjectBase.set<RealmList<Equipment>>(
        this, 'inventory', RealmList<Equipment>(inventory));
    RealmObjectBase.set<RealmList<Creature>>(
        this, 'creatures', RealmList<Creature>(creatures));
    RealmObjectBase.set(this, 'coins', coins);
    RealmObjectBase.set<RealmList<Language>>(
        this, 'languages', RealmList<Language>(languages));
    RealmObjectBase.set<RealmList<String>>(
        this, 'resistances', RealmList<String>(resistances));
  }

  Character._();

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
  RealmMap<bool> get prefs =>
      RealmObjectBase.get<bool>(this, 'prefs') as RealmMap<bool>;
  @override
  set prefs(covariant RealmMap<bool> value) => throw RealmUnsupportedSetError();

  @override
  RealmList<Source> get allowedSources =>
      RealmObjectBase.get<Source>(this, 'allowedSources') as RealmList<Source>;
  @override
  set allowedSources(covariant RealmList<Source> value) =>
      throw RealmUnsupportedSetError();

  @override
  RealmList<Descriptor> get descriptors =>
      RealmObjectBase.get<Descriptor>(this, 'descriptors')
          as RealmList<Descriptor>;
  @override
  set descriptors(covariant RealmList<Descriptor> value) =>
      throw RealmUnsupportedSetError();

  @override
  int get _gender => RealmObjectBase.get<int>(this, '_gender') as int;
  @override
  set _gender(int value) => RealmObjectBase.set(this, '_gender', value);

  @override
  Race? get race => RealmObjectBase.get<Race>(this, 'race') as Race?;
  @override
  set race(covariant Race? value) => RealmObjectBase.set(this, 'race', value);

  @override
  Background? get background =>
      RealmObjectBase.get<Background>(this, 'background') as Background?;
  @override
  set background(covariant Background? value) =>
      RealmObjectBase.set(this, 'background', value);

  @override
  Class? get dndClass => RealmObjectBase.get<Class>(this, 'dndClass') as Class?;
  @override
  set dndClass(covariant Class? value) =>
      RealmObjectBase.set(this, 'dndClass', value);

  @override
  bool? get multiclass =>
      RealmObjectBase.get<bool>(this, 'multiclass') as bool?;
  @override
  set multiclass(bool? value) => RealmObjectBase.set(this, 'multiclass', value);

  @override
  RealmList<Class> get multiclasses =>
      RealmObjectBase.get<Class>(this, 'multiclasses') as RealmList<Class>;
  @override
  set multiclasses(covariant RealmList<Class> value) =>
      throw RealmUnsupportedSetError();

  @override
  int get _level => RealmObjectBase.get<int>(this, '_level') as int;
  @override
  set _level(int value) => RealmObjectBase.set(this, '_level', value);

  @override
  int get hitPoints => RealmObjectBase.get<int>(this, 'hitPoints') as int;
  @override
  set hitPoints(int value) => RealmObjectBase.set(this, 'hitPoints', value);

  @override
  int get armorClass => RealmObjectBase.get<int>(this, 'armorClass') as int;
  @override
  set armorClass(int value) => RealmObjectBase.set(this, 'armorClass', value);

  @override
  int? get passivePerception =>
      RealmObjectBase.get<int>(this, 'passivePerception') as int?;
  @override
  set passivePerception(int? value) =>
      RealmObjectBase.set(this, 'passivePerception', value);

  @override
  RealmList<String> get proficiencies =>
      RealmObjectBase.get<String>(this, 'proficiencies') as RealmList<String>;
  @override
  set proficiencies(covariant RealmList<String> value) =>
      throw RealmUnsupportedSetError();

  @override
  int get xp => RealmObjectBase.get<int>(this, 'xp') as int;
  @override
  set xp(int value) => RealmObjectBase.set(this, 'xp', value);

  @override
  int get _alignment => RealmObjectBase.get<int>(this, '_alignment') as int;
  @override
  set _alignment(int value) => RealmObjectBase.set(this, '_alignment', value);

  @override
  int get inspiration => RealmObjectBase.get<int>(this, 'inspiration') as int;
  @override
  set inspiration(int value) => RealmObjectBase.set(this, 'inspiration', value);

  @override
  int get exhaustion => RealmObjectBase.get<int>(this, 'exhaustion') as int;
  @override
  set exhaustion(int value) => RealmObjectBase.set(this, 'exhaustion', value);

  @override
  bool get encumbered => RealmObjectBase.get<bool>(this, 'encumbered') as bool;
  @override
  set encumbered(bool value) => RealmObjectBase.set(this, 'encumbered', value);

  @override
  RealmList<Condition> get conditions =>
      RealmObjectBase.get<Condition>(this, 'conditions')
          as RealmList<Condition>;
  @override
  set conditions(covariant RealmList<Condition> value) =>
      throw RealmUnsupportedSetError();

  @override
  Abilities? get abilities =>
      RealmObjectBase.get<Abilities>(this, 'abilities') as Abilities?;
  @override
  set abilities(covariant Abilities? value) =>
      RealmObjectBase.set(this, 'abilities', value);

  @override
  RealmList<RealmValue> get spellSlots =>
      RealmObjectBase.get<RealmValue>(this, 'spellSlots')
          as RealmList<RealmValue>;
  @override
  set spellSlots(covariant RealmList<RealmValue> value) =>
      throw RealmUnsupportedSetError();

  @override
  RealmList<Spell> get spells =>
      RealmObjectBase.get<Spell>(this, 'spells') as RealmList<Spell>;
  @override
  set spells(covariant RealmList<Spell> value) =>
      throw RealmUnsupportedSetError();

  @override
  RealmList<Feature> get features =>
      RealmObjectBase.get<Feature>(this, 'features') as RealmList<Feature>;
  @override
  set features(covariant RealmList<Feature> value) =>
      throw RealmUnsupportedSetError();

  @override
  RealmList<Feature> get traits =>
      RealmObjectBase.get<Feature>(this, 'traits') as RealmList<Feature>;
  @override
  set traits(covariant RealmList<Feature> value) =>
      throw RealmUnsupportedSetError();

  @override
  RealmList<Equipment> get inventory =>
      RealmObjectBase.get<Equipment>(this, 'inventory') as RealmList<Equipment>;
  @override
  set inventory(covariant RealmList<Equipment> value) =>
      throw RealmUnsupportedSetError();

  @override
  RealmList<Creature> get creatures =>
      RealmObjectBase.get<Creature>(this, 'creatures') as RealmList<Creature>;
  @override
  set creatures(covariant RealmList<Creature> value) =>
      throw RealmUnsupportedSetError();

  @override
  Coins? get coins => RealmObjectBase.get<Coins>(this, 'coins') as Coins?;
  @override
  set coins(covariant Coins? value) =>
      RealmObjectBase.set(this, 'coins', value);

  @override
  RealmList<Language> get languages =>
      RealmObjectBase.get<Language>(this, 'languages') as RealmList<Language>;
  @override
  set languages(covariant RealmList<Language> value) =>
      throw RealmUnsupportedSetError();

  @override
  RealmList<String> get resistances =>
      RealmObjectBase.get<String>(this, 'resistances') as RealmList<String>;
  @override
  set resistances(covariant RealmList<String> value) =>
      throw RealmUnsupportedSetError();

  @override
  Stream<RealmObjectChanges<Character>> get changes =>
      RealmObjectBase.getChanges<Character>(this);

  @override
  Stream<RealmObjectChanges<Character>> changesFor([List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<Character>(this, keyPaths);

  @override
  Character freeze() => RealmObjectBase.freezeObject<Character>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'id': id.toEJson(),
      'name': name.toEJson(),
      'image': image.toEJson(),
      'prefs': prefs.toEJson(),
      'allowedSources': allowedSources.toEJson(),
      'descriptors': descriptors.toEJson(),
      '_gender': _gender.toEJson(),
      'race': race.toEJson(),
      'background': background.toEJson(),
      'dndClass': dndClass.toEJson(),
      'multiclass': multiclass.toEJson(),
      'multiclasses': multiclasses.toEJson(),
      '_level': _level.toEJson(),
      'hitPoints': hitPoints.toEJson(),
      'armorClass': armorClass.toEJson(),
      'passivePerception': passivePerception.toEJson(),
      'proficiencies': proficiencies.toEJson(),
      'xp': xp.toEJson(),
      '_alignment': _alignment.toEJson(),
      'inspiration': inspiration.toEJson(),
      'exhaustion': exhaustion.toEJson(),
      'encumbered': encumbered.toEJson(),
      'conditions': conditions.toEJson(),
      'abilities': abilities.toEJson(),
      'spellSlots': spellSlots.toEJson(),
      'spells': spells.toEJson(),
      'features': features.toEJson(),
      'traits': traits.toEJson(),
      'inventory': inventory.toEJson(),
      'creatures': creatures.toEJson(),
      'coins': coins.toEJson(),
      'languages': languages.toEJson(),
      'resistances': resistances.toEJson(),
    };
  }

  static EJsonValue _toEJson(Character value) => value.toEJson();
  static Character _fromEJson(EJsonValue ejson) {
    return switch (ejson) {
      {
        'id': EJsonValue id,
        'name': EJsonValue name,
        'image': EJsonValue image,
        'prefs': EJsonValue prefs,
        'allowedSources': EJsonValue allowedSources,
        'descriptors': EJsonValue descriptors,
        '_gender': EJsonValue _gender,
        'race': EJsonValue race,
        'background': EJsonValue background,
        'dndClass': EJsonValue dndClass,
        'multiclass': EJsonValue multiclass,
        'multiclasses': EJsonValue multiclasses,
        '_level': EJsonValue _level,
        'hitPoints': EJsonValue hitPoints,
        'armorClass': EJsonValue armorClass,
        'passivePerception': EJsonValue passivePerception,
        'proficiencies': EJsonValue proficiencies,
        'xp': EJsonValue xp,
        '_alignment': EJsonValue _alignment,
        'inspiration': EJsonValue inspiration,
        'exhaustion': EJsonValue exhaustion,
        'encumbered': EJsonValue encumbered,
        'conditions': EJsonValue conditions,
        'abilities': EJsonValue abilities,
        'spellSlots': EJsonValue spellSlots,
        'spells': EJsonValue spells,
        'features': EJsonValue features,
        'traits': EJsonValue traits,
        'inventory': EJsonValue inventory,
        'creatures': EJsonValue creatures,
        'coins': EJsonValue coins,
        'languages': EJsonValue languages,
        'resistances': EJsonValue resistances,
      } =>
        Character(
          fromEJson(id),
          name: fromEJson(name),
          image: fromEJson(image),
          prefs: fromEJson(prefs),
          allowedSources: fromEJson(allowedSources),
          descriptors: fromEJson(descriptors),
          gender: fromEJson(_gender),
          race: fromEJson(race),
          background: fromEJson(background),
          dndClass: fromEJson(dndClass),
          multiclass: fromEJson(multiclass),
          multiclasses: fromEJson(multiclasses),
          level: fromEJson(_level),
          hitPoints: fromEJson(hitPoints),
          armorClass: fromEJson(armorClass),
          passivePerception: fromEJson(passivePerception),
          proficiencies: fromEJson(proficiencies),
          xp: fromEJson(xp),
          alignment: fromEJson(_alignment),
          inspiration: fromEJson(inspiration),
          exhaustion: fromEJson(exhaustion),
          encumbered: fromEJson(encumbered),
          conditions: fromEJson(conditions),
          abilities: fromEJson(abilities),
          spellSlots: fromEJson(spellSlots),
          spells: fromEJson(spells),
          features: fromEJson(features),
          traits: fromEJson(traits),
          inventory: fromEJson(inventory),
          creatures: fromEJson(creatures),
          coins: fromEJson(coins),
          languages: fromEJson(languages),
          resistances: fromEJson(resistances),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(Character._);
    register(_toEJson, _fromEJson);
    return SchemaObject(ObjectType.realmObject, Character, 'Character', [
      SchemaProperty('id', RealmPropertyType.objectid, primaryKey: true),
      SchemaProperty('name', RealmPropertyType.string,
          indexType: RealmIndexType.regular),
      SchemaProperty('image', RealmPropertyType.binary, optional: true),
      SchemaProperty('prefs', RealmPropertyType.bool,
          collectionType: RealmCollectionType.map),
      SchemaProperty('allowedSources', RealmPropertyType.object,
          linkTarget: 'Source', collectionType: RealmCollectionType.list),
      SchemaProperty('descriptors', RealmPropertyType.object,
          linkTarget: 'Descriptor', collectionType: RealmCollectionType.list),
      SchemaProperty('_gender', RealmPropertyType.int),
      SchemaProperty('race', RealmPropertyType.object,
          optional: true, linkTarget: 'Race'),
      SchemaProperty('background', RealmPropertyType.object,
          optional: true, linkTarget: 'Background'),
      SchemaProperty('dndClass', RealmPropertyType.object,
          optional: true, linkTarget: 'Class'),
      SchemaProperty('multiclass', RealmPropertyType.bool, optional: true),
      SchemaProperty('multiclasses', RealmPropertyType.object,
          linkTarget: 'Class', collectionType: RealmCollectionType.list),
      SchemaProperty('_level', RealmPropertyType.int),
      SchemaProperty('hitPoints', RealmPropertyType.int),
      SchemaProperty('armorClass', RealmPropertyType.int),
      SchemaProperty('passivePerception', RealmPropertyType.int,
          optional: true),
      SchemaProperty('proficiencies', RealmPropertyType.string,
          collectionType: RealmCollectionType.list),
      SchemaProperty('xp', RealmPropertyType.int),
      SchemaProperty('_alignment', RealmPropertyType.int),
      SchemaProperty('inspiration', RealmPropertyType.int),
      SchemaProperty('exhaustion', RealmPropertyType.int),
      SchemaProperty('encumbered', RealmPropertyType.bool),
      SchemaProperty('conditions', RealmPropertyType.object,
          linkTarget: 'Condition', collectionType: RealmCollectionType.list),
      SchemaProperty('abilities', RealmPropertyType.object,
          optional: true, linkTarget: 'Abilities'),
      SchemaProperty('spellSlots', RealmPropertyType.mixed,
          optional: true, collectionType: RealmCollectionType.list),
      SchemaProperty('spells', RealmPropertyType.object,
          linkTarget: 'Spell', collectionType: RealmCollectionType.list),
      SchemaProperty('features', RealmPropertyType.object,
          linkTarget: 'Feature', collectionType: RealmCollectionType.list),
      SchemaProperty('traits', RealmPropertyType.object,
          linkTarget: 'Feature', collectionType: RealmCollectionType.list),
      SchemaProperty('inventory', RealmPropertyType.object,
          linkTarget: 'Equipment', collectionType: RealmCollectionType.list),
      SchemaProperty('creatures', RealmPropertyType.object,
          linkTarget: 'Creature', collectionType: RealmCollectionType.list),
      SchemaProperty('coins', RealmPropertyType.object,
          optional: true, linkTarget: 'Coins'),
      SchemaProperty('languages', RealmPropertyType.object,
          linkTarget: 'Language', collectionType: RealmCollectionType.list),
      SchemaProperty('resistances', RealmPropertyType.string,
          collectionType: RealmCollectionType.list),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}

class Descriptor extends $Descriptor
    with RealmEntity, RealmObjectBase, EmbeddedObject {
  Descriptor(
    String name,
    bool isInt,
    String value,
    int _type,
  ) {
    RealmObjectBase.set(this, 'name', name);
    RealmObjectBase.set(this, 'isInt', isInt);
    RealmObjectBase.set(this, 'value', value);
    RealmObjectBase.set(this, '_type', _type);
  }

  Descriptor._();

  @override
  String get name => RealmObjectBase.get<String>(this, 'name') as String;
  @override
  set name(String value) => RealmObjectBase.set(this, 'name', value);

  @override
  bool get isInt => RealmObjectBase.get<bool>(this, 'isInt') as bool;
  @override
  set isInt(bool value) => RealmObjectBase.set(this, 'isInt', value);

  @override
  String get value => RealmObjectBase.get<String>(this, 'value') as String;
  @override
  set value(String value) => RealmObjectBase.set(this, 'value', value);

  @override
  int get _type => RealmObjectBase.get<int>(this, '_type') as int;
  @override
  set _type(int value) => RealmObjectBase.set(this, '_type', value);

  @override
  Stream<RealmObjectChanges<Descriptor>> get changes =>
      RealmObjectBase.getChanges<Descriptor>(this);

  @override
  Stream<RealmObjectChanges<Descriptor>> changesFor([List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<Descriptor>(this, keyPaths);

  @override
  Descriptor freeze() => RealmObjectBase.freezeObject<Descriptor>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'name': name.toEJson(),
      'isInt': isInt.toEJson(),
      'value': value.toEJson(),
      '_type': _type.toEJson(),
    };
  }

  static EJsonValue _toEJson(Descriptor value) => value.toEJson();
  static Descriptor _fromEJson(EJsonValue ejson) {
    return switch (ejson) {
      {
        'name': EJsonValue name,
        'isInt': EJsonValue isInt,
        'value': EJsonValue value,
        '_type': EJsonValue _type,
      } =>
        Descriptor(
          fromEJson(name),
          fromEJson(isInt),
          fromEJson(value),
          fromEJson(_type),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(Descriptor._);
    register(_toEJson, _fromEJson);
    return SchemaObject(ObjectType.embeddedObject, Descriptor, 'Descriptor', [
      SchemaProperty('name', RealmPropertyType.string),
      SchemaProperty('isInt', RealmPropertyType.bool),
      SchemaProperty('value', RealmPropertyType.string),
      SchemaProperty('_type', RealmPropertyType.int),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}

class Background extends $Background
    with RealmEntity, RealmObjectBase, RealmObject {
  static var _defaultsSet = false;

  Background(
    String name, {
    String desc = 'No Description',
    String characteristicsDesc = '',
    Iterable<String> skillProfs = const [],
    Iterable<Option> toolProfs = const [],
    Option? languages,
    Iterable<Option> startingEquipment = const [],
    Iterable<Feature> features = const [],
    CharacteristicList? specialty,
    Iterable<CharacteristicList> suggestedCharacteristics = const [],
    Source? source,
  }) {
    if (!_defaultsSet) {
      _defaultsSet = RealmObjectBase.setDefaults<Background>({
        'desc': 'No Description',
        'characteristicsDesc': '',
      });
    }
    RealmObjectBase.set(this, 'name', name);
    RealmObjectBase.set(this, 'desc', desc);
    RealmObjectBase.set(this, 'characteristicsDesc', characteristicsDesc);
    RealmObjectBase.set<RealmList<String>>(
        this, 'skillProfs', RealmList<String>(skillProfs));
    RealmObjectBase.set<RealmList<Option>>(
        this, 'toolProfs', RealmList<Option>(toolProfs));
    RealmObjectBase.set(this, 'languages', languages);
    RealmObjectBase.set<RealmList<Option>>(
        this, 'startingEquipment', RealmList<Option>(startingEquipment));
    RealmObjectBase.set<RealmList<Feature>>(
        this, 'features', RealmList<Feature>(features));
    RealmObjectBase.set(this, 'specialty', specialty);
    RealmObjectBase.set<RealmList<CharacteristicList>>(
        this,
        'suggestedCharacteristics',
        RealmList<CharacteristicList>(suggestedCharacteristics));
    RealmObjectBase.set(this, 'source', source);
  }

  Background._();

  @override
  String get name => RealmObjectBase.get<String>(this, 'name') as String;
  @override
  set name(String value) => RealmObjectBase.set(this, 'name', value);

  @override
  String get desc => RealmObjectBase.get<String>(this, 'desc') as String;
  @override
  set desc(String value) => RealmObjectBase.set(this, 'desc', value);

  @override
  String get characteristicsDesc =>
      RealmObjectBase.get<String>(this, 'characteristicsDesc') as String;
  @override
  set characteristicsDesc(String value) =>
      RealmObjectBase.set(this, 'characteristicsDesc', value);

  @override
  RealmList<String> get skillProfs =>
      RealmObjectBase.get<String>(this, 'skillProfs') as RealmList<String>;
  @override
  set skillProfs(covariant RealmList<String> value) =>
      throw RealmUnsupportedSetError();

  @override
  RealmList<Option> get toolProfs =>
      RealmObjectBase.get<Option>(this, 'toolProfs') as RealmList<Option>;
  @override
  set toolProfs(covariant RealmList<Option> value) =>
      throw RealmUnsupportedSetError();

  @override
  Option? get languages =>
      RealmObjectBase.get<Option>(this, 'languages') as Option?;
  @override
  set languages(covariant Option? value) =>
      RealmObjectBase.set(this, 'languages', value);

  @override
  RealmList<Option> get startingEquipment =>
      RealmObjectBase.get<Option>(this, 'startingEquipment')
          as RealmList<Option>;
  @override
  set startingEquipment(covariant RealmList<Option> value) =>
      throw RealmUnsupportedSetError();

  @override
  RealmList<Feature> get features =>
      RealmObjectBase.get<Feature>(this, 'features') as RealmList<Feature>;
  @override
  set features(covariant RealmList<Feature> value) =>
      throw RealmUnsupportedSetError();

  @override
  CharacteristicList? get specialty =>
      RealmObjectBase.get<CharacteristicList>(this, 'specialty')
          as CharacteristicList?;
  @override
  set specialty(covariant CharacteristicList? value) =>
      RealmObjectBase.set(this, 'specialty', value);

  @override
  RealmList<CharacteristicList> get suggestedCharacteristics =>
      RealmObjectBase.get<CharacteristicList>(this, 'suggestedCharacteristics')
          as RealmList<CharacteristicList>;
  @override
  set suggestedCharacteristics(covariant RealmList<CharacteristicList> value) =>
      throw RealmUnsupportedSetError();

  @override
  Source? get source => RealmObjectBase.get<Source>(this, 'source') as Source?;
  @override
  set source(covariant Source? value) =>
      RealmObjectBase.set(this, 'source', value);

  @override
  Stream<RealmObjectChanges<Background>> get changes =>
      RealmObjectBase.getChanges<Background>(this);

  @override
  Stream<RealmObjectChanges<Background>> changesFor([List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<Background>(this, keyPaths);

  @override
  Background freeze() => RealmObjectBase.freezeObject<Background>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'name': name.toEJson(),
      'desc': desc.toEJson(),
      'characteristicsDesc': characteristicsDesc.toEJson(),
      'skillProfs': skillProfs.toEJson(),
      'toolProfs': toolProfs.toEJson(),
      'languages': languages.toEJson(),
      'startingEquipment': startingEquipment.toEJson(),
      'features': features.toEJson(),
      'specialty': specialty.toEJson(),
      'suggestedCharacteristics': suggestedCharacteristics.toEJson(),
      'source': source.toEJson(),
    };
  }

  static EJsonValue _toEJson(Background value) => value.toEJson();
  static Background _fromEJson(EJsonValue ejson) {
    return switch (ejson) {
      {
        'name': EJsonValue name,
        'desc': EJsonValue desc,
        'characteristicsDesc': EJsonValue characteristicsDesc,
        'skillProfs': EJsonValue skillProfs,
        'toolProfs': EJsonValue toolProfs,
        'languages': EJsonValue languages,
        'startingEquipment': EJsonValue startingEquipment,
        'features': EJsonValue features,
        'specialty': EJsonValue specialty,
        'suggestedCharacteristics': EJsonValue suggestedCharacteristics,
        'source': EJsonValue source,
      } =>
        Background(
          fromEJson(name),
          desc: fromEJson(desc),
          characteristicsDesc: fromEJson(characteristicsDesc),
          skillProfs: fromEJson(skillProfs),
          toolProfs: fromEJson(toolProfs),
          languages: fromEJson(languages),
          startingEquipment: fromEJson(startingEquipment),
          features: fromEJson(features),
          specialty: fromEJson(specialty),
          suggestedCharacteristics: fromEJson(suggestedCharacteristics),
          source: fromEJson(source),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(Background._);
    register(_toEJson, _fromEJson);
    return SchemaObject(ObjectType.realmObject, Background, 'Background', [
      SchemaProperty('name', RealmPropertyType.string, primaryKey: true),
      SchemaProperty('desc', RealmPropertyType.string),
      SchemaProperty('characteristicsDesc', RealmPropertyType.string),
      SchemaProperty('skillProfs', RealmPropertyType.string,
          collectionType: RealmCollectionType.list),
      SchemaProperty('toolProfs', RealmPropertyType.object,
          linkTarget: 'Option', collectionType: RealmCollectionType.list),
      SchemaProperty('languages', RealmPropertyType.object,
          optional: true, linkTarget: 'Option'),
      SchemaProperty('startingEquipment', RealmPropertyType.object,
          linkTarget: 'Option', collectionType: RealmCollectionType.list),
      SchemaProperty('features', RealmPropertyType.object,
          linkTarget: 'Feature', collectionType: RealmCollectionType.list),
      SchemaProperty('specialty', RealmPropertyType.object,
          optional: true, linkTarget: 'CharacteristicList'),
      SchemaProperty('suggestedCharacteristics', RealmPropertyType.object,
          linkTarget: 'CharacteristicList',
          collectionType: RealmCollectionType.list),
      SchemaProperty('source', RealmPropertyType.object,
          optional: true, linkTarget: 'Source'),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}

class CharacteristicList extends $CharacteristicList
    with RealmEntity, RealmObjectBase, EmbeddedObject {
  static var _defaultsSet = false;

  CharacteristicList({
    Iterable<String> values = const [],
    String name = 'Characteristics',
    String desc = '',
    int diceBack = 0,
  }) {
    if (!_defaultsSet) {
      _defaultsSet = RealmObjectBase.setDefaults<CharacteristicList>({
        'name': 'Characteristics',
        'desc': '',
        'diceBack': 0,
      });
    }
    RealmObjectBase.set<RealmList<String>>(
        this, 'values', RealmList<String>(values));
    RealmObjectBase.set(this, 'name', name);
    RealmObjectBase.set(this, 'desc', desc);
    RealmObjectBase.set(this, 'diceBack', diceBack);
  }

  CharacteristicList._();

  @override
  RealmList<String> get values =>
      RealmObjectBase.get<String>(this, 'values') as RealmList<String>;
  @override
  set values(covariant RealmList<String> value) =>
      throw RealmUnsupportedSetError();

  @override
  String get name => RealmObjectBase.get<String>(this, 'name') as String;
  @override
  set name(String value) => RealmObjectBase.set(this, 'name', value);

  @override
  String get desc => RealmObjectBase.get<String>(this, 'desc') as String;
  @override
  set desc(String value) => RealmObjectBase.set(this, 'desc', value);

  @override
  int get diceBack => RealmObjectBase.get<int>(this, 'diceBack') as int;
  @override
  set diceBack(int value) => RealmObjectBase.set(this, 'diceBack', value);

  @override
  Stream<RealmObjectChanges<CharacteristicList>> get changes =>
      RealmObjectBase.getChanges<CharacteristicList>(this);

  @override
  Stream<RealmObjectChanges<CharacteristicList>> changesFor(
          [List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<CharacteristicList>(this, keyPaths);

  @override
  CharacteristicList freeze() =>
      RealmObjectBase.freezeObject<CharacteristicList>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'values': values.toEJson(),
      'name': name.toEJson(),
      'desc': desc.toEJson(),
      'diceBack': diceBack.toEJson(),
    };
  }

  static EJsonValue _toEJson(CharacteristicList value) => value.toEJson();
  static CharacteristicList _fromEJson(EJsonValue ejson) {
    return switch (ejson) {
      {
        'values': EJsonValue values,
        'name': EJsonValue name,
        'desc': EJsonValue desc,
        'diceBack': EJsonValue diceBack,
      } =>
        CharacteristicList(
          values: fromEJson(values),
          name: fromEJson(name),
          desc: fromEJson(desc),
          diceBack: fromEJson(diceBack),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(CharacteristicList._);
    register(_toEJson, _fromEJson);
    return SchemaObject(
        ObjectType.embeddedObject, CharacteristicList, 'CharacteristicList', [
      SchemaProperty('values', RealmPropertyType.string,
          collectionType: RealmCollectionType.list),
      SchemaProperty('name', RealmPropertyType.string),
      SchemaProperty('desc', RealmPropertyType.string),
      SchemaProperty('diceBack', RealmPropertyType.int),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}
