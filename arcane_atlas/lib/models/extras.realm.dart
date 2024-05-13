// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'extras.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

// ignore_for_file: type=lint
class Option extends $Option with RealmEntity, RealmObjectBase, EmbeddedObject {
  static var _defaultsSet = false;

  Option({
    String desc = '',
    int selections = 1,
    bool isChoice = true,
    bool isQuery = false,
    bool isProficiency = false,
    Iterable<Spell> spells = const [],
    Iterable<Equipment> equipment = const [],
    Iterable<Language> languages = const [],
    Iterable<Creature> creatures = const [],
    Iterable<String> skills = const [],
    Coins? coins,
    String? query,
    int typeBack = 0,
  }) {
    if (!_defaultsSet) {
      _defaultsSet = RealmObjectBase.setDefaults<Option>({
        'desc': '',
        'selections': 1,
        'isChoice': true,
        'isQuery': false,
        'isProficiency': false,
        'typeBack': 0,
      });
    }
    RealmObjectBase.set(this, 'desc', desc);
    RealmObjectBase.set(this, 'selections', selections);
    RealmObjectBase.set(this, 'isChoice', isChoice);
    RealmObjectBase.set(this, 'isQuery', isQuery);
    RealmObjectBase.set(this, 'isProficiency', isProficiency);
    RealmObjectBase.set<RealmList<Spell>>(
        this, 'spells', RealmList<Spell>(spells));
    RealmObjectBase.set<RealmList<Equipment>>(
        this, 'equipment', RealmList<Equipment>(equipment));
    RealmObjectBase.set<RealmList<Language>>(
        this, 'languages', RealmList<Language>(languages));
    RealmObjectBase.set<RealmList<Creature>>(
        this, 'creatures', RealmList<Creature>(creatures));
    RealmObjectBase.set<RealmList<String>>(
        this, 'skills', RealmList<String>(skills));
    RealmObjectBase.set(this, 'coins', coins);
    RealmObjectBase.set(this, 'query', query);
    RealmObjectBase.set(this, 'typeBack', typeBack);
  }

  Option._();

  @override
  String get desc => RealmObjectBase.get<String>(this, 'desc') as String;
  @override
  set desc(String value) => RealmObjectBase.set(this, 'desc', value);

  @override
  int get selections => RealmObjectBase.get<int>(this, 'selections') as int;
  @override
  set selections(int value) => RealmObjectBase.set(this, 'selections', value);

  @override
  bool get isChoice => RealmObjectBase.get<bool>(this, 'isChoice') as bool;
  @override
  set isChoice(bool value) => RealmObjectBase.set(this, 'isChoice', value);

  @override
  bool get isQuery => RealmObjectBase.get<bool>(this, 'isQuery') as bool;
  @override
  set isQuery(bool value) => RealmObjectBase.set(this, 'isQuery', value);

  @override
  bool get isProficiency =>
      RealmObjectBase.get<bool>(this, 'isProficiency') as bool;
  @override
  set isProficiency(bool value) =>
      RealmObjectBase.set(this, 'isProficiency', value);

  @override
  RealmList<Spell> get spells =>
      RealmObjectBase.get<Spell>(this, 'spells') as RealmList<Spell>;
  @override
  set spells(covariant RealmList<Spell> value) =>
      throw RealmUnsupportedSetError();

  @override
  RealmList<Equipment> get equipment =>
      RealmObjectBase.get<Equipment>(this, 'equipment') as RealmList<Equipment>;
  @override
  set equipment(covariant RealmList<Equipment> value) =>
      throw RealmUnsupportedSetError();

  @override
  RealmList<Language> get languages =>
      RealmObjectBase.get<Language>(this, 'languages') as RealmList<Language>;
  @override
  set languages(covariant RealmList<Language> value) =>
      throw RealmUnsupportedSetError();

  @override
  RealmList<Creature> get creatures =>
      RealmObjectBase.get<Creature>(this, 'creatures') as RealmList<Creature>;
  @override
  set creatures(covariant RealmList<Creature> value) =>
      throw RealmUnsupportedSetError();

  @override
  RealmList<String> get skills =>
      RealmObjectBase.get<String>(this, 'skills') as RealmList<String>;
  @override
  set skills(covariant RealmList<String> value) =>
      throw RealmUnsupportedSetError();

  @override
  Coins? get coins => RealmObjectBase.get<Coins>(this, 'coins') as Coins?;
  @override
  set coins(covariant Coins? value) =>
      RealmObjectBase.set(this, 'coins', value);

  @override
  String? get query => RealmObjectBase.get<String>(this, 'query') as String?;
  @override
  set query(String? value) => RealmObjectBase.set(this, 'query', value);

  @override
  int get typeBack => RealmObjectBase.get<int>(this, 'typeBack') as int;
  @override
  set typeBack(int value) => RealmObjectBase.set(this, 'typeBack', value);

  @override
  Stream<RealmObjectChanges<Option>> get changes =>
      RealmObjectBase.getChanges<Option>(this);

  @override
  Stream<RealmObjectChanges<Option>> changesFor([List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<Option>(this, keyPaths);

  @override
  Option freeze() => RealmObjectBase.freezeObject<Option>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'desc': desc.toEJson(),
      'selections': selections.toEJson(),
      'isChoice': isChoice.toEJson(),
      'isQuery': isQuery.toEJson(),
      'isProficiency': isProficiency.toEJson(),
      'spells': spells.toEJson(),
      'equipment': equipment.toEJson(),
      'languages': languages.toEJson(),
      'creatures': creatures.toEJson(),
      'skills': skills.toEJson(),
      'coins': coins.toEJson(),
      'query': query.toEJson(),
      'typeBack': typeBack.toEJson(),
    };
  }

  static EJsonValue _toEJson(Option value) => value.toEJson();
  static Option _fromEJson(EJsonValue ejson) {
    return switch (ejson) {
      {
        'desc': EJsonValue desc,
        'selections': EJsonValue selections,
        'isChoice': EJsonValue isChoice,
        'isQuery': EJsonValue isQuery,
        'isProficiency': EJsonValue isProficiency,
        'spells': EJsonValue spells,
        'equipment': EJsonValue equipment,
        'languages': EJsonValue languages,
        'creatures': EJsonValue creatures,
        'skills': EJsonValue skills,
        'coins': EJsonValue coins,
        'query': EJsonValue query,
        'typeBack': EJsonValue typeBack,
      } =>
        Option(
          desc: fromEJson(desc),
          selections: fromEJson(selections),
          isChoice: fromEJson(isChoice),
          isQuery: fromEJson(isQuery),
          isProficiency: fromEJson(isProficiency),
          spells: fromEJson(spells),
          equipment: fromEJson(equipment),
          languages: fromEJson(languages),
          creatures: fromEJson(creatures),
          skills: fromEJson(skills),
          coins: fromEJson(coins),
          query: fromEJson(query),
          typeBack: fromEJson(typeBack),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(Option._);
    register(_toEJson, _fromEJson);
    return SchemaObject(ObjectType.embeddedObject, Option, 'Option', [
      SchemaProperty('desc', RealmPropertyType.string),
      SchemaProperty('selections', RealmPropertyType.int),
      SchemaProperty('isChoice', RealmPropertyType.bool),
      SchemaProperty('isQuery', RealmPropertyType.bool),
      SchemaProperty('isProficiency', RealmPropertyType.bool),
      SchemaProperty('spells', RealmPropertyType.object,
          linkTarget: 'Spell', collectionType: RealmCollectionType.list),
      SchemaProperty('equipment', RealmPropertyType.object,
          linkTarget: 'Equipment', collectionType: RealmCollectionType.list),
      SchemaProperty('languages', RealmPropertyType.object,
          linkTarget: 'Language', collectionType: RealmCollectionType.list),
      SchemaProperty('creatures', RealmPropertyType.object,
          linkTarget: 'Creature', collectionType: RealmCollectionType.list),
      SchemaProperty('skills', RealmPropertyType.string,
          collectionType: RealmCollectionType.list),
      SchemaProperty('coins', RealmPropertyType.object,
          optional: true, linkTarget: 'Coins'),
      SchemaProperty('query', RealmPropertyType.string, optional: true),
      SchemaProperty('typeBack', RealmPropertyType.int),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}

class DiceRoller extends $DiceRoller
    with RealmEntity, RealmObjectBase, EmbeddedObject {
  static var _defaultsSet = false;

  DiceRoller({
    int numDice = 1,
    int modifier = 0,
    bool multiply = false,
    int dieIndex = 0,
  }) {
    if (!_defaultsSet) {
      _defaultsSet = RealmObjectBase.setDefaults<DiceRoller>({
        'numDice': 1,
        'modifier': 0,
        'multiply': false,
        'dieIndex': 0,
      });
    }
    RealmObjectBase.set(this, 'numDice', numDice);
    RealmObjectBase.set(this, 'modifier', modifier);
    RealmObjectBase.set(this, 'multiply', multiply);
    RealmObjectBase.set(this, 'dieIndex', dieIndex);
  }

  DiceRoller._();

  @override
  int get numDice => RealmObjectBase.get<int>(this, 'numDice') as int;
  @override
  set numDice(int value) => RealmObjectBase.set(this, 'numDice', value);

  @override
  int get modifier => RealmObjectBase.get<int>(this, 'modifier') as int;
  @override
  set modifier(int value) => RealmObjectBase.set(this, 'modifier', value);

  @override
  bool get multiply => RealmObjectBase.get<bool>(this, 'multiply') as bool;
  @override
  set multiply(bool value) => RealmObjectBase.set(this, 'multiply', value);

  @override
  int get dieIndex => RealmObjectBase.get<int>(this, 'dieIndex') as int;
  @override
  set dieIndex(int value) => RealmObjectBase.set(this, 'dieIndex', value);

  @override
  Stream<RealmObjectChanges<DiceRoller>> get changes =>
      RealmObjectBase.getChanges<DiceRoller>(this);

  @override
  Stream<RealmObjectChanges<DiceRoller>> changesFor([List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<DiceRoller>(this, keyPaths);

  @override
  DiceRoller freeze() => RealmObjectBase.freezeObject<DiceRoller>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'numDice': numDice.toEJson(),
      'modifier': modifier.toEJson(),
      'multiply': multiply.toEJson(),
      'dieIndex': dieIndex.toEJson(),
    };
  }

  static EJsonValue _toEJson(DiceRoller value) => value.toEJson();
  static DiceRoller _fromEJson(EJsonValue ejson) {
    return switch (ejson) {
      {
        'numDice': EJsonValue numDice,
        'modifier': EJsonValue modifier,
        'multiply': EJsonValue multiply,
        'dieIndex': EJsonValue dieIndex,
      } =>
        DiceRoller(
          numDice: fromEJson(numDice),
          modifier: fromEJson(modifier),
          multiply: fromEJson(multiply),
          dieIndex: fromEJson(dieIndex),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(DiceRoller._);
    register(_toEJson, _fromEJson);
    return SchemaObject(ObjectType.embeddedObject, DiceRoller, 'DiceRoller', [
      SchemaProperty('numDice', RealmPropertyType.int),
      SchemaProperty('modifier', RealmPropertyType.int),
      SchemaProperty('multiply', RealmPropertyType.bool),
      SchemaProperty('dieIndex', RealmPropertyType.int),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}

class Modifier extends $Modifier
    with RealmEntity, RealmObjectBase, EmbeddedObject {
  static var _defaultsSet = false;

  Modifier({
    String desc = 'No Description',
    DiceRoller? dice,
    int? modifierNum,
    int typeBack = 0,
  }) {
    if (!_defaultsSet) {
      _defaultsSet = RealmObjectBase.setDefaults<Modifier>({
        'desc': 'No Description',
        'typeBack': 0,
      });
    }
    RealmObjectBase.set(this, 'desc', desc);
    RealmObjectBase.set(this, 'dice', dice);
    RealmObjectBase.set(this, 'modifierNum', modifierNum);
    RealmObjectBase.set(this, 'typeBack', typeBack);
  }

  Modifier._();

  @override
  String get desc => RealmObjectBase.get<String>(this, 'desc') as String;
  @override
  set desc(String value) => RealmObjectBase.set(this, 'desc', value);

  @override
  DiceRoller? get dice =>
      RealmObjectBase.get<DiceRoller>(this, 'dice') as DiceRoller?;
  @override
  set dice(covariant DiceRoller? value) =>
      RealmObjectBase.set(this, 'dice', value);

  @override
  int? get modifierNum => RealmObjectBase.get<int>(this, 'modifierNum') as int?;
  @override
  set modifierNum(int? value) =>
      RealmObjectBase.set(this, 'modifierNum', value);

  @override
  int get typeBack => RealmObjectBase.get<int>(this, 'typeBack') as int;
  @override
  set typeBack(int value) => RealmObjectBase.set(this, 'typeBack', value);

  @override
  Stream<RealmObjectChanges<Modifier>> get changes =>
      RealmObjectBase.getChanges<Modifier>(this);

  @override
  Stream<RealmObjectChanges<Modifier>> changesFor([List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<Modifier>(this, keyPaths);

  @override
  Modifier freeze() => RealmObjectBase.freezeObject<Modifier>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'desc': desc.toEJson(),
      'dice': dice.toEJson(),
      'modifierNum': modifierNum.toEJson(),
      'typeBack': typeBack.toEJson(),
    };
  }

  static EJsonValue _toEJson(Modifier value) => value.toEJson();
  static Modifier _fromEJson(EJsonValue ejson) {
    return switch (ejson) {
      {
        'desc': EJsonValue desc,
        'dice': EJsonValue dice,
        'modifierNum': EJsonValue modifierNum,
        'typeBack': EJsonValue typeBack,
      } =>
        Modifier(
          desc: fromEJson(desc),
          dice: fromEJson(dice),
          modifierNum: fromEJson(modifierNum),
          typeBack: fromEJson(typeBack),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(Modifier._);
    register(_toEJson, _fromEJson);
    return SchemaObject(ObjectType.embeddedObject, Modifier, 'Modifier', [
      SchemaProperty('desc', RealmPropertyType.string),
      SchemaProperty('dice', RealmPropertyType.object,
          optional: true, linkTarget: 'DiceRoller'),
      SchemaProperty('modifierNum', RealmPropertyType.int, optional: true),
      SchemaProperty('typeBack', RealmPropertyType.int),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}

class Damage extends $Damage with RealmEntity, RealmObjectBase, EmbeddedObject {
  static var _defaultsSet = false;

  Damage({
    DiceRoller? dice,
    int typeBack = 0,
  }) {
    if (!_defaultsSet) {
      _defaultsSet = RealmObjectBase.setDefaults<Damage>({
        'typeBack': 0,
      });
    }
    RealmObjectBase.set(this, 'dice', dice);
    RealmObjectBase.set(this, 'typeBack', typeBack);
  }

  Damage._();

  @override
  DiceRoller? get dice =>
      RealmObjectBase.get<DiceRoller>(this, 'dice') as DiceRoller?;
  @override
  set dice(covariant DiceRoller? value) =>
      RealmObjectBase.set(this, 'dice', value);

  @override
  int get typeBack => RealmObjectBase.get<int>(this, 'typeBack') as int;
  @override
  set typeBack(int value) => RealmObjectBase.set(this, 'typeBack', value);

  @override
  Stream<RealmObjectChanges<Damage>> get changes =>
      RealmObjectBase.getChanges<Damage>(this);

  @override
  Stream<RealmObjectChanges<Damage>> changesFor([List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<Damage>(this, keyPaths);

  @override
  Damage freeze() => RealmObjectBase.freezeObject<Damage>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'dice': dice.toEJson(),
      'typeBack': typeBack.toEJson(),
    };
  }

  static EJsonValue _toEJson(Damage value) => value.toEJson();
  static Damage _fromEJson(EJsonValue ejson) {
    return switch (ejson) {
      {
        'dice': EJsonValue dice,
        'typeBack': EJsonValue typeBack,
      } =>
        Damage(
          dice: fromEJson(dice),
          typeBack: fromEJson(typeBack),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(Damage._);
    register(_toEJson, _fromEJson);
    return SchemaObject(ObjectType.embeddedObject, Damage, 'Damage', [
      SchemaProperty('dice', RealmPropertyType.object,
          optional: true, linkTarget: 'DiceRoller'),
      SchemaProperty('typeBack', RealmPropertyType.int),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}

class Action extends $Action with RealmEntity, RealmObjectBase, EmbeddedObject {
  static var _defaultsSet = false;

  Action({
    String name = 'Action',
    Iterable<DiceRoller> hitDice = const [],
    Iterable<int> damageTypeBack = const [],
    String description = 'No Description',
    int toHitModifier = 0,
    String reach = '5',
    int numTargets = 1,
    bool hasSaveThrow = false,
    int? saveThrowDC,
    bool isLegendary = false,
    Iterable<String> properties = const [],
    int? saveThrowAbilityBack,
  }) {
    if (!_defaultsSet) {
      _defaultsSet = RealmObjectBase.setDefaults<Action>({
        'name': 'Action',
        'description': 'No Description',
        'toHitModifier': 0,
        'reach': '5',
        'numTargets': 1,
        'hasSaveThrow': false,
        'isLegendary': false,
      });
    }
    RealmObjectBase.set(this, 'name', name);
    RealmObjectBase.set<RealmList<DiceRoller>>(
        this, 'hitDice', RealmList<DiceRoller>(hitDice));
    RealmObjectBase.set<RealmList<int>>(
        this, 'damageTypeBack', RealmList<int>(damageTypeBack));
    RealmObjectBase.set(this, 'description', description);
    RealmObjectBase.set(this, 'toHitModifier', toHitModifier);
    RealmObjectBase.set(this, 'reach', reach);
    RealmObjectBase.set(this, 'numTargets', numTargets);
    RealmObjectBase.set(this, 'hasSaveThrow', hasSaveThrow);
    RealmObjectBase.set(this, 'saveThrowDC', saveThrowDC);
    RealmObjectBase.set(this, 'isLegendary', isLegendary);
    RealmObjectBase.set<RealmList<String>>(
        this, 'properties', RealmList<String>(properties));
    RealmObjectBase.set(this, 'saveThrowAbilityBack', saveThrowAbilityBack);
  }

  Action._();

  @override
  String get name => RealmObjectBase.get<String>(this, 'name') as String;
  @override
  set name(String value) => RealmObjectBase.set(this, 'name', value);

  @override
  RealmList<DiceRoller> get hitDice =>
      RealmObjectBase.get<DiceRoller>(this, 'hitDice') as RealmList<DiceRoller>;
  @override
  set hitDice(covariant RealmList<DiceRoller> value) =>
      throw RealmUnsupportedSetError();

  @override
  RealmList<int> get damageTypeBack =>
      RealmObjectBase.get<int>(this, 'damageTypeBack') as RealmList<int>;
  @override
  set damageTypeBack(covariant RealmList<int> value) =>
      throw RealmUnsupportedSetError();

  @override
  String get description =>
      RealmObjectBase.get<String>(this, 'description') as String;
  @override
  set description(String value) =>
      RealmObjectBase.set(this, 'description', value);

  @override
  int get toHitModifier =>
      RealmObjectBase.get<int>(this, 'toHitModifier') as int;
  @override
  set toHitModifier(int value) =>
      RealmObjectBase.set(this, 'toHitModifier', value);

  @override
  String get reach => RealmObjectBase.get<String>(this, 'reach') as String;
  @override
  set reach(String value) => RealmObjectBase.set(this, 'reach', value);

  @override
  int get numTargets => RealmObjectBase.get<int>(this, 'numTargets') as int;
  @override
  set numTargets(int value) => RealmObjectBase.set(this, 'numTargets', value);

  @override
  bool get hasSaveThrow =>
      RealmObjectBase.get<bool>(this, 'hasSaveThrow') as bool;
  @override
  set hasSaveThrow(bool value) =>
      RealmObjectBase.set(this, 'hasSaveThrow', value);

  @override
  int? get saveThrowDC => RealmObjectBase.get<int>(this, 'saveThrowDC') as int?;
  @override
  set saveThrowDC(int? value) =>
      RealmObjectBase.set(this, 'saveThrowDC', value);

  @override
  bool get isLegendary =>
      RealmObjectBase.get<bool>(this, 'isLegendary') as bool;
  @override
  set isLegendary(bool value) =>
      RealmObjectBase.set(this, 'isLegendary', value);

  @override
  RealmList<String> get properties =>
      RealmObjectBase.get<String>(this, 'properties') as RealmList<String>;
  @override
  set properties(covariant RealmList<String> value) =>
      throw RealmUnsupportedSetError();

  @override
  int? get saveThrowAbilityBack =>
      RealmObjectBase.get<int>(this, 'saveThrowAbilityBack') as int?;
  @override
  set saveThrowAbilityBack(int? value) =>
      RealmObjectBase.set(this, 'saveThrowAbilityBack', value);

  @override
  Stream<RealmObjectChanges<Action>> get changes =>
      RealmObjectBase.getChanges<Action>(this);

  @override
  Stream<RealmObjectChanges<Action>> changesFor([List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<Action>(this, keyPaths);

  @override
  Action freeze() => RealmObjectBase.freezeObject<Action>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'name': name.toEJson(),
      'hitDice': hitDice.toEJson(),
      'damageTypeBack': damageTypeBack.toEJson(),
      'description': description.toEJson(),
      'toHitModifier': toHitModifier.toEJson(),
      'reach': reach.toEJson(),
      'numTargets': numTargets.toEJson(),
      'hasSaveThrow': hasSaveThrow.toEJson(),
      'saveThrowDC': saveThrowDC.toEJson(),
      'isLegendary': isLegendary.toEJson(),
      'properties': properties.toEJson(),
      'saveThrowAbilityBack': saveThrowAbilityBack.toEJson(),
    };
  }

  static EJsonValue _toEJson(Action value) => value.toEJson();
  static Action _fromEJson(EJsonValue ejson) {
    return switch (ejson) {
      {
        'name': EJsonValue name,
        'hitDice': EJsonValue hitDice,
        'damageTypeBack': EJsonValue damageTypeBack,
        'description': EJsonValue description,
        'toHitModifier': EJsonValue toHitModifier,
        'reach': EJsonValue reach,
        'numTargets': EJsonValue numTargets,
        'hasSaveThrow': EJsonValue hasSaveThrow,
        'saveThrowDC': EJsonValue saveThrowDC,
        'isLegendary': EJsonValue isLegendary,
        'properties': EJsonValue properties,
        'saveThrowAbilityBack': EJsonValue saveThrowAbilityBack,
      } =>
        Action(
          name: fromEJson(name),
          hitDice: fromEJson(hitDice),
          damageTypeBack: fromEJson(damageTypeBack),
          description: fromEJson(description),
          toHitModifier: fromEJson(toHitModifier),
          reach: fromEJson(reach),
          numTargets: fromEJson(numTargets),
          hasSaveThrow: fromEJson(hasSaveThrow),
          saveThrowDC: fromEJson(saveThrowDC),
          isLegendary: fromEJson(isLegendary),
          properties: fromEJson(properties),
          saveThrowAbilityBack: fromEJson(saveThrowAbilityBack),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(Action._);
    register(_toEJson, _fromEJson);
    return SchemaObject(ObjectType.embeddedObject, Action, 'Action', [
      SchemaProperty('name', RealmPropertyType.string),
      SchemaProperty('hitDice', RealmPropertyType.object,
          linkTarget: 'DiceRoller', collectionType: RealmCollectionType.list),
      SchemaProperty('damageTypeBack', RealmPropertyType.int,
          collectionType: RealmCollectionType.list),
      SchemaProperty('description', RealmPropertyType.string),
      SchemaProperty('toHitModifier', RealmPropertyType.int),
      SchemaProperty('reach', RealmPropertyType.string),
      SchemaProperty('numTargets', RealmPropertyType.int),
      SchemaProperty('hasSaveThrow', RealmPropertyType.bool),
      SchemaProperty('saveThrowDC', RealmPropertyType.int, optional: true),
      SchemaProperty('isLegendary', RealmPropertyType.bool),
      SchemaProperty('properties', RealmPropertyType.string,
          collectionType: RealmCollectionType.list),
      SchemaProperty('saveThrowAbilityBack', RealmPropertyType.int,
          optional: true),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}

class Language extends $Language
    with RealmEntity, RealmObjectBase, RealmObject {
  static var _defaultsSet = false;

  Language(
    String name, {
    Iterable<String> speakers = const [],
    String? script,
    bool exotic = false,
    Source? source,
  }) {
    if (!_defaultsSet) {
      _defaultsSet = RealmObjectBase.setDefaults<Language>({
        'exotic': false,
      });
    }
    RealmObjectBase.set(this, 'name', name);
    RealmObjectBase.set<RealmList<String>>(
        this, 'speakers', RealmList<String>(speakers));
    RealmObjectBase.set(this, 'script', script);
    RealmObjectBase.set(this, 'exotic', exotic);
    RealmObjectBase.set(this, 'source', source);
  }

  Language._();

  @override
  String get name => RealmObjectBase.get<String>(this, 'name') as String;
  @override
  set name(String value) => RealmObjectBase.set(this, 'name', value);

  @override
  RealmList<String> get speakers =>
      RealmObjectBase.get<String>(this, 'speakers') as RealmList<String>;
  @override
  set speakers(covariant RealmList<String> value) =>
      throw RealmUnsupportedSetError();

  @override
  String? get script => RealmObjectBase.get<String>(this, 'script') as String?;
  @override
  set script(String? value) => RealmObjectBase.set(this, 'script', value);

  @override
  bool get exotic => RealmObjectBase.get<bool>(this, 'exotic') as bool;
  @override
  set exotic(bool value) => RealmObjectBase.set(this, 'exotic', value);

  @override
  Source? get source => RealmObjectBase.get<Source>(this, 'source') as Source?;
  @override
  set source(covariant Source? value) =>
      RealmObjectBase.set(this, 'source', value);

  @override
  Stream<RealmObjectChanges<Language>> get changes =>
      RealmObjectBase.getChanges<Language>(this);

  @override
  Stream<RealmObjectChanges<Language>> changesFor([List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<Language>(this, keyPaths);

  @override
  Language freeze() => RealmObjectBase.freezeObject<Language>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'name': name.toEJson(),
      'speakers': speakers.toEJson(),
      'script': script.toEJson(),
      'exotic': exotic.toEJson(),
      'source': source.toEJson(),
    };
  }

  static EJsonValue _toEJson(Language value) => value.toEJson();
  static Language _fromEJson(EJsonValue ejson) {
    return switch (ejson) {
      {
        'name': EJsonValue name,
        'speakers': EJsonValue speakers,
        'script': EJsonValue script,
        'exotic': EJsonValue exotic,
        'source': EJsonValue source,
      } =>
        Language(
          fromEJson(name),
          speakers: fromEJson(speakers),
          script: fromEJson(script),
          exotic: fromEJson(exotic),
          source: fromEJson(source),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(Language._);
    register(_toEJson, _fromEJson);
    return SchemaObject(ObjectType.realmObject, Language, 'Language', [
      SchemaProperty('name', RealmPropertyType.string, primaryKey: true),
      SchemaProperty('speakers', RealmPropertyType.string,
          collectionType: RealmCollectionType.list),
      SchemaProperty('script', RealmPropertyType.string, optional: true),
      SchemaProperty('exotic', RealmPropertyType.bool),
      SchemaProperty('source', RealmPropertyType.object,
          optional: true, linkTarget: 'Source'),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}

class Feature extends $Feature with RealmEntity, RealmObjectBase, RealmObject {
  static var _defaultsSet = false;

  Feature(
    String name, {
    int levelAvailable = 1,
    String desc = 'No Description',
    Map<String, bool> prerequisites = const {},
    Option? option,
    Iterable<Modifier> modifiers = const [],
    Iterable<Action> actions = const [],
    int typeBack = 0,
    Source? source,
  }) {
    if (!_defaultsSet) {
      _defaultsSet = RealmObjectBase.setDefaults<Feature>({
        'levelAvailable': 1,
        'desc': 'No Description',
        'typeBack': 0,
      });
    }
    RealmObjectBase.set(this, 'name', name);
    RealmObjectBase.set(this, 'levelAvailable', levelAvailable);
    RealmObjectBase.set(this, 'desc', desc);
    RealmObjectBase.set<RealmMap<bool>>(
        this, 'prerequisites', RealmMap<bool>(prerequisites));
    RealmObjectBase.set(this, 'option', option);
    RealmObjectBase.set<RealmList<Modifier>>(
        this, 'modifiers', RealmList<Modifier>(modifiers));
    RealmObjectBase.set<RealmList<Action>>(
        this, 'actions', RealmList<Action>(actions));
    RealmObjectBase.set(this, 'typeBack', typeBack);
    RealmObjectBase.set(this, 'source', source);
  }

  Feature._();

  @override
  String get name => RealmObjectBase.get<String>(this, 'name') as String;
  @override
  set name(String value) => RealmObjectBase.set(this, 'name', value);

  @override
  int get levelAvailable =>
      RealmObjectBase.get<int>(this, 'levelAvailable') as int;
  @override
  set levelAvailable(int value) =>
      RealmObjectBase.set(this, 'levelAvailable', value);

  @override
  String get desc => RealmObjectBase.get<String>(this, 'desc') as String;
  @override
  set desc(String value) => RealmObjectBase.set(this, 'desc', value);

  @override
  RealmMap<bool> get prerequisites =>
      RealmObjectBase.get<bool>(this, 'prerequisites') as RealmMap<bool>;
  @override
  set prerequisites(covariant RealmMap<bool> value) =>
      throw RealmUnsupportedSetError();

  @override
  Option? get option => RealmObjectBase.get<Option>(this, 'option') as Option?;
  @override
  set option(covariant Option? value) =>
      RealmObjectBase.set(this, 'option', value);

  @override
  RealmList<Modifier> get modifiers =>
      RealmObjectBase.get<Modifier>(this, 'modifiers') as RealmList<Modifier>;
  @override
  set modifiers(covariant RealmList<Modifier> value) =>
      throw RealmUnsupportedSetError();

  @override
  RealmList<Action> get actions =>
      RealmObjectBase.get<Action>(this, 'actions') as RealmList<Action>;
  @override
  set actions(covariant RealmList<Action> value) =>
      throw RealmUnsupportedSetError();

  @override
  int get typeBack => RealmObjectBase.get<int>(this, 'typeBack') as int;
  @override
  set typeBack(int value) => RealmObjectBase.set(this, 'typeBack', value);

  @override
  Source? get source => RealmObjectBase.get<Source>(this, 'source') as Source?;
  @override
  set source(covariant Source? value) =>
      RealmObjectBase.set(this, 'source', value);

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
  RealmResults<Background> get backgrounds {
    if (!isManaged) {
      throw RealmError('Using backlinks is only possible for managed objects.');
    }
    return RealmObjectBase.get<Background>(this, 'backgrounds')
        as RealmResults<Background>;
  }

  @override
  set backgrounds(covariant RealmResults<Background> value) =>
      throw RealmUnsupportedSetError();

  @override
  Stream<RealmObjectChanges<Feature>> get changes =>
      RealmObjectBase.getChanges<Feature>(this);

  @override
  Stream<RealmObjectChanges<Feature>> changesFor([List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<Feature>(this, keyPaths);

  @override
  Feature freeze() => RealmObjectBase.freezeObject<Feature>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'name': name.toEJson(),
      'levelAvailable': levelAvailable.toEJson(),
      'desc': desc.toEJson(),
      'prerequisites': prerequisites.toEJson(),
      'option': option.toEJson(),
      'modifiers': modifiers.toEJson(),
      'actions': actions.toEJson(),
      'typeBack': typeBack.toEJson(),
      'source': source.toEJson(),
    };
  }

  static EJsonValue _toEJson(Feature value) => value.toEJson();
  static Feature _fromEJson(EJsonValue ejson) {
    return switch (ejson) {
      {
        'name': EJsonValue name,
        'levelAvailable': EJsonValue levelAvailable,
        'desc': EJsonValue desc,
        'prerequisites': EJsonValue prerequisites,
        'option': EJsonValue option,
        'modifiers': EJsonValue modifiers,
        'actions': EJsonValue actions,
        'typeBack': EJsonValue typeBack,
        'source': EJsonValue source,
      } =>
        Feature(
          fromEJson(name),
          levelAvailable: fromEJson(levelAvailable),
          desc: fromEJson(desc),
          prerequisites: fromEJson(prerequisites),
          option: fromEJson(option),
          modifiers: fromEJson(modifiers),
          actions: fromEJson(actions),
          typeBack: fromEJson(typeBack),
          source: fromEJson(source),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(Feature._);
    register(_toEJson, _fromEJson);
    return SchemaObject(ObjectType.realmObject, Feature, 'Feature', [
      SchemaProperty('name', RealmPropertyType.string, primaryKey: true),
      SchemaProperty('levelAvailable', RealmPropertyType.int),
      SchemaProperty('desc', RealmPropertyType.string),
      SchemaProperty('prerequisites', RealmPropertyType.bool,
          collectionType: RealmCollectionType.map),
      SchemaProperty('option', RealmPropertyType.object,
          optional: true, linkTarget: 'Option'),
      SchemaProperty('modifiers', RealmPropertyType.object,
          linkTarget: 'Modifier', collectionType: RealmCollectionType.list),
      SchemaProperty('actions', RealmPropertyType.object,
          linkTarget: 'Action', collectionType: RealmCollectionType.list),
      SchemaProperty('typeBack', RealmPropertyType.int),
      SchemaProperty('source', RealmPropertyType.object,
          optional: true, linkTarget: 'Source'),
      SchemaProperty('classes', RealmPropertyType.linkingObjects,
          linkOriginProperty: 'features',
          collectionType: RealmCollectionType.list,
          linkTarget: 'Class'),
      SchemaProperty('backgrounds', RealmPropertyType.linkingObjects,
          linkOriginProperty: 'features',
          collectionType: RealmCollectionType.list,
          linkTarget: 'Background'),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}

class DndTable extends $DndTable
    with RealmEntity, RealmObjectBase, EmbeddedObject {
  DndTable({
    Iterable<String> columns = const [],
    Iterable<RealmValue> table = const [],
  }) {
    RealmObjectBase.set<RealmList<String>>(
        this, 'columns', RealmList<String>(columns));
    RealmObjectBase.set<RealmList<RealmValue>>(
        this, 'table', RealmList<RealmValue>(table));
  }

  DndTable._();

  @override
  RealmList<String> get columns =>
      RealmObjectBase.get<String>(this, 'columns') as RealmList<String>;
  @override
  set columns(covariant RealmList<String> value) =>
      throw RealmUnsupportedSetError();

  @override
  RealmList<RealmValue> get table =>
      RealmObjectBase.get<RealmValue>(this, 'table') as RealmList<RealmValue>;
  @override
  set table(covariant RealmList<RealmValue> value) =>
      throw RealmUnsupportedSetError();

  @override
  Stream<RealmObjectChanges<DndTable>> get changes =>
      RealmObjectBase.getChanges<DndTable>(this);

  @override
  Stream<RealmObjectChanges<DndTable>> changesFor([List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<DndTable>(this, keyPaths);

  @override
  DndTable freeze() => RealmObjectBase.freezeObject<DndTable>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'columns': columns.toEJson(),
      'table': table.toEJson(),
    };
  }

  static EJsonValue _toEJson(DndTable value) => value.toEJson();
  static DndTable _fromEJson(EJsonValue ejson) {
    return switch (ejson) {
      {
        'columns': EJsonValue columns,
        'table': EJsonValue table,
      } =>
        DndTable(
          columns: fromEJson(columns),
          table: fromEJson(table),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(DndTable._);
    register(_toEJson, _fromEJson);
    return SchemaObject(ObjectType.embeddedObject, DndTable, 'DndTable', [
      SchemaProperty('columns', RealmPropertyType.string,
          collectionType: RealmCollectionType.list),
      SchemaProperty('table', RealmPropertyType.mixed,
          optional: true, collectionType: RealmCollectionType.list),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}

class Source extends $Source with RealmEntity, RealmObjectBase, RealmObject {
  Source(
    String name,
  ) {
    RealmObjectBase.set(this, 'name', name);
  }

  Source._();

  @override
  String get name => RealmObjectBase.get<String>(this, 'name') as String;
  @override
  set name(String value) => RealmObjectBase.set(this, 'name', value);

  @override
  Stream<RealmObjectChanges<Source>> get changes =>
      RealmObjectBase.getChanges<Source>(this);

  @override
  Stream<RealmObjectChanges<Source>> changesFor([List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<Source>(this, keyPaths);

  @override
  Source freeze() => RealmObjectBase.freezeObject<Source>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'name': name.toEJson(),
    };
  }

  static EJsonValue _toEJson(Source value) => value.toEJson();
  static Source _fromEJson(EJsonValue ejson) {
    return switch (ejson) {
      {
        'name': EJsonValue name,
      } =>
        Source(
          fromEJson(name),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(Source._);
    register(_toEJson, _fromEJson);
    return SchemaObject(ObjectType.realmObject, Source, 'Source', [
      SchemaProperty('name', RealmPropertyType.string, primaryKey: true),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}

class Condition extends $Condition
    with RealmEntity, RealmObjectBase, RealmObject {
  Condition(
    String name, {
    Iterable<Modifier> modifiers = const [],
  }) {
    RealmObjectBase.set(this, 'name', name);
    RealmObjectBase.set<RealmList<Modifier>>(
        this, 'modifiers', RealmList<Modifier>(modifiers));
  }

  Condition._();

  @override
  String get name => RealmObjectBase.get<String>(this, 'name') as String;
  @override
  set name(String value) => RealmObjectBase.set(this, 'name', value);

  @override
  RealmList<Modifier> get modifiers =>
      RealmObjectBase.get<Modifier>(this, 'modifiers') as RealmList<Modifier>;
  @override
  set modifiers(covariant RealmList<Modifier> value) =>
      throw RealmUnsupportedSetError();

  @override
  Stream<RealmObjectChanges<Condition>> get changes =>
      RealmObjectBase.getChanges<Condition>(this);

  @override
  Stream<RealmObjectChanges<Condition>> changesFor([List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<Condition>(this, keyPaths);

  @override
  Condition freeze() => RealmObjectBase.freezeObject<Condition>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'name': name.toEJson(),
      'modifiers': modifiers.toEJson(),
    };
  }

  static EJsonValue _toEJson(Condition value) => value.toEJson();
  static Condition _fromEJson(EJsonValue ejson) {
    return switch (ejson) {
      {
        'name': EJsonValue name,
        'modifiers': EJsonValue modifiers,
      } =>
        Condition(
          fromEJson(name),
          modifiers: fromEJson(modifiers),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(Condition._);
    register(_toEJson, _fromEJson);
    return SchemaObject(ObjectType.realmObject, Condition, 'Condition', [
      SchemaProperty('name', RealmPropertyType.string, primaryKey: true),
      SchemaProperty('modifiers', RealmPropertyType.object,
          linkTarget: 'Modifier', collectionType: RealmCollectionType.list),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}

class AbilityScore extends $AbilityScore
    with RealmEntity, RealmObjectBase, EmbeddedObject {
  static var _defaultsSet = false;

  AbilityScore(
    int typeBack, {
    int saveThrowBonus = 0,
    int baseScore = 0,
    int raceBonus = 0,
    int miscBonus = 0,
    int abilityImprovement = 0,
    int level = 1,
  }) {
    if (!_defaultsSet) {
      _defaultsSet = RealmObjectBase.setDefaults<AbilityScore>({
        'saveThrowBonus': 0,
        'baseScore': 0,
        'raceBonus': 0,
        'miscBonus': 0,
        'abilityImprovement': 0,
        'level': 1,
      });
    }
    RealmObjectBase.set(this, 'saveThrowBonus', saveThrowBonus);
    RealmObjectBase.set(this, 'baseScore', baseScore);
    RealmObjectBase.set(this, 'raceBonus', raceBonus);
    RealmObjectBase.set(this, 'miscBonus', miscBonus);
    RealmObjectBase.set(this, 'abilityImprovement', abilityImprovement);
    RealmObjectBase.set(this, 'level', level);
    RealmObjectBase.set(this, 'typeBack', typeBack);
  }

  AbilityScore._();

  @override
  int get saveThrowBonus =>
      RealmObjectBase.get<int>(this, 'saveThrowBonus') as int;
  @override
  set saveThrowBonus(int value) =>
      RealmObjectBase.set(this, 'saveThrowBonus', value);

  @override
  int get baseScore => RealmObjectBase.get<int>(this, 'baseScore') as int;
  @override
  set baseScore(int value) => RealmObjectBase.set(this, 'baseScore', value);

  @override
  int get raceBonus => RealmObjectBase.get<int>(this, 'raceBonus') as int;
  @override
  set raceBonus(int value) => RealmObjectBase.set(this, 'raceBonus', value);

  @override
  int get miscBonus => RealmObjectBase.get<int>(this, 'miscBonus') as int;
  @override
  set miscBonus(int value) => RealmObjectBase.set(this, 'miscBonus', value);

  @override
  int get abilityImprovement =>
      RealmObjectBase.get<int>(this, 'abilityImprovement') as int;
  @override
  set abilityImprovement(int value) =>
      RealmObjectBase.set(this, 'abilityImprovement', value);

  @override
  int get level => RealmObjectBase.get<int>(this, 'level') as int;
  @override
  set level(int value) => RealmObjectBase.set(this, 'level', value);

  @override
  int get typeBack => RealmObjectBase.get<int>(this, 'typeBack') as int;
  @override
  set typeBack(int value) => RealmObjectBase.set(this, 'typeBack', value);

  @override
  Stream<RealmObjectChanges<AbilityScore>> get changes =>
      RealmObjectBase.getChanges<AbilityScore>(this);

  @override
  Stream<RealmObjectChanges<AbilityScore>> changesFor(
          [List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<AbilityScore>(this, keyPaths);

  @override
  AbilityScore freeze() => RealmObjectBase.freezeObject<AbilityScore>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'saveThrowBonus': saveThrowBonus.toEJson(),
      'baseScore': baseScore.toEJson(),
      'raceBonus': raceBonus.toEJson(),
      'miscBonus': miscBonus.toEJson(),
      'abilityImprovement': abilityImprovement.toEJson(),
      'level': level.toEJson(),
      'typeBack': typeBack.toEJson(),
    };
  }

  static EJsonValue _toEJson(AbilityScore value) => value.toEJson();
  static AbilityScore _fromEJson(EJsonValue ejson) {
    return switch (ejson) {
      {
        'saveThrowBonus': EJsonValue saveThrowBonus,
        'baseScore': EJsonValue baseScore,
        'raceBonus': EJsonValue raceBonus,
        'miscBonus': EJsonValue miscBonus,
        'abilityImprovement': EJsonValue abilityImprovement,
        'level': EJsonValue level,
        'typeBack': EJsonValue typeBack,
      } =>
        AbilityScore(
          fromEJson(typeBack),
          saveThrowBonus: fromEJson(saveThrowBonus),
          baseScore: fromEJson(baseScore),
          raceBonus: fromEJson(raceBonus),
          miscBonus: fromEJson(miscBonus),
          abilityImprovement: fromEJson(abilityImprovement),
          level: fromEJson(level),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(AbilityScore._);
    register(_toEJson, _fromEJson);
    return SchemaObject(
        ObjectType.embeddedObject, AbilityScore, 'AbilityScore', [
      SchemaProperty('saveThrowBonus', RealmPropertyType.int),
      SchemaProperty('baseScore', RealmPropertyType.int),
      SchemaProperty('raceBonus', RealmPropertyType.int),
      SchemaProperty('miscBonus', RealmPropertyType.int),
      SchemaProperty('abilityImprovement', RealmPropertyType.int),
      SchemaProperty('level', RealmPropertyType.int),
      SchemaProperty('typeBack', RealmPropertyType.int),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}

class Abilities extends $Abilities
    with RealmEntity, RealmObjectBase, EmbeddedObject {
  static var _defaultsSet = false;

  Abilities({
    AbilityScore? strength,
    AbilityScore? dexterity,
    AbilityScore? constitution,
    AbilityScore? intelligence,
    AbilityScore? wisdom,
    AbilityScore? charisma,
    int levelBack = 1,
    Map<String, int> skillBonuses = const {},
    bool athlete = false,
    bool acrobat = false,
    bool sleight = false,
    bool stealthy = false,
    bool arcane = false,
    bool historical = false,
    bool investigative = false,
    bool natural = false,
    bool religious = false,
    bool animal = false,
    bool insightful = false,
    bool medicinal = false,
    bool perceptive = false,
    bool survivor = false,
    bool deceptive = false,
    bool intimidating = false,
    bool performer = false,
    bool persuasive = false,
  }) {
    if (!_defaultsSet) {
      _defaultsSet = RealmObjectBase.setDefaults<Abilities>({
        'levelBack': 1,
        'athlete': false,
        'acrobat': false,
        'sleight': false,
        'stealthy': false,
        'arcane': false,
        'historical': false,
        'investigative': false,
        'natural': false,
        'religious': false,
        'animal': false,
        'insightful': false,
        'medicinal': false,
        'perceptive': false,
        'survivor': false,
        'deceptive': false,
        'intimidating': false,
        'performer': false,
        'persuasive': false,
      });
    }
    RealmObjectBase.set(this, 'strength', strength);
    RealmObjectBase.set(this, 'dexterity', dexterity);
    RealmObjectBase.set(this, 'constitution', constitution);
    RealmObjectBase.set(this, 'intelligence', intelligence);
    RealmObjectBase.set(this, 'wisdom', wisdom);
    RealmObjectBase.set(this, 'charisma', charisma);
    RealmObjectBase.set(this, 'levelBack', levelBack);
    RealmObjectBase.set<RealmMap<int>>(
        this, 'skillBonuses', RealmMap<int>(skillBonuses));
    RealmObjectBase.set(this, 'athlete', athlete);
    RealmObjectBase.set(this, 'acrobat', acrobat);
    RealmObjectBase.set(this, 'sleight', sleight);
    RealmObjectBase.set(this, 'stealthy', stealthy);
    RealmObjectBase.set(this, 'arcane', arcane);
    RealmObjectBase.set(this, 'historical', historical);
    RealmObjectBase.set(this, 'investigative', investigative);
    RealmObjectBase.set(this, 'natural', natural);
    RealmObjectBase.set(this, 'religious', religious);
    RealmObjectBase.set(this, 'animal', animal);
    RealmObjectBase.set(this, 'insightful', insightful);
    RealmObjectBase.set(this, 'medicinal', medicinal);
    RealmObjectBase.set(this, 'perceptive', perceptive);
    RealmObjectBase.set(this, 'survivor', survivor);
    RealmObjectBase.set(this, 'deceptive', deceptive);
    RealmObjectBase.set(this, 'intimidating', intimidating);
    RealmObjectBase.set(this, 'performer', performer);
    RealmObjectBase.set(this, 'persuasive', persuasive);
  }

  Abilities._();

  @override
  AbilityScore? get strength =>
      RealmObjectBase.get<AbilityScore>(this, 'strength') as AbilityScore?;
  @override
  set strength(covariant AbilityScore? value) =>
      RealmObjectBase.set(this, 'strength', value);

  @override
  AbilityScore? get dexterity =>
      RealmObjectBase.get<AbilityScore>(this, 'dexterity') as AbilityScore?;
  @override
  set dexterity(covariant AbilityScore? value) =>
      RealmObjectBase.set(this, 'dexterity', value);

  @override
  AbilityScore? get constitution =>
      RealmObjectBase.get<AbilityScore>(this, 'constitution') as AbilityScore?;
  @override
  set constitution(covariant AbilityScore? value) =>
      RealmObjectBase.set(this, 'constitution', value);

  @override
  AbilityScore? get intelligence =>
      RealmObjectBase.get<AbilityScore>(this, 'intelligence') as AbilityScore?;
  @override
  set intelligence(covariant AbilityScore? value) =>
      RealmObjectBase.set(this, 'intelligence', value);

  @override
  AbilityScore? get wisdom =>
      RealmObjectBase.get<AbilityScore>(this, 'wisdom') as AbilityScore?;
  @override
  set wisdom(covariant AbilityScore? value) =>
      RealmObjectBase.set(this, 'wisdom', value);

  @override
  AbilityScore? get charisma =>
      RealmObjectBase.get<AbilityScore>(this, 'charisma') as AbilityScore?;
  @override
  set charisma(covariant AbilityScore? value) =>
      RealmObjectBase.set(this, 'charisma', value);

  @override
  int get levelBack => RealmObjectBase.get<int>(this, 'levelBack') as int;
  @override
  set levelBack(int value) => RealmObjectBase.set(this, 'levelBack', value);

  @override
  RealmMap<int> get skillBonuses =>
      RealmObjectBase.get<int>(this, 'skillBonuses') as RealmMap<int>;
  @override
  set skillBonuses(covariant RealmMap<int> value) =>
      throw RealmUnsupportedSetError();

  @override
  bool get athlete => RealmObjectBase.get<bool>(this, 'athlete') as bool;
  @override
  set athlete(bool value) => RealmObjectBase.set(this, 'athlete', value);

  @override
  bool get acrobat => RealmObjectBase.get<bool>(this, 'acrobat') as bool;
  @override
  set acrobat(bool value) => RealmObjectBase.set(this, 'acrobat', value);

  @override
  bool get sleight => RealmObjectBase.get<bool>(this, 'sleight') as bool;
  @override
  set sleight(bool value) => RealmObjectBase.set(this, 'sleight', value);

  @override
  bool get stealthy => RealmObjectBase.get<bool>(this, 'stealthy') as bool;
  @override
  set stealthy(bool value) => RealmObjectBase.set(this, 'stealthy', value);

  @override
  bool get arcane => RealmObjectBase.get<bool>(this, 'arcane') as bool;
  @override
  set arcane(bool value) => RealmObjectBase.set(this, 'arcane', value);

  @override
  bool get historical => RealmObjectBase.get<bool>(this, 'historical') as bool;
  @override
  set historical(bool value) => RealmObjectBase.set(this, 'historical', value);

  @override
  bool get investigative =>
      RealmObjectBase.get<bool>(this, 'investigative') as bool;
  @override
  set investigative(bool value) =>
      RealmObjectBase.set(this, 'investigative', value);

  @override
  bool get natural => RealmObjectBase.get<bool>(this, 'natural') as bool;
  @override
  set natural(bool value) => RealmObjectBase.set(this, 'natural', value);

  @override
  bool get religious => RealmObjectBase.get<bool>(this, 'religious') as bool;
  @override
  set religious(bool value) => RealmObjectBase.set(this, 'religious', value);

  @override
  bool get animal => RealmObjectBase.get<bool>(this, 'animal') as bool;
  @override
  set animal(bool value) => RealmObjectBase.set(this, 'animal', value);

  @override
  bool get insightful => RealmObjectBase.get<bool>(this, 'insightful') as bool;
  @override
  set insightful(bool value) => RealmObjectBase.set(this, 'insightful', value);

  @override
  bool get medicinal => RealmObjectBase.get<bool>(this, 'medicinal') as bool;
  @override
  set medicinal(bool value) => RealmObjectBase.set(this, 'medicinal', value);

  @override
  bool get perceptive => RealmObjectBase.get<bool>(this, 'perceptive') as bool;
  @override
  set perceptive(bool value) => RealmObjectBase.set(this, 'perceptive', value);

  @override
  bool get survivor => RealmObjectBase.get<bool>(this, 'survivor') as bool;
  @override
  set survivor(bool value) => RealmObjectBase.set(this, 'survivor', value);

  @override
  bool get deceptive => RealmObjectBase.get<bool>(this, 'deceptive') as bool;
  @override
  set deceptive(bool value) => RealmObjectBase.set(this, 'deceptive', value);

  @override
  bool get intimidating =>
      RealmObjectBase.get<bool>(this, 'intimidating') as bool;
  @override
  set intimidating(bool value) =>
      RealmObjectBase.set(this, 'intimidating', value);

  @override
  bool get performer => RealmObjectBase.get<bool>(this, 'performer') as bool;
  @override
  set performer(bool value) => RealmObjectBase.set(this, 'performer', value);

  @override
  bool get persuasive => RealmObjectBase.get<bool>(this, 'persuasive') as bool;
  @override
  set persuasive(bool value) => RealmObjectBase.set(this, 'persuasive', value);

  @override
  Stream<RealmObjectChanges<Abilities>> get changes =>
      RealmObjectBase.getChanges<Abilities>(this);

  @override
  Stream<RealmObjectChanges<Abilities>> changesFor([List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<Abilities>(this, keyPaths);

  @override
  Abilities freeze() => RealmObjectBase.freezeObject<Abilities>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'strength': strength.toEJson(),
      'dexterity': dexterity.toEJson(),
      'constitution': constitution.toEJson(),
      'intelligence': intelligence.toEJson(),
      'wisdom': wisdom.toEJson(),
      'charisma': charisma.toEJson(),
      'levelBack': levelBack.toEJson(),
      'skillBonuses': skillBonuses.toEJson(),
      'athlete': athlete.toEJson(),
      'acrobat': acrobat.toEJson(),
      'sleight': sleight.toEJson(),
      'stealthy': stealthy.toEJson(),
      'arcane': arcane.toEJson(),
      'historical': historical.toEJson(),
      'investigative': investigative.toEJson(),
      'natural': natural.toEJson(),
      'religious': religious.toEJson(),
      'animal': animal.toEJson(),
      'insightful': insightful.toEJson(),
      'medicinal': medicinal.toEJson(),
      'perceptive': perceptive.toEJson(),
      'survivor': survivor.toEJson(),
      'deceptive': deceptive.toEJson(),
      'intimidating': intimidating.toEJson(),
      'performer': performer.toEJson(),
      'persuasive': persuasive.toEJson(),
    };
  }

  static EJsonValue _toEJson(Abilities value) => value.toEJson();
  static Abilities _fromEJson(EJsonValue ejson) {
    return switch (ejson) {
      {
        'strength': EJsonValue strength,
        'dexterity': EJsonValue dexterity,
        'constitution': EJsonValue constitution,
        'intelligence': EJsonValue intelligence,
        'wisdom': EJsonValue wisdom,
        'charisma': EJsonValue charisma,
        'levelBack': EJsonValue levelBack,
        'skillBonuses': EJsonValue skillBonuses,
        'athlete': EJsonValue athlete,
        'acrobat': EJsonValue acrobat,
        'sleight': EJsonValue sleight,
        'stealthy': EJsonValue stealthy,
        'arcane': EJsonValue arcane,
        'historical': EJsonValue historical,
        'investigative': EJsonValue investigative,
        'natural': EJsonValue natural,
        'religious': EJsonValue religious,
        'animal': EJsonValue animal,
        'insightful': EJsonValue insightful,
        'medicinal': EJsonValue medicinal,
        'perceptive': EJsonValue perceptive,
        'survivor': EJsonValue survivor,
        'deceptive': EJsonValue deceptive,
        'intimidating': EJsonValue intimidating,
        'performer': EJsonValue performer,
        'persuasive': EJsonValue persuasive,
      } =>
        Abilities(
          strength: fromEJson(strength),
          dexterity: fromEJson(dexterity),
          constitution: fromEJson(constitution),
          intelligence: fromEJson(intelligence),
          wisdom: fromEJson(wisdom),
          charisma: fromEJson(charisma),
          levelBack: fromEJson(levelBack),
          skillBonuses: fromEJson(skillBonuses),
          athlete: fromEJson(athlete),
          acrobat: fromEJson(acrobat),
          sleight: fromEJson(sleight),
          stealthy: fromEJson(stealthy),
          arcane: fromEJson(arcane),
          historical: fromEJson(historical),
          investigative: fromEJson(investigative),
          natural: fromEJson(natural),
          religious: fromEJson(religious),
          animal: fromEJson(animal),
          insightful: fromEJson(insightful),
          medicinal: fromEJson(medicinal),
          perceptive: fromEJson(perceptive),
          survivor: fromEJson(survivor),
          deceptive: fromEJson(deceptive),
          intimidating: fromEJson(intimidating),
          performer: fromEJson(performer),
          persuasive: fromEJson(persuasive),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(Abilities._);
    register(_toEJson, _fromEJson);
    return SchemaObject(ObjectType.embeddedObject, Abilities, 'Abilities', [
      SchemaProperty('strength', RealmPropertyType.object,
          optional: true, linkTarget: 'AbilityScore'),
      SchemaProperty('dexterity', RealmPropertyType.object,
          optional: true, linkTarget: 'AbilityScore'),
      SchemaProperty('constitution', RealmPropertyType.object,
          optional: true, linkTarget: 'AbilityScore'),
      SchemaProperty('intelligence', RealmPropertyType.object,
          optional: true, linkTarget: 'AbilityScore'),
      SchemaProperty('wisdom', RealmPropertyType.object,
          optional: true, linkTarget: 'AbilityScore'),
      SchemaProperty('charisma', RealmPropertyType.object,
          optional: true, linkTarget: 'AbilityScore'),
      SchemaProperty('levelBack', RealmPropertyType.int),
      SchemaProperty('skillBonuses', RealmPropertyType.int,
          collectionType: RealmCollectionType.map),
      SchemaProperty('athlete', RealmPropertyType.bool),
      SchemaProperty('acrobat', RealmPropertyType.bool),
      SchemaProperty('sleight', RealmPropertyType.bool),
      SchemaProperty('stealthy', RealmPropertyType.bool),
      SchemaProperty('arcane', RealmPropertyType.bool),
      SchemaProperty('historical', RealmPropertyType.bool),
      SchemaProperty('investigative', RealmPropertyType.bool),
      SchemaProperty('natural', RealmPropertyType.bool),
      SchemaProperty('religious', RealmPropertyType.bool),
      SchemaProperty('animal', RealmPropertyType.bool),
      SchemaProperty('insightful', RealmPropertyType.bool),
      SchemaProperty('medicinal', RealmPropertyType.bool),
      SchemaProperty('perceptive', RealmPropertyType.bool),
      SchemaProperty('survivor', RealmPropertyType.bool),
      SchemaProperty('deceptive', RealmPropertyType.bool),
      SchemaProperty('intimidating', RealmPropertyType.bool),
      SchemaProperty('performer', RealmPropertyType.bool),
      SchemaProperty('persuasive', RealmPropertyType.bool),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}

class Spellcaster extends $Spellcaster
    with RealmEntity, RealmObjectBase, EmbeddedObject {
  static var _defaultsSet = false;

  Spellcaster({
    int? levelObtained = 1,
    String desc = 'No Description',
    Map<String, String> features = const {},
    String spellAbilityDesc = 'No Description',
    bool isRitualCaster = false,
    bool canUseFocus = false,
    bool isInnate = false,
    bool isPsionic = false,
    int spellAbilityBack = 0,
    int focusTypeBack = 0,
    String? focusSubtype,
  }) {
    if (!_defaultsSet) {
      _defaultsSet = RealmObjectBase.setDefaults<Spellcaster>({
        'levelObtained': 1,
        'desc': 'No Description',
        'spellAbilityDesc': 'No Description',
        'isRitualCaster': false,
        'canUseFocus': false,
        'isInnate': false,
        'isPsionic': false,
        'spellAbilityBack': 0,
        'focusTypeBack': 0,
      });
    }
    RealmObjectBase.set(this, 'levelObtained', levelObtained);
    RealmObjectBase.set(this, 'desc', desc);
    RealmObjectBase.set<RealmMap<String>>(
        this, 'features', RealmMap<String>(features));
    RealmObjectBase.set(this, 'spellAbilityDesc', spellAbilityDesc);
    RealmObjectBase.set(this, 'isRitualCaster', isRitualCaster);
    RealmObjectBase.set(this, 'canUseFocus', canUseFocus);
    RealmObjectBase.set(this, 'isInnate', isInnate);
    RealmObjectBase.set(this, 'isPsionic', isPsionic);
    RealmObjectBase.set(this, 'spellAbilityBack', spellAbilityBack);
    RealmObjectBase.set(this, 'focusTypeBack', focusTypeBack);
    RealmObjectBase.set(this, 'focusSubtype', focusSubtype);
  }

  Spellcaster._();

  @override
  int? get levelObtained =>
      RealmObjectBase.get<int>(this, 'levelObtained') as int?;
  @override
  set levelObtained(int? value) =>
      RealmObjectBase.set(this, 'levelObtained', value);

  @override
  String get desc => RealmObjectBase.get<String>(this, 'desc') as String;
  @override
  set desc(String value) => RealmObjectBase.set(this, 'desc', value);

  @override
  RealmMap<String> get features =>
      RealmObjectBase.get<String>(this, 'features') as RealmMap<String>;
  @override
  set features(covariant RealmMap<String> value) =>
      throw RealmUnsupportedSetError();

  @override
  String get spellAbilityDesc =>
      RealmObjectBase.get<String>(this, 'spellAbilityDesc') as String;
  @override
  set spellAbilityDesc(String value) =>
      RealmObjectBase.set(this, 'spellAbilityDesc', value);

  @override
  bool get isRitualCaster =>
      RealmObjectBase.get<bool>(this, 'isRitualCaster') as bool;
  @override
  set isRitualCaster(bool value) =>
      RealmObjectBase.set(this, 'isRitualCaster', value);

  @override
  bool get canUseFocus =>
      RealmObjectBase.get<bool>(this, 'canUseFocus') as bool;
  @override
  set canUseFocus(bool value) =>
      RealmObjectBase.set(this, 'canUseFocus', value);

  @override
  bool get isInnate => RealmObjectBase.get<bool>(this, 'isInnate') as bool;
  @override
  set isInnate(bool value) => RealmObjectBase.set(this, 'isInnate', value);

  @override
  bool get isPsionic => RealmObjectBase.get<bool>(this, 'isPsionic') as bool;
  @override
  set isPsionic(bool value) => RealmObjectBase.set(this, 'isPsionic', value);

  @override
  int get spellAbilityBack =>
      RealmObjectBase.get<int>(this, 'spellAbilityBack') as int;
  @override
  set spellAbilityBack(int value) =>
      RealmObjectBase.set(this, 'spellAbilityBack', value);

  @override
  int get focusTypeBack =>
      RealmObjectBase.get<int>(this, 'focusTypeBack') as int;
  @override
  set focusTypeBack(int value) =>
      RealmObjectBase.set(this, 'focusTypeBack', value);

  @override
  String? get focusSubtype =>
      RealmObjectBase.get<String>(this, 'focusSubtype') as String?;
  @override
  set focusSubtype(String? value) =>
      RealmObjectBase.set(this, 'focusSubtype', value);

  @override
  Stream<RealmObjectChanges<Spellcaster>> get changes =>
      RealmObjectBase.getChanges<Spellcaster>(this);

  @override
  Stream<RealmObjectChanges<Spellcaster>> changesFor(
          [List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<Spellcaster>(this, keyPaths);

  @override
  Spellcaster freeze() => RealmObjectBase.freezeObject<Spellcaster>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'levelObtained': levelObtained.toEJson(),
      'desc': desc.toEJson(),
      'features': features.toEJson(),
      'spellAbilityDesc': spellAbilityDesc.toEJson(),
      'isRitualCaster': isRitualCaster.toEJson(),
      'canUseFocus': canUseFocus.toEJson(),
      'isInnate': isInnate.toEJson(),
      'isPsionic': isPsionic.toEJson(),
      'spellAbilityBack': spellAbilityBack.toEJson(),
      'focusTypeBack': focusTypeBack.toEJson(),
      'focusSubtype': focusSubtype.toEJson(),
    };
  }

  static EJsonValue _toEJson(Spellcaster value) => value.toEJson();
  static Spellcaster _fromEJson(EJsonValue ejson) {
    return switch (ejson) {
      {
        'levelObtained': EJsonValue levelObtained,
        'desc': EJsonValue desc,
        'features': EJsonValue features,
        'spellAbilityDesc': EJsonValue spellAbilityDesc,
        'isRitualCaster': EJsonValue isRitualCaster,
        'canUseFocus': EJsonValue canUseFocus,
        'isInnate': EJsonValue isInnate,
        'isPsionic': EJsonValue isPsionic,
        'spellAbilityBack': EJsonValue spellAbilityBack,
        'focusTypeBack': EJsonValue focusTypeBack,
        'focusSubtype': EJsonValue focusSubtype,
      } =>
        Spellcaster(
          levelObtained: fromEJson(levelObtained),
          desc: fromEJson(desc),
          features: fromEJson(features),
          spellAbilityDesc: fromEJson(spellAbilityDesc),
          isRitualCaster: fromEJson(isRitualCaster),
          canUseFocus: fromEJson(canUseFocus),
          isInnate: fromEJson(isInnate),
          isPsionic: fromEJson(isPsionic),
          spellAbilityBack: fromEJson(spellAbilityBack),
          focusTypeBack: fromEJson(focusTypeBack),
          focusSubtype: fromEJson(focusSubtype),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(Spellcaster._);
    register(_toEJson, _fromEJson);
    return SchemaObject(ObjectType.embeddedObject, Spellcaster, 'Spellcaster', [
      SchemaProperty('levelObtained', RealmPropertyType.int, optional: true),
      SchemaProperty('desc', RealmPropertyType.string),
      SchemaProperty('features', RealmPropertyType.string,
          collectionType: RealmCollectionType.map),
      SchemaProperty('spellAbilityDesc', RealmPropertyType.string),
      SchemaProperty('isRitualCaster', RealmPropertyType.bool),
      SchemaProperty('canUseFocus', RealmPropertyType.bool),
      SchemaProperty('isInnate', RealmPropertyType.bool),
      SchemaProperty('isPsionic', RealmPropertyType.bool),
      SchemaProperty('spellAbilityBack', RealmPropertyType.int),
      SchemaProperty('focusTypeBack', RealmPropertyType.int),
      SchemaProperty('focusSubtype', RealmPropertyType.string, optional: true),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}

class EquipmentSubtype extends $EquipmentSubtype
    with RealmEntity, RealmObjectBase, RealmObject {
  EquipmentSubtype(
    String name,
  ) {
    RealmObjectBase.set(this, 'name', name);
  }

  EquipmentSubtype._();

  @override
  String get name => RealmObjectBase.get<String>(this, 'name') as String;
  @override
  set name(String value) => RealmObjectBase.set(this, 'name', value);

  @override
  Stream<RealmObjectChanges<EquipmentSubtype>> get changes =>
      RealmObjectBase.getChanges<EquipmentSubtype>(this);

  @override
  Stream<RealmObjectChanges<EquipmentSubtype>> changesFor(
          [List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<EquipmentSubtype>(this, keyPaths);

  @override
  EquipmentSubtype freeze() =>
      RealmObjectBase.freezeObject<EquipmentSubtype>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'name': name.toEJson(),
    };
  }

  static EJsonValue _toEJson(EquipmentSubtype value) => value.toEJson();
  static EquipmentSubtype _fromEJson(EJsonValue ejson) {
    return switch (ejson) {
      {
        'name': EJsonValue name,
      } =>
        EquipmentSubtype(
          fromEJson(name),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(EquipmentSubtype._);
    register(_toEJson, _fromEJson);
    return SchemaObject(
        ObjectType.realmObject, EquipmentSubtype, 'EquipmentSubtype', [
      SchemaProperty('name', RealmPropertyType.string, primaryKey: true),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}

class Rarity extends $Rarity with RealmEntity, RealmObjectBase, RealmObject {
  Rarity(
    String name,
  ) {
    RealmObjectBase.set(this, 'name', name);
  }

  Rarity._();

  @override
  String get name => RealmObjectBase.get<String>(this, 'name') as String;
  @override
  set name(String value) => RealmObjectBase.set(this, 'name', value);

  @override
  Stream<RealmObjectChanges<Rarity>> get changes =>
      RealmObjectBase.getChanges<Rarity>(this);

  @override
  Stream<RealmObjectChanges<Rarity>> changesFor([List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<Rarity>(this, keyPaths);

  @override
  Rarity freeze() => RealmObjectBase.freezeObject<Rarity>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'name': name.toEJson(),
    };
  }

  static EJsonValue _toEJson(Rarity value) => value.toEJson();
  static Rarity _fromEJson(EJsonValue ejson) {
    return switch (ejson) {
      {
        'name': EJsonValue name,
      } =>
        Rarity(
          fromEJson(name),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(Rarity._);
    register(_toEJson, _fromEJson);
    return SchemaObject(ObjectType.realmObject, Rarity, 'Rarity', [
      SchemaProperty('name', RealmPropertyType.string, primaryKey: true),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}
