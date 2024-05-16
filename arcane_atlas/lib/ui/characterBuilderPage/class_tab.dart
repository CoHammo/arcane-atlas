import 'package:flutter/material.dart';
import '/models/models.dart';
import '/ui/ui_extras.dart';
import '/enums.dart';
import '/ui/info_pages.dart';
import '/globals.dart';
import 'package:signals/signals_flutter.dart';

class ClassTab extends StatefulWidget {
  const ClassTab({super.key});

  @override
  State<ClassTab> createState() => _ClassTabState();
}

class _ClassTabState extends State<ClassTab>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Watch((context) {
      if (mCharacter!.dndClass == null) {
        var allowedClasses = realm
            .query<Class>('source IN \$0', [mCharacter!.allowedSources.value]);
        return ListView.separated(
          itemCount: allowedClasses.length,
          itemBuilder: (context, index) {
            return ItemListTile(
              onTap: () async {
                Class? dndClass = await showDialog<Class>(
                  context: context,
                  builder: (context) => AlertDialog(
                    contentPadding: const EdgeInsets.only(top: 10, bottom: 10),
                    insetPadding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 20),
                    title: Text('${allowedClasses[index].name} Info'),
                    content: ClassInfoWidget(allowedClasses[index]),
                    surfaceTintColor: Colors.white,
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context, null),
                        child: const Text('Cancel'),
                      ),
                      TextButton(
                        onPressed: () =>
                            Navigator.pop(context, allowedClasses[index]),
                        child: const Text('Select Class'),
                      ),
                    ],
                  ),
                );
                if (dndClass != mCharacter!.dndClass) {
                  setState(() {
                    mCharacter!.updateClass(dndClass);
                  });
                }
              },
              item: allowedClasses[index],
              subtitle: 'Hit Dice: ${allowedClasses[index].hitDice}',
              buttonTitle: 'Select',
              onButtonPressed: () => setState(
                  () => mCharacter!.updateClass(allowedClasses[index])),
            );
          },
          separatorBuilder: (context, index) => const Divider(height: 2),
        );
      } else {
        Class theClass = mCharacter!.dndClass!;
        return InfoScrollable(
          contentWidth: maxWidth,
          children: [
            BigImage(theClass.image!),
            Center(child: HugeText('${theClass.name} Features')),
            smallSpace,
            SmallText(theClass.featureDesc),
            smallSpace,
            DndCard('Hit Points', [
              TextSection(
                'Hit Dice: ',
                '${theClass.hitDice ?? ''} per ${theClass.name} level',
              ),
              smallSpace,
              TextSection(
                'Hit Points at 1st Level: ',
                '${theClass.hitDice?.range ?? ''} + your Constitution modifier',
              ),
              smallSpace,
              TextSection(
                'Hit Points at Higher Levels: ',
                '${theClass.hitDice ?? ''} (or ${theClass.levelUpHP}) + your Constitution modifier per ${theClass.name} level after 1st',
              ),
            ]),
            smallSpace,
            DndCard('Proficiencies', [
              TextSection('Armor: ', theClass.armorProfs.join(', ')),
              smallSpace,
              TextSection('Weapons: ', theClass.weaponProfs.join(', ')),
              smallSpace,
              TextSection('Tools: ', theClass.toolProfs?.desc ?? ''),
              if (theClass.toolProfs!.isChoice) ...[
                smallSpace,
                OptionWidget(
                  'Tool Proficiencies',
                  theClass.toolProfs!,
                ),
                smallSpace,
              ],
              TextSection('Saving Throws: ', theClass.savingThrows.join(', ')),
              smallSpace,
              TextSection('Skills: ', theClass.skillProfs?.desc ?? ''),
              if (theClass.skillProfs!.isChoice) ...[
                smallSpace,
                OptionWidget(
                  'Skill Proficiencies',
                  theClass.skillProfs!,
                ),
                smallSpace,
              ]
            ]),
            smallSpace,
            DndCard('Equipment', [
              const SmallText(
                'You start with the following equipment, in addition to the equipment granted by your background:',
              ),
              for (var equip in theClass.startingEquipment) ...[
                SmallText(equip.desc),
                smallSpace,
              ],
            ]),
            smallSpace,
            if (theClass.isSpellcaster) ...[
              DndCard('Spellcasting', [
                SmallText(theClass.spellcaster!.desc),
                smallSpace,
                TextSection(
                  'Spell Ability: ',
                  theClass.spellcaster!.spellAbility.toString(),
                ),
                smallSpace,
                if (theClass.spellcaster!.isRitualCaster) ...[
                  TextSection(
                    'Ritual Casting: ',
                    theClass.spellcaster!.features['Ritual Casting']!,
                  ),
                  smallSpace,
                ],
                if (theClass.spellcaster!.canUseFocus) ...[
                  TextSection(
                    'Spellcasting Focus: ',
                    theClass.spellcaster!.features['Spellcasting Focus']!,
                  ),
                  smallSpace,
                ],
                OptionWidget(
                  'Cantrips (${theClass.table![0]['Cantrips']!})',
                  theClass.cantrips!,
                ),
                smallSpace,
                OptionWidget(
                  'Spells (${theClass.table![0]['1']!})',
                  theClass.spellsAtLevel1!,
                ),
              ]),
              smallSpace,
              for (var feat in theClass.features) ...[
                DndCard(feat.name, [
                  SmallText(feat.desc),
                  if (feat.type == FeatureTypes.addon) ...[
                    smallSpace,
                    OptionWidget(
                      feat.name,
                      feat.option!,
                    ),
                  ],
                ]),
                smallSpace,
              ],
              smallSpace,
            ],
            FilledButton(
              onPressed: () => setState(() => mCharacter!.updateClass(null)),
              style: FilledButton.styleFrom(
                shape: dndButtonShape,
                padding: EdgeInsets.zero,
              ),
              child: const SmallText('Change Class'),
            ),
          ],
        );
      }
    });
  }
}

class ClassTileRow extends StatelessWidget {
  const ClassTileRow(this.dndClass, {super.key});
  final Class dndClass;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 55,
          child: Image.memory(dndClass.image!),
        ),
        const SizedBox(width: 15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SmallText(dndClass.name),
            Text('Hit Dice: ${dndClass.hitDice}'),
            smallSpace,
          ],
        ),
      ],
    );
  }
}
