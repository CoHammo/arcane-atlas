// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'creature.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

// ignore_for_file: type=lint
class Creature extends $Creature
    with RealmEntity, RealmObjectBase, RealmObject {
  static var _defaultsSet = false;

  Creature(
    String name, {
    Uint8List? image,
    String desc = 'No Description',
    int armorClass = 0,
    bool hasNaturalArmor = false,
    int speed = 30,
    DiceRoller? hitDice,
    Abilities? abilities,
    int xpWorth = 0,
    Map<String, int> skillBonuses = const {},
    int exhaustionLevel = 0,
    Iterable<String> vulnerabilities = const [],
    Iterable<String> resistances = const [],
    Iterable<String> immunities = const [],
    Iterable<Condition> conditionImmunities = const [],
    Iterable<String> senses = const [],
    bool hasTelepathy = false,
    int telepathyRange = 0,
    double challengeRating = 0,
    Iterable<int> movementModes = const [],
    int size = 0,
    int type = 0,
    int alignment = 0,
    Iterable<Equipment> inventory = const [],
    Iterable<Feature> features = const [],
    Iterable<Action> actions = const [],
    Spellcaster? spellcaster,
    Iterable<Spell> spells = const [],
    Iterable<RealmValue> spellSlots = const [],
    Iterable<Language> languages = const [],
    Source? source,
  }) {
    if (!_defaultsSet) {
      _defaultsSet = RealmObjectBase.setDefaults<Creature>({
        'desc': 'No Description',
        'armorClass': 0,
        'hasNaturalArmor': false,
        'speed': 30,
        'xpWorth': 0,
        'exhaustionLevel': 0,
        'hasTelepathy': false,
        'telepathyRange': 0,
        '_challengeRating': 0,
        '_size': 0,
        '_type': 0,
        '_alignment': 0,
      });
    }
    RealmObjectBase.set(this, 'name', name);
    RealmObjectBase.set(this, 'image', image);
    RealmObjectBase.set(this, 'desc', desc);
    RealmObjectBase.set(this, 'armorClass', armorClass);
    RealmObjectBase.set(this, 'hasNaturalArmor', hasNaturalArmor);
    RealmObjectBase.set(this, 'speed', speed);
    RealmObjectBase.set(this, 'hitDice', hitDice);
    RealmObjectBase.set(this, 'abilities', abilities);
    RealmObjectBase.set(this, 'xpWorth', xpWorth);
    RealmObjectBase.set<RealmMap<int>>(
        this, 'skillBonuses', RealmMap<int>(skillBonuses));
    RealmObjectBase.set(this, 'exhaustionLevel', exhaustionLevel);
    RealmObjectBase.set<RealmList<String>>(
        this, 'vulnerabilities', RealmList<String>(vulnerabilities));
    RealmObjectBase.set<RealmList<String>>(
        this, 'resistances', RealmList<String>(resistances));
    RealmObjectBase.set<RealmList<String>>(
        this, 'immunities', RealmList<String>(immunities));
    RealmObjectBase.set<RealmList<Condition>>(
        this, 'conditionImmunities', RealmList<Condition>(conditionImmunities));
    RealmObjectBase.set<RealmList<String>>(
        this, 'senses', RealmList<String>(senses));
    RealmObjectBase.set(this, 'hasTelepathy', hasTelepathy);
    RealmObjectBase.set(this, 'telepathyRange', telepathyRange);
    RealmObjectBase.set(this, '_challengeRating', challengeRating);
    RealmObjectBase.set<RealmList<int>>(
        this, '_movementModes', RealmList<int>(movementModes));
    RealmObjectBase.set(this, '_size', size);
    RealmObjectBase.set(this, '_type', type);
    RealmObjectBase.set(this, '_alignment', alignment);
    RealmObjectBase.set<RealmList<Equipment>>(
        this, 'inventory', RealmList<Equipment>(inventory));
    RealmObjectBase.set<RealmList<Feature>>(
        this, 'features', RealmList<Feature>(features));
    RealmObjectBase.set<RealmList<Action>>(
        this, 'actions', RealmList<Action>(actions));
    RealmObjectBase.set(this, 'spellcaster', spellcaster);
    RealmObjectBase.set<RealmList<Spell>>(
        this, 'spells', RealmList<Spell>(spells));
    RealmObjectBase.set<RealmList<RealmValue>>(
        this, 'spellSlots', RealmList<RealmValue>(spellSlots));
    RealmObjectBase.set<RealmList<Language>>(
        this, 'languages', RealmList<Language>(languages));
    RealmObjectBase.set(this, 'source', source);
  }

  Creature._();

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
  int get armorClass => RealmObjectBase.get<int>(this, 'armorClass') as int;
  @override
  set armorClass(int value) => RealmObjectBase.set(this, 'armorClass', value);

  @override
  bool get hasNaturalArmor =>
      RealmObjectBase.get<bool>(this, 'hasNaturalArmor') as bool;
  @override
  set hasNaturalArmor(bool value) =>
      RealmObjectBase.set(this, 'hasNaturalArmor', value);

  @override
  int get speed => RealmObjectBase.get<int>(this, 'speed') as int;
  @override
  set speed(int value) => RealmObjectBase.set(this, 'speed', value);

  @override
  DiceRoller? get hitDice =>
      RealmObjectBase.get<DiceRoller>(this, 'hitDice') as DiceRoller?;
  @override
  set hitDice(covariant DiceRoller? value) =>
      RealmObjectBase.set(this, 'hitDice', value);

  @override
  Abilities? get abilities =>
      RealmObjectBase.get<Abilities>(this, 'abilities') as Abilities?;
  @override
  set abilities(covariant Abilities? value) =>
      RealmObjectBase.set(this, 'abilities', value);

  @override
  int get xpWorth => RealmObjectBase.get<int>(this, 'xpWorth') as int;
  @override
  set xpWorth(int value) => RealmObjectBase.set(this, 'xpWorth', value);

  @override
  RealmMap<int> get skillBonuses =>
      RealmObjectBase.get<int>(this, 'skillBonuses') as RealmMap<int>;
  @override
  set skillBonuses(covariant RealmMap<int> value) =>
      throw RealmUnsupportedSetError();

  @override
  int get exhaustionLevel =>
      RealmObjectBase.get<int>(this, 'exhaustionLevel') as int;
  @override
  set exhaustionLevel(int value) =>
      RealmObjectBase.set(this, 'exhaustionLevel', value);

  @override
  RealmList<String> get vulnerabilities =>
      RealmObjectBase.get<String>(this, 'vulnerabilities') as RealmList<String>;
  @override
  set vulnerabilities(covariant RealmList<String> value) =>
      throw RealmUnsupportedSetError();

  @override
  RealmList<String> get resistances =>
      RealmObjectBase.get<String>(this, 'resistances') as RealmList<String>;
  @override
  set resistances(covariant RealmList<String> value) =>
      throw RealmUnsupportedSetError();

  @override
  RealmList<String> get immunities =>
      RealmObjectBase.get<String>(this, 'immunities') as RealmList<String>;
  @override
  set immunities(covariant RealmList<String> value) =>
      throw RealmUnsupportedSetError();

  @override
  RealmList<Condition> get conditionImmunities =>
      RealmObjectBase.get<Condition>(this, 'conditionImmunities')
          as RealmList<Condition>;
  @override
  set conditionImmunities(covariant RealmList<Condition> value) =>
      throw RealmUnsupportedSetError();

  @override
  RealmList<String> get senses =>
      RealmObjectBase.get<String>(this, 'senses') as RealmList<String>;
  @override
  set senses(covariant RealmList<String> value) =>
      throw RealmUnsupportedSetError();

  @override
  bool get hasTelepathy =>
      RealmObjectBase.get<bool>(this, 'hasTelepathy') as bool;
  @override
  set hasTelepathy(bool value) =>
      RealmObjectBase.set(this, 'hasTelepathy', value);

  @override
  int get telepathyRange =>
      RealmObjectBase.get<int>(this, 'telepathyRange') as int;
  @override
  set telepathyRange(int value) =>
      RealmObjectBase.set(this, 'telepathyRange', value);

  @override
  double get _challengeRating =>
      RealmObjectBase.get<double>(this, '_challengeRating') as double;
  @override
  set _challengeRating(double value) =>
      RealmObjectBase.set(this, '_challengeRating', value);

  @override
  RealmList<int> get _movementModes =>
      RealmObjectBase.get<int>(this, '_movementModes') as RealmList<int>;
  @override
  set _movementModes(covariant RealmList<int> value) =>
      throw RealmUnsupportedSetError();

  @override
  int get _size => RealmObjectBase.get<int>(this, '_size') as int;
  @override
  set _size(int value) => RealmObjectBase.set(this, '_size', value);

  @override
  int get _type => RealmObjectBase.get<int>(this, '_type') as int;
  @override
  set _type(int value) => RealmObjectBase.set(this, '_type', value);

  @override
  int get _alignment => RealmObjectBase.get<int>(this, '_alignment') as int;
  @override
  set _alignment(int value) => RealmObjectBase.set(this, '_alignment', value);

  @override
  RealmList<Equipment> get inventory =>
      RealmObjectBase.get<Equipment>(this, 'inventory') as RealmList<Equipment>;
  @override
  set inventory(covariant RealmList<Equipment> value) =>
      throw RealmUnsupportedSetError();

  @override
  RealmList<Feature> get features =>
      RealmObjectBase.get<Feature>(this, 'features') as RealmList<Feature>;
  @override
  set features(covariant RealmList<Feature> value) =>
      throw RealmUnsupportedSetError();

  @override
  RealmList<Action> get actions =>
      RealmObjectBase.get<Action>(this, 'actions') as RealmList<Action>;
  @override
  set actions(covariant RealmList<Action> value) =>
      throw RealmUnsupportedSetError();

  @override
  Spellcaster? get spellcaster =>
      RealmObjectBase.get<Spellcaster>(this, 'spellcaster') as Spellcaster?;
  @override
  set spellcaster(covariant Spellcaster? value) =>
      RealmObjectBase.set(this, 'spellcaster', value);

  @override
  RealmList<Spell> get spells =>
      RealmObjectBase.get<Spell>(this, 'spells') as RealmList<Spell>;
  @override
  set spells(covariant RealmList<Spell> value) =>
      throw RealmUnsupportedSetError();

  @override
  RealmList<RealmValue> get spellSlots =>
      RealmObjectBase.get<RealmValue>(this, 'spellSlots')
          as RealmList<RealmValue>;
  @override
  set spellSlots(covariant RealmList<RealmValue> value) =>
      throw RealmUnsupportedSetError();

  @override
  RealmList<Language> get languages =>
      RealmObjectBase.get<Language>(this, 'languages') as RealmList<Language>;
  @override
  set languages(covariant RealmList<Language> value) =>
      throw RealmUnsupportedSetError();

  @override
  Source? get source => RealmObjectBase.get<Source>(this, 'source') as Source?;
  @override
  set source(covariant Source? value) =>
      RealmObjectBase.set(this, 'source', value);

  @override
  Stream<RealmObjectChanges<Creature>> get changes =>
      RealmObjectBase.getChanges<Creature>(this);

  @override
  Stream<RealmObjectChanges<Creature>> changesFor([List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<Creature>(this, keyPaths);

  @override
  Creature freeze() => RealmObjectBase.freezeObject<Creature>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'name': name.toEJson(),
      'image': image.toEJson(),
      'desc': desc.toEJson(),
      'armorClass': armorClass.toEJson(),
      'hasNaturalArmor': hasNaturalArmor.toEJson(),
      'speed': speed.toEJson(),
      'hitDice': hitDice.toEJson(),
      'abilities': abilities.toEJson(),
      'xpWorth': xpWorth.toEJson(),
      'skillBonuses': skillBonuses.toEJson(),
      'exhaustionLevel': exhaustionLevel.toEJson(),
      'vulnerabilities': vulnerabilities.toEJson(),
      'resistances': resistances.toEJson(),
      'immunities': immunities.toEJson(),
      'conditionImmunities': conditionImmunities.toEJson(),
      'senses': senses.toEJson(),
      'hasTelepathy': hasTelepathy.toEJson(),
      'telepathyRange': telepathyRange.toEJson(),
      '_challengeRating': _challengeRating.toEJson(),
      '_movementModes': _movementModes.toEJson(),
      '_size': _size.toEJson(),
      '_type': _type.toEJson(),
      '_alignment': _alignment.toEJson(),
      'inventory': inventory.toEJson(),
      'features': features.toEJson(),
      'actions': actions.toEJson(),
      'spellcaster': spellcaster.toEJson(),
      'spells': spells.toEJson(),
      'spellSlots': spellSlots.toEJson(),
      'languages': languages.toEJson(),
      'source': source.toEJson(),
    };
  }

  static EJsonValue _toEJson(Creature value) => value.toEJson();
  static Creature _fromEJson(EJsonValue ejson) {
    return switch (ejson) {
      {
        'name': EJsonValue name,
        'image': EJsonValue image,
        'desc': EJsonValue desc,
        'armorClass': EJsonValue armorClass,
        'hasNaturalArmor': EJsonValue hasNaturalArmor,
        'speed': EJsonValue speed,
        'hitDice': EJsonValue hitDice,
        'abilities': EJsonValue abilities,
        'xpWorth': EJsonValue xpWorth,
        'skillBonuses': EJsonValue skillBonuses,
        'exhaustionLevel': EJsonValue exhaustionLevel,
        'vulnerabilities': EJsonValue vulnerabilities,
        'resistances': EJsonValue resistances,
        'immunities': EJsonValue immunities,
        'conditionImmunities': EJsonValue conditionImmunities,
        'senses': EJsonValue senses,
        'hasTelepathy': EJsonValue hasTelepathy,
        'telepathyRange': EJsonValue telepathyRange,
        '_challengeRating': EJsonValue _challengeRating,
        '_movementModes': EJsonValue _movementModes,
        '_size': EJsonValue _size,
        '_type': EJsonValue _type,
        '_alignment': EJsonValue _alignment,
        'inventory': EJsonValue inventory,
        'features': EJsonValue features,
        'actions': EJsonValue actions,
        'spellcaster': EJsonValue spellcaster,
        'spells': EJsonValue spells,
        'spellSlots': EJsonValue spellSlots,
        'languages': EJsonValue languages,
        'source': EJsonValue source,
      } =>
        Creature(
          fromEJson(name),
          image: fromEJson(image),
          desc: fromEJson(desc),
          armorClass: fromEJson(armorClass),
          hasNaturalArmor: fromEJson(hasNaturalArmor),
          speed: fromEJson(speed),
          hitDice: fromEJson(hitDice),
          abilities: fromEJson(abilities),
          xpWorth: fromEJson(xpWorth),
          skillBonuses: fromEJson(skillBonuses),
          exhaustionLevel: fromEJson(exhaustionLevel),
          vulnerabilities: fromEJson(vulnerabilities),
          resistances: fromEJson(resistances),
          immunities: fromEJson(immunities),
          conditionImmunities: fromEJson(conditionImmunities),
          senses: fromEJson(senses),
          hasTelepathy: fromEJson(hasTelepathy),
          telepathyRange: fromEJson(telepathyRange),
          challengeRating: fromEJson(_challengeRating),
          movementModes: fromEJson(_movementModes),
          size: fromEJson(_size),
          type: fromEJson(_type),
          alignment: fromEJson(_alignment),
          inventory: fromEJson(inventory),
          features: fromEJson(features),
          actions: fromEJson(actions),
          spellcaster: fromEJson(spellcaster),
          spells: fromEJson(spells),
          spellSlots: fromEJson(spellSlots),
          languages: fromEJson(languages),
          source: fromEJson(source),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(Creature._);
    register(_toEJson, _fromEJson);
    return SchemaObject(ObjectType.realmObject, Creature, 'Creature', [
      SchemaProperty('name', RealmPropertyType.string, primaryKey: true),
      SchemaProperty('image', RealmPropertyType.binary, optional: true),
      SchemaProperty('desc', RealmPropertyType.string),
      SchemaProperty('armorClass', RealmPropertyType.int),
      SchemaProperty('hasNaturalArmor', RealmPropertyType.bool),
      SchemaProperty('speed', RealmPropertyType.int),
      SchemaProperty('hitDice', RealmPropertyType.object,
          optional: true, linkTarget: 'DiceRoller'),
      SchemaProperty('abilities', RealmPropertyType.object,
          optional: true, linkTarget: 'Abilities'),
      SchemaProperty('xpWorth', RealmPropertyType.int),
      SchemaProperty('skillBonuses', RealmPropertyType.int,
          collectionType: RealmCollectionType.map),
      SchemaProperty('exhaustionLevel', RealmPropertyType.int),
      SchemaProperty('vulnerabilities', RealmPropertyType.string,
          collectionType: RealmCollectionType.list),
      SchemaProperty('resistances', RealmPropertyType.string,
          collectionType: RealmCollectionType.list),
      SchemaProperty('immunities', RealmPropertyType.string,
          collectionType: RealmCollectionType.list),
      SchemaProperty('conditionImmunities', RealmPropertyType.object,
          linkTarget: 'Condition', collectionType: RealmCollectionType.list),
      SchemaProperty('senses', RealmPropertyType.string,
          collectionType: RealmCollectionType.list),
      SchemaProperty('hasTelepathy', RealmPropertyType.bool),
      SchemaProperty('telepathyRange', RealmPropertyType.int),
      SchemaProperty('_challengeRating', RealmPropertyType.double),
      SchemaProperty('_movementModes', RealmPropertyType.int,
          collectionType: RealmCollectionType.list),
      SchemaProperty('_size', RealmPropertyType.int),
      SchemaProperty('_type', RealmPropertyType.int),
      SchemaProperty('_alignment', RealmPropertyType.int),
      SchemaProperty('inventory', RealmPropertyType.object,
          linkTarget: 'Equipment', collectionType: RealmCollectionType.list),
      SchemaProperty('features', RealmPropertyType.object,
          linkTarget: 'Feature', collectionType: RealmCollectionType.list),
      SchemaProperty('actions', RealmPropertyType.object,
          linkTarget: 'Action', collectionType: RealmCollectionType.list),
      SchemaProperty('spellcaster', RealmPropertyType.object,
          optional: true, linkTarget: 'Spellcaster'),
      SchemaProperty('spells', RealmPropertyType.object,
          linkTarget: 'Spell', collectionType: RealmCollectionType.list),
      SchemaProperty('spellSlots', RealmPropertyType.mixed,
          optional: true, collectionType: RealmCollectionType.list),
      SchemaProperty('languages', RealmPropertyType.object,
          linkTarget: 'Language', collectionType: RealmCollectionType.list),
      SchemaProperty('source', RealmPropertyType.object,
          optional: true, linkTarget: 'Source'),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}
