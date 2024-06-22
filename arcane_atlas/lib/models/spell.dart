import 'dart:typed_data';
import 'package:realm/realm.dart';
import 'extras.dart';
import '../enums.dart';
import 'class.dart';
import 'dice.dart';

part 'spell.realm.dart';

// ================================
// Spell Models
// ================================

/// A spell for characters to hold
@RealmModel()
class $Spell implements IName, IImage {
  @override
  @Indexed()
  late String name;

  @override
  late Uint8List? image;

  late int level = 0;
  late String? description;
  late String duration = 'instantaneous';
  late String? range;
  late String? attackType;
  late String? damageType;
  late String? material;
  late String castingTime = '1 action';
  late bool concentration = false;
  late bool ritual = false;
  late String? materials;
  late String? school;

  @Backlink(#classSpells)
  late Iterable<$Class> classes;

  late List<int> _components = [];
  List<Components> get components =>
      [for (int i in _components) Components.values[i]];
  set components(List<Components> val) =>
      _components = [for (Components c in val) c.index];

  late bool characterBasedDamage = false;
  late $DiceRoller? dice;

  late List<$Source> sources;

  /// Casts the spell and makes one spell slot true.
  /// If the spell is rollable, dice are rolled and the results are returned
  /// as a list of ints. If not rollable, an empty list is returned.
  Roll? call(int level, List<bool> spellSlots, int modifier) {
    if (spellSlots.contains(false)) {
      spellSlots[spellSlots.indexWhere((element) => element == false)] = true;
      return dice?.roll(mod: modifier);
    } else {
      return null;
    }
  }

  @override
  String toString() {
    return name;
  }
}

// =================================
// End Spell Models
// =================================