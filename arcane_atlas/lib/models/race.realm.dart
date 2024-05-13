// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'race.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

// ignore_for_file: type=lint
class Race extends $Race with RealmEntity, RealmObjectBase, RealmObject {
  static var _defaultsSet = false;

  Race(
    String name, {
    Uint8List? image,
    Map<String, String> descriptions = const {},
    String traitsDesc = 'No Description',
    String age = 'No Description',
    String sizeDesc = 'No Description',
    String? alignment,
    String? subracesDesc,
    String languagesDesc = 'No Description',
    int speed = 30,
    Iterable<Language> languages = const [],
    Iterable<Race> subraces = const [],
    Iterable<Feature> traits = const [],
    Map<String, int> abilityIncrease = const {},
    int sizeBack = 0,
    bool isSubrace = false,
    Source? source,
  }) {
    if (!_defaultsSet) {
      _defaultsSet = RealmObjectBase.setDefaults<Race>({
        'traitsDesc': 'No Description',
        'age': 'No Description',
        'sizeDesc': 'No Description',
        'languagesDesc': 'No Description',
        'speed': 30,
        'sizeBack': 0,
        'isSubrace': false,
      });
    }
    RealmObjectBase.set(this, 'name', name);
    RealmObjectBase.set(this, 'image', image);
    RealmObjectBase.set<RealmMap<String>>(
        this, 'descriptions', RealmMap<String>(descriptions));
    RealmObjectBase.set(this, 'traitsDesc', traitsDesc);
    RealmObjectBase.set(this, 'age', age);
    RealmObjectBase.set(this, 'sizeDesc', sizeDesc);
    RealmObjectBase.set(this, 'alignment', alignment);
    RealmObjectBase.set(this, 'subracesDesc', subracesDesc);
    RealmObjectBase.set(this, 'languagesDesc', languagesDesc);
    RealmObjectBase.set(this, 'speed', speed);
    RealmObjectBase.set<RealmList<Language>>(
        this, 'languages', RealmList<Language>(languages));
    RealmObjectBase.set<RealmList<Race>>(
        this, 'subraces', RealmList<Race>(subraces));
    RealmObjectBase.set<RealmList<Feature>>(
        this, 'traits', RealmList<Feature>(traits));
    RealmObjectBase.set<RealmMap<int>>(
        this, 'abilityIncrease', RealmMap<int>(abilityIncrease));
    RealmObjectBase.set(this, 'sizeBack', sizeBack);
    RealmObjectBase.set(this, 'isSubrace', isSubrace);
    RealmObjectBase.set(this, 'source', source);
  }

  Race._();

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
  String get traitsDesc =>
      RealmObjectBase.get<String>(this, 'traitsDesc') as String;
  @override
  set traitsDesc(String value) =>
      RealmObjectBase.set(this, 'traitsDesc', value);

  @override
  String get age => RealmObjectBase.get<String>(this, 'age') as String;
  @override
  set age(String value) => RealmObjectBase.set(this, 'age', value);

  @override
  String get sizeDesc =>
      RealmObjectBase.get<String>(this, 'sizeDesc') as String;
  @override
  set sizeDesc(String value) => RealmObjectBase.set(this, 'sizeDesc', value);

  @override
  String? get alignment =>
      RealmObjectBase.get<String>(this, 'alignment') as String?;
  @override
  set alignment(String? value) => RealmObjectBase.set(this, 'alignment', value);

  @override
  String? get subracesDesc =>
      RealmObjectBase.get<String>(this, 'subracesDesc') as String?;
  @override
  set subracesDesc(String? value) =>
      RealmObjectBase.set(this, 'subracesDesc', value);

  @override
  String get languagesDesc =>
      RealmObjectBase.get<String>(this, 'languagesDesc') as String;
  @override
  set languagesDesc(String value) =>
      RealmObjectBase.set(this, 'languagesDesc', value);

  @override
  int get speed => RealmObjectBase.get<int>(this, 'speed') as int;
  @override
  set speed(int value) => RealmObjectBase.set(this, 'speed', value);

  @override
  RealmList<Language> get languages =>
      RealmObjectBase.get<Language>(this, 'languages') as RealmList<Language>;
  @override
  set languages(covariant RealmList<Language> value) =>
      throw RealmUnsupportedSetError();

  @override
  RealmList<Race> get subraces =>
      RealmObjectBase.get<Race>(this, 'subraces') as RealmList<Race>;
  @override
  set subraces(covariant RealmList<Race> value) =>
      throw RealmUnsupportedSetError();

  @override
  RealmList<Feature> get traits =>
      RealmObjectBase.get<Feature>(this, 'traits') as RealmList<Feature>;
  @override
  set traits(covariant RealmList<Feature> value) =>
      throw RealmUnsupportedSetError();

  @override
  RealmMap<int> get abilityIncrease =>
      RealmObjectBase.get<int>(this, 'abilityIncrease') as RealmMap<int>;
  @override
  set abilityIncrease(covariant RealmMap<int> value) =>
      throw RealmUnsupportedSetError();

  @override
  int get sizeBack => RealmObjectBase.get<int>(this, 'sizeBack') as int;
  @override
  set sizeBack(int value) => RealmObjectBase.set(this, 'sizeBack', value);

  @override
  bool get isSubrace => RealmObjectBase.get<bool>(this, 'isSubrace') as bool;
  @override
  set isSubrace(bool value) => RealmObjectBase.set(this, 'isSubrace', value);

  @override
  Source? get source => RealmObjectBase.get<Source>(this, 'source') as Source?;
  @override
  set source(covariant Source? value) =>
      RealmObjectBase.set(this, 'source', value);

  @override
  RealmResults<Race> get superrace {
    if (!isManaged) {
      throw RealmError('Using backlinks is only possible for managed objects.');
    }
    return RealmObjectBase.get<Race>(this, 'superrace') as RealmResults<Race>;
  }

  @override
  set superrace(covariant RealmResults<Race> value) =>
      throw RealmUnsupportedSetError();

  @override
  Stream<RealmObjectChanges<Race>> get changes =>
      RealmObjectBase.getChanges<Race>(this);

  @override
  Stream<RealmObjectChanges<Race>> changesFor([List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<Race>(this, keyPaths);

  @override
  Race freeze() => RealmObjectBase.freezeObject<Race>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'name': name.toEJson(),
      'image': image.toEJson(),
      'descriptions': descriptions.toEJson(),
      'traitsDesc': traitsDesc.toEJson(),
      'age': age.toEJson(),
      'sizeDesc': sizeDesc.toEJson(),
      'alignment': alignment.toEJson(),
      'subracesDesc': subracesDesc.toEJson(),
      'languagesDesc': languagesDesc.toEJson(),
      'speed': speed.toEJson(),
      'languages': languages.toEJson(),
      'subraces': subraces.toEJson(),
      'traits': traits.toEJson(),
      'abilityIncrease': abilityIncrease.toEJson(),
      'sizeBack': sizeBack.toEJson(),
      'isSubrace': isSubrace.toEJson(),
      'source': source.toEJson(),
    };
  }

  static EJsonValue _toEJson(Race value) => value.toEJson();
  static Race _fromEJson(EJsonValue ejson) {
    return switch (ejson) {
      {
        'name': EJsonValue name,
        'image': EJsonValue image,
        'descriptions': EJsonValue descriptions,
        'traitsDesc': EJsonValue traitsDesc,
        'age': EJsonValue age,
        'sizeDesc': EJsonValue sizeDesc,
        'alignment': EJsonValue alignment,
        'subracesDesc': EJsonValue subracesDesc,
        'languagesDesc': EJsonValue languagesDesc,
        'speed': EJsonValue speed,
        'languages': EJsonValue languages,
        'subraces': EJsonValue subraces,
        'traits': EJsonValue traits,
        'abilityIncrease': EJsonValue abilityIncrease,
        'sizeBack': EJsonValue sizeBack,
        'isSubrace': EJsonValue isSubrace,
        'source': EJsonValue source,
      } =>
        Race(
          fromEJson(name),
          image: fromEJson(image),
          descriptions: fromEJson(descriptions),
          traitsDesc: fromEJson(traitsDesc),
          age: fromEJson(age),
          sizeDesc: fromEJson(sizeDesc),
          alignment: fromEJson(alignment),
          subracesDesc: fromEJson(subracesDesc),
          languagesDesc: fromEJson(languagesDesc),
          speed: fromEJson(speed),
          languages: fromEJson(languages),
          subraces: fromEJson(subraces),
          traits: fromEJson(traits),
          abilityIncrease: fromEJson(abilityIncrease),
          sizeBack: fromEJson(sizeBack),
          isSubrace: fromEJson(isSubrace),
          source: fromEJson(source),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(Race._);
    register(_toEJson, _fromEJson);
    return SchemaObject(ObjectType.realmObject, Race, 'Race', [
      SchemaProperty('name', RealmPropertyType.string, primaryKey: true),
      SchemaProperty('image', RealmPropertyType.binary, optional: true),
      SchemaProperty('descriptions', RealmPropertyType.string,
          collectionType: RealmCollectionType.map),
      SchemaProperty('traitsDesc', RealmPropertyType.string),
      SchemaProperty('age', RealmPropertyType.string),
      SchemaProperty('sizeDesc', RealmPropertyType.string),
      SchemaProperty('alignment', RealmPropertyType.string, optional: true),
      SchemaProperty('subracesDesc', RealmPropertyType.string, optional: true),
      SchemaProperty('languagesDesc', RealmPropertyType.string),
      SchemaProperty('speed', RealmPropertyType.int),
      SchemaProperty('languages', RealmPropertyType.object,
          linkTarget: 'Language', collectionType: RealmCollectionType.list),
      SchemaProperty('subraces', RealmPropertyType.object,
          linkTarget: 'Race', collectionType: RealmCollectionType.list),
      SchemaProperty('traits', RealmPropertyType.object,
          linkTarget: 'Feature', collectionType: RealmCollectionType.list),
      SchemaProperty('abilityIncrease', RealmPropertyType.int,
          collectionType: RealmCollectionType.map),
      SchemaProperty('sizeBack', RealmPropertyType.int),
      SchemaProperty('isSubrace', RealmPropertyType.bool),
      SchemaProperty('source', RealmPropertyType.object,
          optional: true, linkTarget: 'Source'),
      SchemaProperty('superrace', RealmPropertyType.linkingObjects,
          linkOriginProperty: 'subraces',
          collectionType: RealmCollectionType.list,
          linkTarget: 'Race'),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}
