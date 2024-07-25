import 'package:realm/realm.dart';
import '/enums.dart';

part 'dice.realm.dart';

@RealmModel(ObjectType.embeddedObject)
class $DiceRoller {
  late int numDice = 1;
  late int modifier = 0;
  late bool multiply = false;

  late int dieIndex = 0;
  Dice get die => Dice.values[dieIndex];
  set die(Dice v) => dieIndex = v.index;

  int get range => die.range;
  int get average {
    int num = (((range / 2) + 0.5) * numDice).toInt();
    return multiply ? num * modifier : num + modifier;
  }

  Roll roll({
    int? mod,
    bool? mult,
    int dropLowest = 0,
    int dropHighest = 0,
  }) {
    List<int> rolls = die.roll(numDice: numDice);
    rolls.sort((a, b) => b.compareTo(a));
    int sum = rolls
        .getRange(dropHighest, numDice - dropLowest)
        .fold(0, (sum, i) => sum + i);

    int finalMod = 0;
    bool finalMult = false;

    mod == null ? finalMod = modifier : finalMod = mod;
    mult == null ? finalMult = multiply : finalMult = mult;

    return Roll(
      rolls: rolls,
      rollSum: sum,
      modifier: finalMod,
      total: finalMult ? sum * finalMod : sum + finalMod,
      name: '$numDice$die${finalMult ? ' x $finalMod' : ' + $finalMod'}',
    );
  }

  @override
  String toString() {
    String modString = '';
    if ((multiply && modifier != 1) || (!multiply && modifier != 0)) {
      multiply ? modString = ' x $modifier' : modString = ' + $modifier';
    }
    return '$numDice$die$modString';
  }
}

class Roll {
  Roll({
    this.rolls,
    this.rollSum,
    this.modifier,
    required this.total,
    this.name,
  });

  final List<int>? rolls;
  final int? rollSum;
  final int? modifier;
  final int total;
  final String? name;

  int? operator [](int index) {
    return rolls?[index];
  }

  List<int>? call() {
    return rolls;
  }

  @override
  String toString() {
    return name != null ? '$total ($name)' : '$total';
  }
}
