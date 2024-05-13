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
    int exhaustion = 0,
    Iterable<String> vulnerabilities = const [],
    Iterable<String> resistances = const [],
    Iterable<String> immunities = const [],
    Iterable<String> conditionImmunities = const [],
    Iterable<String> senses = const [],
    bool hasTelepathy = false,
    int telepathyRange = 0,
    double challengeRatingBack = 0,
    Iterable<int> movementModesBack = const [],
    int sizeBack = 0,
    int typeBack = 0,
    int alignmentBack = 0,
    int? hp,
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
        'exhaustion': 0,
        'hasTelepathy': false,
        'telepathyRange': 0,
        'challengeRatingBack': 0,
        'sizeBack': 0,
        'typeBack': 0,
        'alignmentBack': 0,
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
    RealmObjectBase.set(this, 'exhaustion', exhaustion);
    RealmObjectBase.set<RealmList<String>>(
        this, 'vulnerabilities', RealmList<String>(vulnerabilities));
    RealmObjectBase.set<RealmList<String>>(
        this, 'resistances', RealmList<String>(resistances));
    RealmObjectBase.set<RealmList<String>>(
        this, 'immunities', RealmList<String>(immunities));
    RealmObjectBase.set<RealmList<String>>(
        this, 'conditionImmunities', RealmList<String>(conditionImmunities));
    RealmObjectBase.set<RealmList<String>>(
        this, 'senses', RealmList<String>(senses));
    RealmObjectBase.set(this, 'hasTelepathy', hasTelepathy);
    RealmObjectBase.set(this, 'telepathyRange', telepathyRange);
    RealmObjectBase.set(this, 'challengeRatingBack', challengeRatingBack);
    RealmObjectBase.set<RealmList<int>>(
        this, 'movementModesBack', RealmList<int>(movementModesBack));
    RealmObjectBase.set(this, 'sizeBack', sizeBack);
    RealmObjectBase.set(this, 'typeBack', typeBack);
    RealmObjectBase.set(this, 'alignmentBack', alignmentBack);
    RealmObjectBase.set(this, 'hp', hp);
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
  int get exhaustion => RealmObjectBase.get<int>(this, 'exhaustion') as int;
  @override
  set exhaustion(int value) => RealmObjectBase.set(this, 'exhaustion', value);

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
  RealmList<String> get conditionImmunities =>
      RealmObjectBase.get<String>(this, 'conditionImmunities')
          as RealmList<String>;
  @override
  set conditionImmunities(covariant RealmList<String> value) =>
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
  double get challengeRatingBack =>
      RealmObjectBase.get<double>(this, 'challengeRatingBack') as double;
  @override
  set challengeRatingBack(double value) =>
      RealmObjectBase.set(this, 'challengeRatingBack', value);

  @override
  RealmList<int> get movementModesBack =>
      RealmObjectBase.get<int>(this, 'movementModesBack') as RealmList<int>;
  @override
  set movementModesBack(covariant RealmList<int> value) =>
      throw RealmUnsupportedSetError();

  @override
  int get sizeBack => RealmObjectBase.get<int>(this, 'sizeBack') as int;
  @override
  set sizeBack(int value) => RealmObjectBase.set(this, 'sizeBack', value);

  @override
  int get typeBack => RealmObjectBase.get<int>(this, 'typeBack') as int;
  @override
  set typeBack(int value) => RealmObjectBase.set(this, 'typeBack', value);

  @override
  int get alignmentBack =>
      RealmObjectBase.get<int>(this, 'alignmentBack') as int;
  @override
  set alignmentBack(int value) =>
      RealmObjectBase.set(this, 'alignmentBack', value);

  @override
  int? get hp => RealmObjectBase.get<int>(this, 'hp') as int?;
  @override
  set hp(int? value) => RealmObjectBase.set(this, 'hp', value);

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
      'exhaustion': exhaustion.toEJson(),
      'vulnerabilities': vulnerabilities.toEJson(),
      'resistances': resistances.toEJson(),
      'immunities': immunities.toEJson(),
      'conditionImmunities': conditionImmunities.toEJson(),
      'senses': senses.toEJson(),
      'hasTelepathy': hasTelepathy.toEJson(),
      'telepathyRange': telepathyRange.toEJson(),
      'challengeRatingBack': challengeRatingBack.toEJson(),
      'movementModesBack': movementModesBack.toEJson(),
      'sizeBack': sizeBack.toEJson(),
      'typeBack': typeBack.toEJson(),
      'alignmentBack': alignmentBack.toEJson(),
      'hp': hp.toEJson(),
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
        'exhaustion': EJsonValue exhaustion,
        'vulnerabilities': EJsonValue vulnerabilities,
        'resistances': EJsonValue resistances,
        'immunities': EJsonValue immunities,
        'conditionImmunities': EJsonValue conditionImmunities,
        'senses': EJsonValue senses,
        'hasTelepathy': EJsonValue hasTelepathy,
        'telepathyRange': EJsonValue telepathyRange,
        'challengeRatingBack': EJsonValue challengeRatingBack,
        'movementModesBack': EJsonValue movementModesBack,
        'sizeBack': EJsonValue sizeBack,
        'typeBack': EJsonValue typeBack,
        'alignmentBack': EJsonValue alignmentBack,
        'hp': EJsonValue hp,
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
          exhaustion: fromEJson(exhaustion),
          vulnerabilities: fromEJson(vulnerabilities),
          resistances: fromEJson(resistances),
          immunities: fromEJson(immunities),
          conditionImmunities: fromEJson(conditionImmunities),
          senses: fromEJson(senses),
          hasTelepathy: fromEJson(hasTelepathy),
          telepathyRange: fromEJson(telepathyRange),
          challengeRatingBack: fromEJson(challengeRatingBack),
          movementModesBack: fromEJson(movementModesBack),
          sizeBack: fromEJson(sizeBack),
          typeBack: fromEJson(typeBack),
          alignmentBack: fromEJson(alignmentBack),
          hp: fromEJson(hp),
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
      SchemaProperty('exhaustion', RealmPropertyType.int),
      SchemaProperty('vulnerabilities', RealmPropertyType.string,
          collectionType: RealmCollectionType.list),
      SchemaProperty('resistances', RealmPropertyType.string,
          collectionType: RealmCollectionType.list),
      SchemaProperty('immunities', RealmPropertyType.string,
          collectionType: RealmCollectionType.list),
      SchemaProperty('conditionImmunities', RealmPropertyType.string,
          collectionType: RealmCollectionType.list),
      SchemaProperty('senses', RealmPropertyType.string,
          collectionType: RealmCollectionType.list),
      SchemaProperty('hasTelepathy', RealmPropertyType.bool),
      SchemaProperty('telepathyRange', RealmPropertyType.int),
      SchemaProperty('challengeRatingBack', RealmPropertyType.double),
      SchemaProperty('movementModesBack', RealmPropertyType.int,
          collectionType: RealmCollectionType.list),
      SchemaProperty('sizeBack', RealmPropertyType.int),
      SchemaProperty('typeBack', RealmPropertyType.int),
      SchemaProperty('alignmentBack', RealmPropertyType.int),
      SchemaProperty('hp', RealmPropertyType.int, optional: true),
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
