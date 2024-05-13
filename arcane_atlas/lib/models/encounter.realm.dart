// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'encounter.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

// ignore_for_file: type=lint
class Encounter extends $Encounter
    with RealmEntity, RealmObjectBase, RealmObject {
  Encounter(
    ObjectId id,
    String name, {
    Iterable<Creature> creatures = const [],
  }) {
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'name', name);
    RealmObjectBase.set<RealmList<Creature>>(
        this, 'creatures', RealmList<Creature>(creatures));
  }

  Encounter._();

  @override
  ObjectId get id => RealmObjectBase.get<ObjectId>(this, 'id') as ObjectId;
  @override
  set id(ObjectId value) => RealmObjectBase.set(this, 'id', value);

  @override
  String get name => RealmObjectBase.get<String>(this, 'name') as String;
  @override
  set name(String value) => RealmObjectBase.set(this, 'name', value);

  @override
  RealmList<Creature> get creatures =>
      RealmObjectBase.get<Creature>(this, 'creatures') as RealmList<Creature>;
  @override
  set creatures(covariant RealmList<Creature> value) =>
      throw RealmUnsupportedSetError();

  @override
  Stream<RealmObjectChanges<Encounter>> get changes =>
      RealmObjectBase.getChanges<Encounter>(this);

  @override
  Stream<RealmObjectChanges<Encounter>> changesFor([List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<Encounter>(this, keyPaths);

  @override
  Encounter freeze() => RealmObjectBase.freezeObject<Encounter>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'id': id.toEJson(),
      'name': name.toEJson(),
      'creatures': creatures.toEJson(),
    };
  }

  static EJsonValue _toEJson(Encounter value) => value.toEJson();
  static Encounter _fromEJson(EJsonValue ejson) {
    return switch (ejson) {
      {
        'id': EJsonValue id,
        'name': EJsonValue name,
        'creatures': EJsonValue creatures,
      } =>
        Encounter(
          fromEJson(id),
          fromEJson(name),
          creatures: fromEJson(creatures),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(Encounter._);
    register(_toEJson, _fromEJson);
    return SchemaObject(ObjectType.realmObject, Encounter, 'Encounter', [
      SchemaProperty('id', RealmPropertyType.objectid, primaryKey: true),
      SchemaProperty('name', RealmPropertyType.string,
          indexType: RealmIndexType.regular),
      SchemaProperty('creatures', RealmPropertyType.object,
          linkTarget: 'Creature', collectionType: RealmCollectionType.list),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}
