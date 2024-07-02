import 'package:flutter/material.dart';
import '/models/models.dart';
import 'extras/ui_extras.dart';

class RaceInfoWidget extends StatelessWidget {
  const RaceInfoWidget(this.race, {super.key});
  final Race race;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: maxWidth,
      child: ListView(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 50),
        children: [
          BigImage(race.image!),
          // Extra Race Descriptions
          for (var desc in race.descriptions.entries) ...[
            HugeText(desc.key),
            const Divider(thickness: 2),
            SmallText(desc.value),
          ],
          // Traits
          HugeText('${race.name} Traits'),
          const Divider(thickness: 2),
          SmallText(race.traitsDesc),
          largeSpace,
          TextSection('Ability Score Increase. ', race.abilityIncreaseString()),
          largeSpace,
          TextSection('Age. ', race.age),
          largeSpace,
          TextSection('Size. ', race.sizeDesc),
          largeSpace,
          TextSection(
              'Speed. ', 'Your base walking speed is ${race.speed} feet'),
          largeSpace,
          for (var trait in race.traits) ...[
            TextSection('${trait.name}. ', trait.desc),
            largeSpace,
          ],
          TextSection('Languages. ', race.languagesDesc),
          largeSpace,
          if (race.subracesDesc != null)
            TextSection('Subraces. ', race.subracesDesc!),
          largeSpace,
          if (race.source != null)
            DndSource('Race Source: ${race.source!.name}'),
        ],
      ),
    );
  }
}

class ClassInfoWidget extends StatelessWidget {
  const ClassInfoWidget(this.dndClass, {super.key});
  final Class dndClass;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: maxWidth,
      child: ListView(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 50),
        children: [
          BigImage(dndClass.image!),
          // Extra Class Descriptions
          for (var desc in dndClass.descriptions.entries) ...[
            HugeText(desc.key),
            divider,
            SmallText(desc.value)
          ],
          // Features
          HugeText('${dndClass.name} Features'),
          divider,
          SmallText(
            'As a(n) ${dndClass.name}, you gain the following class features',
          ),
          largeSpace,
          // Hit Points
          const MediumText('Hit Points'),
          smallSpace,
          TextSection(
            'Hit Dice: ',
            '${dndClass.hitDice ?? ''} per ${dndClass.name} level',
          ),
          smallSpace,
          TextSection(
            'Hit Points at 1st Level: ',
            '${dndClass.hitDice?.range ?? ''} + your Constitution modifier',
          ),
          smallSpace,
          TextSection(
            'Hit Points at Higher Levels: ',
            '${dndClass.hitDice ?? ''} (or ${dndClass.levelUpHP}) + your Constitution modifier per ${dndClass.name} level after 1st',
          ),
          largeSpace,
          // Proficiencies
          const MediumText('Proficiencies'),
          smallSpace,
          TextSection('Armor: ', dndClass.armorProfs.join(', ')),
          smallSpace,
          TextSection('Weapons: ', dndClass.weaponProfs.join(', ')),
          smallSpace,
          TextSection('Tools: ', dndClass.toolProfs?.desc ?? ''),
          smallSpace,
          TextSection('Saving Throws: ', dndClass.savingThrows.join(', ')),
          smallSpace,
          TextSection('Skills: ', dndClass.skillProfs?.desc ?? ''),
          largeSpace,
          // Equipment
          const MediumText('Equipment'),
          smallSpace,
          const SmallText(
            'You start with the following equipment, in addition to the equipment granted by your background:',
          ),
          smallSpace,
          for (var equip in dndClass.startingEquipment) ...[
            SmallText(equip.toString()),
          ],
          largeSpace,
          // Spellcasting
          if (dndClass.spellcaster != null) ...[
            const LargeText('Spellcasting'),
            divider,
            SmallText(dndClass.spellcaster!.desc),
            largeSpace,
            for (var feat in dndClass.spellcaster!.features.entries) ...[
              MediumText(feat.key),
              smallSpace,
              SmallText(feat.value),
              largeSpace,
            ],
            const MediumText('Spellcasting Ability'),
            smallSpace,
            SmallText(dndClass.spellcaster!.spellAbilityDesc),
            smallSpace,
            TextSection(
              'Spell Save DC',
              ' = 8 + your proficiency bonus + your ${dndClass.spellcaster!.spellAbility.name} modifier',
            ),
            smallSpace,
            TextSection(
              'Spell Attack Modifier',
              ' = your proficiency bonus + your ${dndClass.spellcaster!.spellAbility.name} modifier',
            ),
          ],
          largeSpace,
          // Other Class Features
          for (var feat in dndClass.features) ...[
            LargeText(feat.name),
            divider,
            SmallText(feat.desc),
            if (feat.source != null) ...[
              smallSpace,
              DndSource('Feature Source: ${feat.source!.name}'),
              largeSpace,
            ] else
              largeSpace,
          ],
          // Class Source
          if (dndClass.source != null) ...[
            DndSource('Class Source: ${dndClass.source!.name}'),
            largeSpace,
          ],
          // Subclasses/Archetypes
          HugeText(dndClass.subclassType),
          divider,
          SmallText(dndClass.subclassDesc),
          largeSpace,
          for (var subclass in dndClass.subclasses) ...[
            LargeText(subclass.name),
            divider,
            SmallText(subclass.desc),
            largeSpace,
            for (var feat in subclass.features) ...[
              MediumText(feat.name),
              smallSpace,
              SmallText(feat.desc),
              if (feat.source != null) ...[
                smallSpace,
                DndSource('Feature Source: ${feat.source!.name}'),
                largeSpace,
              ] else
                largeSpace,
            ],
            if (subclass.source != null) ...[
              DndSource('Archetype Source: ${subclass.source!.name}'),
              largeSpace,
            ]
          ],
        ],
      ),
    );
  }
}

class BackgroundInfoWidget extends StatelessWidget {
  const BackgroundInfoWidget(this.background, {super.key});
  final Background background;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: maxWidth,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HugeText(background.name),
            divider,
            SmallText(background.desc),
            largeSpace,
            TextSection(
                'Skill Proficiencies: ', background.skillProfs.join(', ')),
            smallSpace,
            if (background.toolProfs.isNotEmpty) ...[
              TextSection(
                  'Tool Proficiencies: ', background.toolProfs.join(', ')),
              smallSpace,
            ],
            if (background.languages != null) ...[
              TextSection('Languages: ', background.languages!.desc),
              smallSpace,
            ],
            TextSection('Equipment: ', background.startingEquipment.join(', ')),
            largeSpace,
            if (background.specialty != null) ...[
              MediumText(background.specialty!.name),
              smallSpace,
              SmallText(background.specialty!.desc),
              largeSpace,
              CharacteristicListWidget(background.specialty!),
              largeSpace,
            ],
            for (var feat in background.features) ...[
              MediumText('Feature: ${feat.name}'),
              smallSpace,
              SmallText(feat.desc),
              if (feat.source != null) ...[
                smallSpace,
                DndSource('Feature Source: ${feat.source}'),
                largeSpace,
              ] else
                largeSpace,
            ],
            const MediumText('Suggested Characteristics'),
            largeSpace,
            for (var characteristics
                in background.suggestedCharacteristics) ...[
              CharacteristicListWidget(characteristics),
              const SizedBox(height: 25),
            ],
          ],
        ),
      ),
    );
  }
}

class CharacteristicListWidget extends StatelessWidget {
  const CharacteristicListWidget(this.characteristics, {super.key});
  final CharacteristicList characteristics;

  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder.all(color: Colors.grey),
      columnWidths: const <int, TableColumnWidth>{
        0: FixedColumnWidth(60),
        1: FlexColumnWidth(),
      },
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: [
        TableRow(
          decoration:
              const BoxDecoration(color: Color.fromRGBO(224, 224, 224, 1)),
          children: [
            Center(
              child: Text(
                characteristics.dice.toString(),
                textScaler: smallText,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 4, 10, 4),
              child: Text(
                characteristics.name,
                textScaler: smallText,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
        for (var c in characteristics.values.indexed)
          TableRow(
            decoration: const BoxDecoration(color: Colors.white),
            children: [
              Center(child: SmallText('${c.$1 + 1}')),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 4, 10, 4),
                child: SmallText(c.$2),
              )
            ],
          ),
      ],
    );
  }
}
