import 'dart:typed_data';
import '/enums.dart';
import 'package:realm/realm.dart';
import 'models.dart';

part 'campaign.realm.dart';

@RealmModel()
class $Campaign implements IName, IImage {
  @PrimaryKey()
  late ObjectId id;

  @override
  @Indexed()
  late String name = 'None';

  @override
  late Uint8List? image;

  late String? world;
  late String? desc;
  late List<$CampaignCharacter> characters;
  late List<$Encounter> encounters;

  late List<$Source> allowedSources;
}

@RealmModel(ObjectType.embeddedObject)
class $CampaignCharacter implements IName, IGraphable {
  @override
  late String name;

  late int level = 1;
  late int armorClass = 10;
  late int hitPoints = 1;
  int get proficiencyBonus => calcProfBonus(level);
  int get speed => race?.speed ?? 30;

  late int _size = 0;
  DndSize get size => DndSize.values[_size];
  set size(DndSize val) => _size = val.index;

  late int strength = 8;
  late int dexterity = 8;
  late int constitution = 8;
  late int intelligence = 8;
  late int wisdom = 8;
  late int charisma = 8;
  int get initiativeBonus => ((dexterity - 10) / 2).floor();

  bool get isSpellcaster => dndClass?.isSpellcaster ?? false;

  late $Class? dndClass;
  late $Race? race;

  @override
  GraphStats get stats =>
      GraphStats(level.toDouble(), armorClass.toDouble(), hitPoints.toDouble());
}
