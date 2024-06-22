// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dice.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

// ignore_for_file: type=lint
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
