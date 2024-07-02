import 'package:flutter/services.dart';
import 'package:realm/realm.dart';
import 'models/models.dart';
import 'enums.dart';

class Create {
  static Uint8List characterImage = Uint8List(0);
  static Uint8List defaultImage = Uint8List(0);

  static Future<void> images() async {
    characterImage = (await rootBundle.load('assets/Default-Character.png'))
        .buffer
        .asUint8List();
    defaultImage =
        (await rootBundle.load('assets/Default.png')).buffer.asUint8List();
  }

  static List<SchemaObject> schemas() {
    return [
      Character.schema,
      AbilityScore.schema,
      Abilities.schema,
      Background.schema,
      Class.schema,
      Subclass.schema,
      Creature.schema,
      Equipment.schema,
      Coins.schema,
      Option.schema,
      DiceRoller.schema,
      Modifier.schema,
      Action.schema,
      Language.schema,
      Feature.schema,
      DndTable.schema,
      Race.schema,
      Spell.schema,
      Campaign.schema,
      Source.schema,
      Spellcaster.schema,
      Condition.schema,
      Descriptor.schema,
      CharacteristicList.schema,
      Damage.schema,
      EquipmentSubtype.schema,
      Rarity.schema,
      Encounter.schema,
      CampaignCharacter.schema,
    ];
  }

  static List<String> skillsList() {
    return [
      'Athletics',
      'Acrobatics',
      'Sleight of Hand',
      'Stealth',
      'Arcana',
      'History',
      'Investigation',
      'Nature',
      'Religion',
      'Animal Handling',
      'Insight',
      'Medicine',
      'Perception',
      'Survival',
      'Deception',
      'Intimidation',
      'Performance',
      'Persuasion',
    ];
  }

  static Character character() {
    return Character(
      ObjectId(),
      name: 'Character',
      image: characterImage,
      abilities: $Abilities.create(),
      coins: Coins(),
      prefs: {
        'Optional Class Features': false,
        'Advance By XP': false,
        'Encumberence': false,
        'Coin Weight': false,
      },
      descriptors: $Descriptor.createDefault(),
      spellSlots: [for (int i = 0; i < 9; i++) RealmValue.from([])],
    );
  }

  static List<RealmObject> content() {
    var srd = Source('Systems Reference Document');

    /// ========================================
    ///
    /// Equipment Section
    ///
    /// ========================================

    /// ==============================
    /// Equipment Subtypes
    /// ==============================

    var holySymbol = EquipmentSubtype('Holy Symbol');
    var musicalInstrument = EquipmentSubtype('Musical Instrument');

    /// ==============================
    /// Equipment Items
    /// ==============================

    var lute = $Equipment.create(
      name: 'Lute',
      type: EquipmentTypes.adventuringGear,
      subtype: musicalInstrument,
    );
    var bagpipes = $Equipment.create(
      name: 'Bagpipes',
      type: EquipmentTypes.adventuringGear,
      subtype: musicalInstrument,
    );
    var drum = $Equipment.create(
      name: 'Drum',
      type: EquipmentTypes.adventuringGear,
      subtype: musicalInstrument,
    );
    var dulcimer = $Equipment.create(
      name: 'Dulcimer',
      type: EquipmentTypes.adventuringGear,
      subtype: musicalInstrument,
    );
    var flute = $Equipment.create(
      name: 'Flute',
      type: EquipmentTypes.adventuringGear,
      subtype: musicalInstrument,
    );
    var amulet = $Equipment.create(
      name: 'Amulet',
      type: EquipmentTypes.adventuringGear,
      subtype: holySymbol,
      cost: Coins(gold: 5),
      weight: 1,
    );
    var emblem = $Equipment.create(
      name: 'Emblem',
      type: EquipmentTypes.adventuringGear,
      subtype: holySymbol,
      cost: Coins(gold: 5),
    );
    var reliquary = $Equipment.create(
      name: 'Reliquary',
      type: EquipmentTypes.adventuringGear,
      subtype: holySymbol,
      cost: Coins(gold: 5),
      weight: 2,
    );
    var prayerBook = $Equipment.create(
      name: 'Prayer book',
      type: EquipmentTypes.adventuringGear,
      cost: Coins(gold: 1),
    );
    var prayerWheel = $Equipment.create(
      name: 'Prayer wheel',
      type: EquipmentTypes.adventuringGear,
      cost: Coins(gold: 1),
    );
    var commonClothes = $Equipment.create(
      name: 'Clothes, common',
      type: EquipmentTypes.adventuringGear,
      cost: Coins(silver: 3),
      weight: 3,
    );
    var incenseSticks = $Equipment.create(
      name: '5 sticks of incense',
      type: EquipmentTypes.adventuringGear,
      cost: Coins(gold: 1),
    );
    var vestments = $Equipment.create(
      name: 'vestments',
      type: EquipmentTypes.adventuringGear,
      cost: Coins(gold: 1),
    );
    var shovel = $Equipment.create(
      name: 'Shovel',
      type: EquipmentTypes.adventuringGear,
      cost: Coins(gold: 2),
      weight: 5,
    );
    var ironPot = $Equipment.create(
      name: 'Pot, iron',
      type: EquipmentTypes.adventuringGear,
      cost: Coins(gold: 2),
      weight: 10,
    );
    var rapier = $Equipment.create(name: 'Rapier', type: EquipmentTypes.weapon);
    var longsword = $Equipment.create(
      name: 'Longsword',
      type: EquipmentTypes.weapon,
    );
    var diplomatPack = $Equipment.create(
      name: 'Diplomat\'s Pack',
      type: EquipmentTypes.adventuringGear,
    );
    var entertainerPack = $Equipment.create(
      name: 'Entertainer\'s Pack',
      type: EquipmentTypes.adventuringGear,
    );
    var leatherArmor = $Equipment.create(
      name: 'Leather Armor',
      type: EquipmentTypes.armor,
    );
    var dagger = $Equipment.create(
      name: 'Dagger',
      type: EquipmentTypes.weapon,
    );
    var shortsword = $Equipment.create(
      name: 'Shortsword',
      type: EquipmentTypes.weapon,
    );
    var shortbow = $Equipment.create(
      name: 'Shortbow',
      type: EquipmentTypes.weapon,
    );
    var longbow = $Equipment.create(
      name: 'Longbow',
      type: EquipmentTypes.weapon,
    );

    /// =========================================
    ///
    /// Spells
    ///
    /// =========================================

    var light = Spell('Light', level: 0);
    var bladeWard = Spell('Blade Ward', level: 0);
    var thunderClap = Spell('Thunderclap', level: 0);
    var cureWounds = Spell('Cure Wounds', level: 1);
    var featherFall = Spell('Feather Fall', level: 1);
    var hideousLaughter = Spell('Hideous Laughter', level: 1);

    /// =========================================
    ///
    /// Languages
    ///
    /// =========================================

    var common = Language('Common');
    var elvish = Language('Elvish');
    var draconic = Language('Draconic');
    var entish = Language('Entish');
    var celestial = Language('Celestial');
    var orcish = Language('Orcish');
    var allLanguages = [common, elvish, draconic, entish, celestial, orcish];

    /// ========================================
    ///
    /// Conditions
    ///
    /// ========================================

    var blinded = Condition('Blinded');
    var charmed = Condition('Charmed');
    var deafened = Condition('Deafened');
    var frightened = Condition('Frightened');
    var grappled = Condition('Grappled');
    var incapacitated = Condition('Incapacitated');
    var invisible = Condition('Invisible');
    var paralyzed = Condition('Paralyzed');
    var petrified = Condition('Petrified');
    var poisoned = Condition('Poisoned');
    var prone = Condition('Prone');
    var restrained = Condition('Restrained');
    var stunnded = Condition('Stunned');
    var unconsious = Condition('Unconscious');
    var exhaustion = Condition('Exhaustion');

    /// ========================================
    ///
    /// Races Section
    ///
    /// ========================================

    /// ==================================
    /// Elf
    /// ==================================
    var elf = Race(
      'Elf',
      image: defaultImage,
      traitsDesc:
          'Your elf character has a variety of natural abilities, the result of thousands of years of elven refinement.',
      abilityIncrease: {AbilityScores.dex.shortName: 2},
      age:
          'Although elves reach physical maturity at about the same age as humans, the elven understanding of adulthood goes beyond physical growth to encompass worldly experience. An elf typically claims adulthood and an adult name around the age of 100 and can live to be 750 years old.',
      alignment:
          'Elves love freedom, variety, and self expression, so they lean strongly towards the gentler aspects of chaos. They value and protect others\' freedom as well as their own, and they are more often good than not.',
      sizeDesc:
          'Elves range from under 5 to over 6 feet tall and have slender builds. Your size is Medium.',
      size: DndSize.medium.index,
      speed: 30,
      traits: [
        Feature(
          'Darkvision',
          desc:
              'Accustomed to twilit forests and the night sky, you have superior vision in dark and dim conditions. You can see in dim light within 60 feet of you as if it were bright light, and in darkness as if it were dim light. You can\'t discern color in darkness, only shades of gray.',
          type: FeatureTypes.descriptive.index,
        ),
        Feature(
          'Keen Senses',
          desc: 'You have proficiency in the Perception skill.',
          type: FeatureTypes.addon.index,
          option: Option(
            isChoice: false,
            isProficiency: true,
            skills: ['Perception'],
            type: OptionTypes.skill.index,
          ),
        ),
        Feature(
          'Fey Ancestry',
          desc:
              'You have advantage on saving throws against being charmed, and magic can\'t put you to sleep.',
          type: FeatureTypes.descriptive.index,
        ),
        Feature(
          'Trance',
          desc:
              'Elves don\'t need to sleep. Instead, they meditate deeply, remaining semiconscious, for 4 hours a day. (The Common word for such meditation is “trance.”) While meditating, you can dream after a fashion; such dreams are actually mental exercises that have become reflexive through years of practice. After resting in this way, you gain the same benefit that a human does from 8 hours of sleep.',
          type: FeatureTypes.descriptive.index,
        ),
      ],
      languagesDesc:
          'You can speak, read, and write Common and Elvish. Elvish is fluid, with subtle intonations and intricate grammar. Elven literature is rich and varied, and their songs and poems are famous among other races. Many bards learn their language so they can add Elvish ballads to their repertoires.',
      languages: [common, elvish, draconic, entish, celestial],
      source: srd,
    );

    /// ==================================
    /// High Elf
    /// ==================================
    var highElf = elf.createSubrace();
    highElf.name = 'High Elf';
    highElf.name = 'High Elf';
    highElf.isSubrace = true;
    highElf.traitsDesc =
        'As a high elf, you have a keen mind and a mastery of at least the basics of magic. In many fantasy gaming worlds, there are two kinds of high elves. One type is haughty and reclusive, believing themselves to be superior to non-elves and even other elves. The other type is more common and more friendly, and often encountered among humans and other races.';
    highElf.abilityIncrease.addAll({AbilityScores.int.shortName: 1});
    highElf.traits.addAll([
      Feature(
        'Elf Weapon Training',
        desc:
            'You have proficiency with the longsword, shortsword, shortbow, and longbow',
        type: FeatureTypes.addon.index,
        option: Option(
          isChoice: false,
          isProficiency: true,
          type: OptionTypes.equipment.index,
          equipment: [longsword, shortsword, shortbow, longbow],
        ),
      ),
      Feature(
        'Cantrip',
        desc:
            'You know one cantrip of your choice from the wizard spell list. Intelligence is your spellcasting ability for it.',
        type: FeatureTypes.addon.index,
        option: Option(
          desc: 'Choose a Spell',
          selections: 1,
          isChoice: true,
          isQuery: true,
          query: 'classes.name == "Wizard"',
          type: OptionTypes.spell.index,
        ),
      ),
      Feature(
        'Extra Language',
        desc:
            'You can speak, read, and write one extra language of your choice',
        type: FeatureTypes.addon.index,
        option: Option(
          isChoice: true,
          isQuery: true,
          selections: 1,
          desc: 'Choose a Language',
          type: OptionTypes.language.index,
        ),
      ),
    ]);
    highElf.source = srd;

    /// =============================================
    ///
    /// Classes Section
    ///
    /// =============================================

    /// ==================================
    /// Bard
    /// ==================================
    var bard = Class(
      'Bard',
      image: defaultImage,
      hitDice: DiceRoller(numDice: 1, dieIndex: Dice.d8.index),
      armorProfs: ['Light Armor'],
      weaponProfs: [
        'Simple weapons',
        'hand crossbows',
        'longswords',
        'rapiers',
        'shortswords',
      ],
      toolProfs: Option(
        isChoice: true,
        isProficiency: true,
        isQuery: true,
        selections: 3,
        desc: 'Three musical instruments of your choice',
        query: 'subtype.name == "Musical Instrument"',
        type: OptionTypes.equipment.index,
      ),
      savingThrows: [AbilityScores.dex.index, AbilityScores.cha.index],
      skillProfs: Option(
        isChoice: true,
        isProficiency: true,
        selections: 3,
        desc: 'Choose any three skills',
        skills: skillsList(),
        type: OptionTypes.skill.index,
      ),
      rolledGold: DiceRoller(
        numDice: 5,
        dieIndex: Dice.d4.index,
        modifier: 10,
        multiply: true,
      ),
      startingEquipment: [
        Option(
          isChoice: true,
          selections: 1,
          desc: '(a) a rapier, (b) a longsword, or (c) any simple weapon',
          type: OptionTypes.equipment.index,
          equipment: [rapier, longsword],
        ),
        Option(
          isChoice: true,
          selections: 1,
          desc: '(a) a diplomat\'s pack or (b) an entertainer\'s pack',
          type: OptionTypes.equipment.index,
          equipment: [diplomatPack, entertainerPack],
        ),
        Option(
          isChoice: true,
          isQuery: true,
          selections: 1,
          desc: '(a) a lute or (b) any other musical instrument',
          type: OptionTypes.equipment.index,
          query: 'subtype.name == "Musical Instrument"',
        ),
        Option(
          isChoice: false,
          desc: 'Leather armor and a dagger',
          type: OptionTypes.equipment.index,
          equipment: [leatherArmor, dagger],
        ),
      ],
      spellcaster: Spellcaster(
        desc:
            'You have learned to untangle and reshape the fabric of reality in harmony with your wishes and music. Your spells are part of your vast repertoire, magic that you can tune to different situations.',
        features: {
          'Cantrips':
              'You know two cantrips of your choice from the bard spell list. You learn additional bard cantrips of your choice at higher levels, as shown in the Cantrips Known column of the Bard table.',
          'Spell Slots':
              'The Bard table shows how many spell slots you have to cast your bard spells of 1st level and higher. To cast one of these spells, you must expend a slot of the spell\'s level or higher. You regain all expended spell slots when you finish a long rest.\nFor example, if you know the 1st-level spell cure wounds and have a 1st-level and a 2nd-level spell slot available, you can cast cure wounds using either slot.',
          'Spells Known of 1st Level and Higher':
              'You know four 1st-level spells of your choice from the bard spell list.\nThe Spells Known column of the Bard table shows when you learn more bard spells of your choice. Each of these spells must be of a level for which you have spell slots, as shown on the table. For instance, when you reach 3rd level in this class, you can learn one new spell of 1st or 2nd level.\nAdditionally, when you gain a level in this class, you can choose one of the bard spells you know and replace it with another spell from the bard spell list, which also must be of a level for which you have spell slots.',
          'Ritual Casting':
              'You can cast any bard spell you know as a ritual if that spell has the ritual tag.',
          'Spellcasting Focus':
              'You can use a musical instrument (see "Equipment") as a spellcasting focus for your bard spells.',
        },
        isRitualCaster: true,
        canUseFocus: true,
        focusType: EquipmentTypes.tool.index,
        focusSubtype: 'Musical Instrument',
        spellAbilityDesc:
            'Charisma is your spellcasting ability for your bard spells. Your magic comes from the heart and soul you pour into the performance of your music or oration. You use your Charisma whenever a spell refers to your spellcasting ability. In addition, you use your Charisma modifier when setting the saving throw DC for a bard spell you cast and when making an attack roll with one.',
      ),
      classSpells: [
        light,
        bladeWard,
        thunderClap,
        cureWounds,
        featherFall,
        hideousLaughter,
      ],
      cantrips: Option(
        desc: 'Choose Bard cantrips',
        isChoice: true,
        isQuery: true,
        selections: 2,
        query: 'classes.name == "Bard" && level == 0',
        type: OptionTypes.spell.index,
      ),
      spellsAtLevel1: Option(
        desc: 'Choose Bard spells',
        isChoice: true,
        isQuery: true,
        selections: 2,
        query: 'classes.name == "Bard" && level == 1',
        type: OptionTypes.spell.index,
      ),
      features: [
        Feature(
          'Bardic Inspiration',
          desc:
              'You can inspire others through stirring words or music. To do so, you use a bonus action on your turn to choose one creature other than yourself within 60 feet of you who can hear you. That creature gains one Bardic Inspiration die, a d6.\nOnce within the next 10 minutes, the creature can roll the die and add the number rolled to one ability check, attack roll, or saving throw it makes. The creature can wait until after it rolls the d20 before deciding to use the Bardic Inspiration die, but must decide before the DM says whether the roll succeeds or fails. Once the Bardic Inspiration die is rolled, it is lost. A creature can have only one Bardic Inspiration die at a time.\nYou can use this feature a number of times equal to your Charisma modifier (a minimum of once). You regain any expended uses when you finish a long rest.\nYour Bardic Inspiration die changes when you reach certain levels in this class. The die becomes a d8 at 5th level, a d10 at 10th level, and a d12 at 15th level.',
          type: FeatureTypes.descriptive.index,
        ),
      ],
      subclassType: 'Bard Colleges',
      subclassDesc:
          'The way of a bard is gregarious. Bards seek each other out to swap songs and stories, boast of their accomplishments, and share their knowledge. Bards form loose associations, which they call colleges, to facilitate their gatherings and preserve their traditions.',
      subclasses: [
        Subclass(
          'College of Lore',
          desc:
              'Bards of the College of Lore know something about most things, collecting bits of knowledge from sources as diverse as scholarly tomes and peasant tales. Whether singing folk ballads in taverns or elaborate compositions in royal courts, these bards use their gifts to hold audiences spellbound. When the applause dies down, the audience members might find themselves questioning everything they held to be true, from their faith in the priesthood of the local temple to their loyalty to the king.\nThe loyalty of these bards lies in the pursuit of beauty and truth, not in fealty to a monarch or following the tenets of a deity. A noble who keeps such a bard as a herald or advisor knows that the bard would rather be honest than politic.\nThe college\'s members gather in libraries and sometimes in actual colleges, complete with classrooms and dormitories, to share their lore with one another. They also meet at festivals or affairs of state, where they can expose corruption, unravel lies, and poke fun at self-important figures of authority.',
          features: [
            Feature(
              'Bonus Proficiencies',
              desc:
                  'When you join the College of Lore at 3rd level, you gain proficiency with three skills of your choice.',
              type: FeatureTypes.addon.index,
              option: Option(
                desc: 'Three skills of your choice',
                selections: 3,
                isChoice: true,
                isProficiency: true,
                skills: skillsList(),
                type: OptionTypes.skill.index,
              ),
            ),
            Feature(
              'Additional Magic Secrets',
              desc:
                  'Also at 3rd level, you learn how to use your wit to distract, confuse, and otherwise sap the confidence and competence of others. When a creature that you can see within 60 feet of you makes an attack roll, an ability check, or a damage roll, you can use your reaction to expend one of your uses of Bardic Inspiration, rolling a Bardic Inspiration die and subtracting the number rolled from the creature\'s roll. You can choose to use this feature after the creature makes its roll, but before the DM determines whether the attack roll or ability check succeeds or fails, or before the creature deals its damage. The creature is immune if it can\'t hear you or if it\'s immune to being charmed.',
              type: FeatureTypes.descriptive.index,
            ),
          ],
        ),
      ],
      table: DndTable()
        ..table = [
          ['Cantrips', 'Spells Known', 1, 2, 3, 4, 5, 6, 7, 8, 9],
          [2, 4, 2],
          [2, 5, 3],
          [2, 6, 4, 2],
        ],
      source: srd,
    );

    /// ==================================
    /// Wizard
    /// ==================================
    var wizard = Class(
      'Wizard',
      image: defaultImage,
      hitDice: DiceRoller(),
      toolProfs: Option(),
      skillProfs: Option(),
      table: DndTable(),
      classSpells: [
        Spell('Wizard Spell 1'),
        Spell('Wizard Spell 2'),
      ],
      source: srd,
    );

    /// ================================================
    ///
    /// Backgrounds Section
    ///
    /// ================================================

    /// =================================
    /// Acolyte
    /// =================================
    var acolyte = Background(
      'Acolyte',
      desc:
          'You have spent your life in the service of a temple to a specific god or pantheon of gods. You act as an intermediary between the realm of the holy and the mortal world, performing sacred rites and offering sacrifices in order to conduct worshipers into the presence of the divine. You are not necessarily a cleric — performing sacred rites is not the same thing as channeling divine power.\n\nChoose a god, a pantheon of gods, or some other quasi-divine being from among those listed in appendix B or those specified by your DM, and work with your DM to detail the nature of your religious service. Were you a lesser functionary in a temple, raised from childhood to assist the priests in the sacred rites? Or were you a high priest who suddenly experienced a call to serve your god in a different way? Perhaps you were the leader of a small cult outside of any established temple structure, or even an occult group that served a fiendish master that you now deny',
      skillProfs: ['Insight', 'Religion'],
      languages: Option(
        desc: 'Two languages of your choice',
        selections: 2,
        isChoice: true,
        isQuery: true,
        type: OptionTypes.language.index,
      ),
      startingEquipment: [
        Option(
          desc: 'A holy symbol (a gift to you when you entered the priesthood)',
          isChoice: true,
          selections: 1,
          equipment: [amulet, emblem, reliquary],
        ),
        Option(
          desc: 'a prayer book or prayer wheel',
          isChoice: true,
          selections: 1,
          type: OptionTypes.equipment.index,
          equipment: [prayerBook, prayerWheel],
        ),
        Option(
          desc: '5 sticks of incense, vestments, a set of common clothes',
          isChoice: false,
          type: OptionTypes.equipment.index,
          equipment: [commonClothes, incenseSticks, vestments],
        ),
        Option(
          desc: 'a pouch containing 15 gp',
          isChoice: false,
          type: OptionTypes.coins.index,
          coins: Coins(gold: 15),
        ),
      ],
      features: [
        Feature(
          'Shelter of the Faithful',
          desc:
              'As an acolyte, you command the respect of those who share your faith, and you can perform the religious ceremonies of your deity. You and your adventuring companions can expect to receive free healing and care at a temple, shrine, or other established presence of your faith, though you must provide any material components needed for spells. Those who share your religion will support you (but only you) at a modest lifestyle.\n\nYou might also have ties to a specific temple dedicated to your chosen deity or pantheon, and you have a residence there. This could be the temple where you used to serve, if you remain on good terms with it, or a temple where you have found a new home. While near your temple, you can call upon the priests for assistance, provided the assistance you ask for is not hazardous and you remain in good standing with your temple.',
          type: FeatureTypes.descriptive.index,
        )
      ],
      characteristicsDesc:
          'Acolytes are shaped by their experience in temples or other religious communities. Their study of the history and tenets of their faith and their relationships to temples, shrines, or hierarchies affect their mannerisms and ideals. Their flaws might be some hidden hypocrisy or heretical idea, or an ideal or bond taken to an extreme.',
      suggestedCharacteristics: [
        CharacteristicList(
          name: 'Personality Trait',
          diceBack: Dice.d8.index,
          values: [
            'I idolize a particular hero of my faith, and constantly refer to that person\'s deeds and example.',
            'I can find common ground between the fiercest enemies, empathizing with them and always working toward peace.',
            'I see omens in every event and action. The gods try to speak to us, we just need to listen.',
            'Nothing can shake my optimistic attitude.',
            'I quote (or misquote) sacred texts and proverbs in almost every situation.',
            'I am tolerant (or intolerant) of other faiths and respect (or condemn) the worship of other gods.',
            'I\'ve enjoyed fine food, drink, and high society among my temple\'s elite. Rough living grates on me.',
            'I\'ve spent so long in the temple that I have little practical experience dealing with people in the outside world.'
          ],
        ),
        CharacteristicList(
          name: 'Ideal',
          diceBack: Dice.d6.index,
          values: [
            'Tradition. The ancient traditions of worship and sacrifice must be preserved and upheld. (Lawful)',
            'Charity. I always try to help those in need, no matter what the personal cost. (Good)',
            'Change. We must help bring about the changes the gods are constantly working in the world. (Chaotic)',
            'Power. I hope to one day rise to the top of my faith\'s religious hierarchy. (Lawful)',
            'Faith. I trust that my deity will guide my actions. I have faith that if I work hard, things will go well. (Lawful)',
            'Aspiration. I seek to prove myself worthy of my god\'s favor by matching my actions against his or her teachings. (Any)',
          ],
        ),
        CharacteristicList(
          name: 'Bond',
          diceBack: Dice.d6.index,
          values: [
            'I would die to recover an ancient relic of my faith that was lost long ago',
            'I will someday get revenge on the corrupt temple hierarchy who branded me a heretic.',
            'I owe my life to the priest who took me in when my parents died.',
            'Everything I do is for the common people.',
            'I will do anything to protect the temple where I served.',
            'I seek to preserve a sacred text that my enemies consider heretical and seek to destroy.',
          ],
        ),
        CharacteristicList(
          name: 'Flaw',
          diceBack: Dice.d6.index,
          values: [
            'I judge others harshly, and myself even more severely.',
            'I put too much trust in those who wield power within my temple\'s hierarchy.',
            'My piety sometimes leads me to blindly trust those that profess faith in my god.',
            'I am inflexible in my thinking.',
            'I am suspicious of strangers and expect the worst of them.',
            'Once I pick a goal, I become obsessed with it to the detriment of everything else in my life.',
          ],
        ),
      ],
      source: srd,
    );

    /// ===============================
    /// Folk Hero
    /// ===============================
    var folkHero = Background(
      'Folk Hero',
      desc:
          'You come from a humble social rank, but you are destined for so much more. Already the people of your home village regard you as their champion, and your destiny calls you to stand against the tyrants and monsters that threaten the common folk everywhere.',
      skillProfs: ['Animal Handling', 'Survival'],
      toolProfs: [
        Option(
          desc: 'one type of artisan\'s tools',
          selections: 1,
          isChoice: true,
          isQuery: true,
          isProficiency: true,
          type: OptionTypes.equipment.index,
          query: 'subtype.name == "Artisan\'s Tools"',
        ),
        Option(
          desc: 'vehicles (land)',
          isChoice: false,
          isProficiency: true,
          isQuery: true,
          query: 'type == OptionTypes.vehicle',
          type: OptionTypes.equipment.index,
        ),
      ],
      startingEquipment: [
        Option(
          desc: 'A set of artisan\'s tools (one of your choice)',
          selections: 1,
          isChoice: true,
          isQuery: true,
          query: 'subtype.name == "Artisan\'s Tools"',
          type: OptionTypes.equipment.index,
        ),
        Option(
          desc: 'a shovel, an iron pot, a set of common clothes',
          isChoice: false,
          type: OptionTypes.equipment.index,
          equipment: [
            shovel,
            ironPot,
            commonClothes,
          ],
        ),
        Option(
          desc: 'a pouch containing 10 gp',
          isChoice: false,
          type: OptionTypes.coins.index,
          coins: Coins(gold: 10),
        ),
      ],
      specialty: CharacteristicList(
        name: 'Defining Event',
        desc:
            'You previously pursued a simple profession among the peasantry, perhaps as a farmer, miner, servant, shepherd, woodcutter, or gravedigger. But something happened that set you on a different path and marked you for greater things. Choose or randomly determine a defining event that marked you as a hero of the people.',
        diceBack: Dice.d10.index,
        values: [
          'I stood up to a tyrant\'s agents',
          'I saved people during a natural disaster.',
          'I stood alone against a terrible monster.',
          'I stole from a corrupt merchant to help the poor.',
          'I led a militia to fight off an invading army.',
          'I broke into a tyrant\'s castle and stole weapons to arm the people.',
          'I trained the peasantry to use farm implements as weapons against a tyrant\'s soldiers.',
          'A lord rescinded an unpopular decree after I led a symbolic act of protest against it.',
          'A celestial, fey, or similar creature gave me a blessing or revealed my secret origin.',
          'Recruited into a lord\'s army, I rose to leadership and was commended for my heroism.',
        ],
      ),
      features: [
        Feature(
          'Rustic Hospitality',
          desc:
              'Since you come from the ranks of the common folk, you fit in among them with ease. You can find a place to hide, rest, or recuperate among other commoners, unless you have shown yourself to be a danger to them. They will shield you from the law or anyone else searching for you, though they will not risk their lives for you.',
        ),
      ],
      characteristicsDesc:
          'A folk hero is one of the common people, for better or for worse. Most folk heroes look on their humble origins as a virtue, not a shortcoming, and their home communities remain very important to them.',
      suggestedCharacteristics: [
        CharacteristicList(
          name: 'Personality Trait',
          diceBack: Dice.d8.index,
          values: [
            'I judge people by their actions, not their words.',
            'If someone is in trouble, I\'m always ready to lend help.',
            'When I set my mind to something, I follow through no matter what gets in my way.',
            'I have a strong sense of fair play and always try to find the most equitable solution to arguments.',
            'I\'m confident in my own abilities and do what I can to instill confidence in others.',
            'Thinking is for other people. I prefer action.',
            'I misuse long words in an attempt to sound smarter.',
            'I get bored easily. When am I going to get on with my destiny?',
          ],
        ),
        CharacteristicList(
          name: 'Ideal',
          diceBack: Dice.d6.index,
          values: [
            'Respect. People deserve to be treated with dignity and respect. (Good)',
            'Fairness. No one should get preferential treatment before the law, and no one is above the law. (Lawful)',
            'Freedom. Tyrants must not be allowed to oppress the people. (Chaotic)',
            'Might. If I become strong, I can take what I want — what I deserve. (Evil)',
            'Sincerity. There\'s no good in pretending to be something I\'m not. (Neutral)',
            'Destiny. Nothing and no one can steer me away from my higher calling. (Any)',
          ],
        ),
      ],
      source: srd,
    );

    /// =================================================
    ///
    /// Campaign Things
    ///
    /// =================================================

    /// ===============================
    /// Test Campaign
    /// ===============================
    var campaign = Campaign(
      ObjectId(),
      name: 'The Grand Tornado Adventure',
      world: 'Kansas',
      characters: [
        CampaignCharacter(
          'Spencer',
          race: highElf,
          dndClass: bard,
          level: 2,
          hitPoints: 14,
          armorClass: 10,
        ),
        CampaignCharacter(
          'Josh',
          race: highElf,
          dndClass: bard,
          level: 7,
          hitPoints: 32,
          armorClass: 13,
        ),
        CampaignCharacter(
          'Ella',
          race: highElf,
          dndClass: bard,
          level: 5,
          hitPoints: 15,
          armorClass: 3,
        ),
        CampaignCharacter(
          'Mara',
          race: highElf,
          dndClass: bard,
          level: 8,
          hitPoints: 12,
          armorClass: 12,
        ),
        CampaignCharacter(
          'Lauren',
          race: highElf,
          dndClass: bard,
          level: 1,
          hitPoints: 20,
          armorClass: 10,
        ),
      ],
    );

    /// ============================================
    ///
    /// Creatures Section
    ///
    /// ============================================

    /// ==================================
    /// Skeleton
    /// ==================================
    var skeleton = Creature(
      'Skeleton',
      size: DndSize.medium.index,
      alignment: DndAlignment.lEvil.index,
      armorClass: 13,
      hasNaturalArmor: true,
      hitDice: DiceRoller(numDice: 2, dieIndex: Dice.d8.index, modifier: 4),
      speed: 30,
      abilities: $Abilities.create()
        ..strength!.baseScore = 10
        ..dexterity!.baseScore = 14
        ..constitution!.baseScore = 15
        ..intelligence!.baseScore = 6
        ..wisdom!.baseScore = 8
        ..charisma!.baseScore = 5,
      vulnerabilities: [DamageTypes.bludgeoning.name],
      immunities: [DamageTypes.poison.name],
      conditionImmunities: [exhaustion, poisoned],
      senses: ['darkvision 60 ft.', 'passive Perception 9'],
      languages: allLanguages,
      challengeRating: 0.25,
      xpWorth: 50,
      actions: [
        Action(
          name: 'Shortsword',
          description: 'Melee Weapon Attack',
          toHitModifier: 4,
          reach: '5 ft.',
          numTargets: 1,
          hitDice: [
            DiceRoller(numDice: 1, dieIndex: Dice.d6.index, modifier: 2)
          ],
          damageType: [DamageTypes.piercing.index],
        ),
        Action(
          name: 'Shortbow',
          description: 'Ranged Weapon Attack',
          toHitModifier: 4,
          reach: '80/320 ft.',
          numTargets: 1,
          hitDice: [
            DiceRoller(numDice: 1, dieIndex: Dice.d6.index, modifier: 2)
          ],
          damageType: [DamageTypes.piercing.index],
        ),
      ],
    );

    // ==================================
    /// Gelatinous Cube
    /// ==================================
    var gelatinousCube = Creature(
      'Gelatinous Cube',
      size: DndSize.large.index,
      type: CreatureTypes.ooze.index,
      alignment: DndAlignment.neutral.index,
      armorClass: 6,
      hitDice: DiceRoller(numDice: 8, dieIndex: Dice.d10.index, modifier: 40),
      speed: 15,
      abilities: $Abilities.create()
        ..strength!.baseScore = 14
        ..dexterity!.baseScore = 3
        ..constitution!.baseScore = 20
        ..intelligence!.baseScore = 1
        ..wisdom!.baseScore = 6
        ..charisma!.baseScore = 5,
      conditionImmunities: [
        blinded,
        charmed,
        deafened,
        exhaustion,
        frightened,
        prone,
      ],
      senses: [
        'blindsight 60 ft. (blind beyond this radius)',
        'passive Perception 8',
      ],
      challengeRating: 2,
      xpWorth: 450,
      features: [
        Feature(
          'Ooze Cube',
          desc:
              'The cube takes up its entire space. Other creatures can enter the space, but a creature that does so is subjected to the cube\'s Engulf and has disadvantage on the saving throw. Creatures inside the cube can be seen but have total cover. A creature within 5 feet of the cube can take an action to pull a creature or object out of the cube. Doing so requires a successful DC 12 Strength check, and the creature making the attempt takes 10 (3d6) acid damage. The cube can hold only one Large creature or up to four Medium or smaller creatures inside it at a time.',
        ),
        Feature(
          'Transparent',
          desc:
              'Even when the cube is in plain sight, it takes a successful DC 15 Wisdom (Perception) check to spot a cube that has neither moved nor attacked. A creature that tries to enter the cube\'s space while unaware of the cube is surprised by the cube',
        ),
      ],
      actions: [
        Action(
          name: 'Pseudopod',
          description: 'Melee Weapon Attack',
          toHitModifier: 4,
          reach: '5 ft.',
          numTargets: 1,
          hitDice: [DiceRoller(numDice: 3, dieIndex: Dice.d6.index)],
          damageType: [DamageTypes.acid.index],
        ),
        Action(
          name: 'Engulf',
          description:
              'The cube moves up to its speed. While doing so, it can enter Large or smaller creature\' spaces. Whenever the cube enters a creature\'s space, the creature must make a DC 12 Dexterity saving throw. One a successful save, the creature can choose to be pushed 5 feet back or to the side of the cube. A creature that chooses not to be pushed suffers te consequences of a failed saving throw. On a failed save, the cube enters the creature\'s space, and the creature takes 10 (3d6) acid damage and is engulfed. The engulfed creature can\'t breathe, is restrained, and takes 21 (6d6) acid damage at the start of each of the cube\'s turns. When the cube moves, the engulfed creature moves with it. An engulfed creature can try to escape by taking an action to make a DC 12 Strength check. On a success, the creature escapes and enters a space of its choice within 5 feet of the cube.',
          hasSaveThrow: true,
          saveThrowAbilities: AbilityScores.dex.index,
          hitDice: [DiceRoller(numDice: 3, dieIndex: Dice.d6.index)],
          damageType: [DamageTypes.acid.index],
        ),
      ],
    );

    /// ==================================
    /// Orc
    /// ==================================
    var orc = Creature(
      'Orc',
      size: DndSize.medium.index,
      type: CreatureTypes.humanoid.index,
      alignment: DndAlignment.cEvil.index,
      armorClass: 13,
      hasNaturalArmor: true,
      hitDice: DiceRoller(numDice: 2, dieIndex: Dice.d8.index, modifier: 6),
      speed: 30,
      abilities: $Abilities.create()
        ..strength!.baseScore = 16
        ..dexterity!.baseScore = 12
        ..constitution!.baseScore = 16
        ..intelligence!.baseScore = 7
        ..wisdom!.baseScore = 11
        ..charisma!.baseScore = 10,
      skillBonuses: {'Intimidation': 2},
      senses: ['darkvision 60 ft.', 'passive Perception 10'],
      languages: [common, orcish],
      challengeRating: 0.5,
      xpWorth: 100,
      features: [
        Feature(
          'Aggresive',
          desc:
              'As a bonus action, the orc can move up to its speed toward a hostile creature that it can see.',
        ),
      ],
      actions: [
        Action(
          name: 'Greataxe',
          description: 'Melee Weapon Attack',
          toHitModifier: 5,
          reach: '5 ft.',
          numTargets: 1,
          hitDice: [
            DiceRoller(numDice: 1, dieIndex: Dice.d12.index, modifier: 3)
          ],
          damageType: [DamageTypes.slashing.index],
        ),
        Action(
          name: 'Javelin',
          description: 'Melee or Ranged Weapon Attack',
          toHitModifier: 5,
          reach: '5 ft. or range 30/120 ft.',
          numTargets: 1,
          hitDice: [
            DiceRoller(numDice: 1, dieIndex: Dice.d6.index, modifier: 3)
          ],
          damageType: [DamageTypes.piercing.index],
        ),
      ],
    );

    // ==================================
    /// Mimic
    /// ==================================
    var mimic = Creature(
      'Mimic',
      size: DndSize.medium.index,
      type: CreatureTypes.monstrosity.index,
      alignment: DndAlignment.neutral.index,
      armorClass: 12,
      hasNaturalArmor: true,
      hitDice: DiceRoller(numDice: 9, dieIndex: Dice.d8.index, modifier: 18),
      speed: 15,
      abilities: $Abilities.create()
        ..strength!.baseScore = 17
        ..dexterity!.baseScore = 12
        ..constitution!.baseScore = 15
        ..intelligence!.baseScore = 5
        ..wisdom!.baseScore = 13
        ..charisma!.baseScore = 8,
      skillBonuses: {'Stealth': 5},
      immunities: ['acid'],
      conditionImmunities: [prone],
      senses: ['darkvision 60 ft.', 'passive Perception 11'],
      challengeRating: 2,
      xpWorth: 450,
      features: [
        Feature(
          'Shapechanger',
          desc:
              'The mimic can use its action to polymorph into an object or back into its true, amorphous form. Its statistics are the same in each form. Any equipment it is wearing or carrying isn\'t transormed. It reverts to its true form it it dies.',
        ),
        Feature(
          'Adhesive (Object Form Only)',
          desc:
              'The mimic adheres to anything that touches it. A Huge or smaller creature adhered to the mimic is also grappled by it (escape DC 13). Ability checks made to escape this grapple have disadvantage.',
        ),
        Feature(
          'False Appearance (Object Form Only)',
          desc:
              'While the mimic remains motionless, it is indistinguishable from an ordinary object.',
        ),
        Feature(
          'Grappler',
          desc:
              'The mimic has advantage on attack rolls against any creature grappled by it.',
        ),
      ],
      actions: [
        Action(
          name: 'Pseudopod',
          description:
              'Melee Weapon Attack. If the mimic is in object form, the target is subjected to its adhesive trait.',
          toHitModifier: 5,
          reach: '5 ft.',
          numTargets: 1,
          hitDice: [
            DiceRoller(numDice: 1, dieIndex: Dice.d8.index, modifier: 3)
          ],
          damageType: [DamageTypes.bludgeoning.index],
        ),
        Action(
          name: 'Bite',
          description: 'Melee Weapon Attack',
          toHitModifier: 5,
          reach: '5 ft.',
          hitDice: [
            DiceRoller(numDice: 1, dieIndex: Dice.d8.index, modifier: 3),
            DiceRoller(numDice: 1, dieIndex: Dice.d8.index)
          ],
          damageType: [DamageTypes.piercing.index, DamageTypes.acid.index],
        )
      ],
    );

    return [
      elf,
      bard,
      wizard,
      acolyte,
      folkHero,
      flute,
      lute,
      drum,
      dulcimer,
      bagpipes,
      campaign,
      skeleton,
      gelatinousCube,
      orc,
      mimic,
    ];
  }

  static Class dndClass() {
    Class c = Class(
      'Class',
      image: defaultImage,
      hitDice: DiceRoller(),
      toolProfs: Option(),
      skillProfs: Option(),
      table: DndTable(),
    );
    return c;
  }

  static Race race(String name) {
    return Race(name, image: defaultImage);
  }
}
