import 'dart:typed_data';
import 'package:realm/realm.dart';
import '../enums.dart';
import 'models.dart';

part 'race.realm.dart';

// ==================================
// Race Models
// ==================================

@RealmModel()
class $Race implements IName, IImage {
  @override
  @PrimaryKey()
  late String name;

  @override
  late Uint8List? image;

  late Map<String, String> descriptions;
  late String traitsDesc = 'No Description';
  late String age = 'No Description';
  late String sizeDesc = 'No Description';
  late String? alignment;
  late String? subracesDesc;
  late String languagesDesc = 'No Description';
  late int speed = 30;
  late List<$Language> languages;
  late List<$Race> subraces;
  late List<$Feature> traits;
  late Map<String, int> abilityIncrease;

  late int sizeBack = 0;
  DndSize get size => DndSize.values[sizeBack];
  set size(DndSize val) => sizeBack = val.index;

  @Backlink(#subraces)
  late Iterable<$Race> superrace;
  late bool isSubrace = false;
  bool get hasSubraces => subraces.isNotEmpty;

  late $Source? source;

  String abilityIncreaseString() {
    return [for (var s in abilityIncrease.entries) '${s.key} +${s.value}']
        .join(', ');
  }

  Race createSubrace() {
    Race subrace = Race(
      '$name (Subrace)',
      image: image == null ? null : Uint8List.fromList(image!.toList()),
      descriptions: Map.of(descriptions),
      traitsDesc: traitsDesc,
      age: age,
      sizeDesc: sizeDesc,
      alignment: alignment,
      subracesDesc: subracesDesc,
      languagesDesc: languagesDesc,
      languages: List.from(languages),
      traits: List.from(traits),
      abilityIncrease: Map.of(abilityIncrease),
      sizeBack: sizeBack,
      isSubrace: true,
      source: source as Source,
    );
    subraces.add(subrace);
    return subrace;
  }

  @override
  String toString() {
    return name;
  }
}

// ==================================
// End Race Models
// ==================================
