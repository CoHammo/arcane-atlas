import 'dart:math';

enum OptionTypes {
  equipment('equipment'),
  spell('spells'),
  language('languages'),
  creature('creatures'),
  skill('skills'),
  coins('coins');

  const OptionTypes(this.name);
  final String name;
}

enum Difficulty {
  easy,
  medium,
  hard,
  veryHard,
}

enum Gender {
  male('Male'),
  female('Female');

  const Gender(this.name);
  final String name;
}

enum FeatureTypes { descriptive, addon, action, modifier }

enum EquipmentTypes {
  armor('Armor'),
  weapon('Weapon'),
  adventuringGear('Adventuring Gear'),
  tool('Tool'),
  mount('Mount'),
  trinket('Trinket'),
  wondrousItem('Wondrous Item'),
  vehicle('Vehicle');

  const EquipmentTypes(this.name);
  final String name;
}

enum DamageTypes {
  piercing('piercing'),
  bludgeoning('poison'),
  slashing('slashing'),
  poison('poison'),
  acid('acid');

  const DamageTypes(this.name);
  final String name;
}

enum AbilityChooseMode { manualRolled, standard, pointBuy }

enum ModifierTypes { todo }

enum CreatureTypes {
  aberration('Aberration'),
  beast('Beast'),
  celestial('Celestial'),
  construct('Construct'),
  dragon('Dragon'),
  elemental('Elemental'),
  fey('Fey'),
  fiend('Fiend'),
  giant('Giant'),
  humanoid('Humanoid'),
  monstrosity('Monstrosity'),
  ooze('Ooze'),
  plant('Plant'),
  undead('Undead');

  const CreatureTypes(this.name);
  final String name;

  @override
  String toString() {
    return name;
  }
}

enum MovementModes {
  burrow('Burrow'),
  climb('Climb'),
  fly('Fly'),
  hover('Hover'),
  swim('Swim');

  const MovementModes(this.name);
  final String name;
}

enum DndSize {
  tiny('Tiny', '2 1/2 by 2 1/2 ft.'),
  small('Tiny', '5 by 5 ft.'),
  medium('Medium', '5 by 5 ft.'),
  large('Large', '10 by 10 ft.'),
  huge('Huge', '15 by 15 ft.'),
  gargantuan('Gargantuan', '20 by 20 ft. or larger');

  const DndSize(this.name, this.space);
  final String name;
  final String space;

  @override
  String toString() {
    return name;
  }
}

enum DndAlignment {
  lGood('Lawful Good'),
  nGood('Neutral Good'),
  cGood('Chaotic Good'),
  lNeutral('Lawful Neutral'),
  neutral('Neutral'),
  cNeutral('Chaotic Neutral'),
  lEvil('Lawful Evil'),
  nEvil('Neutral Evil'),
  cEvil('Chaotic Evil');

  const DndAlignment(this.name);
  final String name;
}

enum SchoolsOfMagic {
  abjuration('Abjuration',
      'Abjuration spells are protective in nature, though some of them have aggressive uses. They create magical barriers, negate harmful effects, harm trespassers, or banish creatures to other planes of existence.'),
  conjuration('Conjuration',
      'Conjuration spells involve the transportation of objects and creatures from one location to another. Some spells summon creatures or objects to the caster\'s side, whereas others allow the caster to teleport to another location. Some conjurations create objects or effects out of nothing.'),
  divination('Divination',
      'Divination spells reveal information, whether in the form of secrets long forgotten, glimpses of the future, the locations of hidden things, the truth behind illusions, or visions of distant people or places.'),
  enchantment('Enchantment',
      'Enchantment spells affect the minds of others, influencing or controlling their behavior. Such spells can make enemies see the caster as a friend, force creatures to take a course of action, or even control another creature like a puppet.'),
  evocation('Evocation',
      'Evocation spells manipulate magical energy to produce a desired effect. Some call up blasts of fire or lightning. Others channel positive energy to heal wounds.'),
  illusion('Illusion',
      'Illusion spells deceive the senses or minds of others. They cause people to see things that are not there, to miss things that are there, to hear phantom noises, or to remember things that never happened. Some illusions create phantom images that any creature can see, but the most insidious illusions plant an image directly in the mind of a creature.'),
  necromancy('Necromancy',
      'Necromancy spells manipulate the energies of life and death. Such spells can grant an extra reserve of life force, drain the life energy from another creature, create the undead, or even bring the dead back to life. Creating the undead through the use of necromancy spells such as animate dead is not a good act, and only evil casters use such spells frequently.'),
  transmutation('Transmutation',
      'Transmutation spells change the properties of a creature, object, or environment. They might turn an enemy into a harmless creature, bolster the strength of an ally, make an object move at the caster\'s command, or enhance a creature\'s innate healing abilities to rapidly recover from injury.');

  const SchoolsOfMagic(this.name, this.description);
  final String name;
  final String description;
}

enum AbilityScores {
  cha('Charisma', 'CHA'),
  con('Constitution', 'CON'),
  dex('Dexterity', 'DEX'),
  int('Intelligence', 'INT'),
  str('Strength', 'STR'),
  wis('Wisdom', 'WIS');

  const AbilityScores(this.name, this.shortName);
  final String name;
  final String shortName;

  @override
  String toString() {
    return name;
  }
}

enum Components {
  verbal('V'),
  somatic('S'),
  material('M');

  const Components(this.name);
  final String name;

  @override
  String toString() {
    return name;
  }
}

enum Dice {
  d2(2, 'd2'),
  d4(4, 'd4'),
  d6(6, 'd6'),
  d8(8, 'd8'),
  d10(10, 'd10'),
  d12(12, 'd12'),
  d20(20, 'd20');

  const Dice(this.range, this.name);

  final int range;
  final String name;
  List<int> roll({int numDice = 1}) {
    return [for (int i = 0; i < numDice; i++) Random().nextInt(range) + 1];
  }

  @override
  String toString() {
    return name;
  }
}
