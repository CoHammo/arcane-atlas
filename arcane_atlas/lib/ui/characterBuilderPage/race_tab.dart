import 'package:flutter/material.dart';
import 'package:mix/mix.dart';
import '../extras/all_extras.dart';
import '/globals.dart';
import '/models/models.dart';
import '/enums.dart';
import '/ui/info_pages.dart';

class RaceTab extends StatefulWidget {
  const RaceTab({super.key});

  @override
  State<RaceTab> createState() => _RaceTabState();
}

class _RaceTabState extends State<RaceTab> with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  void selectRace(Race r) async {
    Race? race = await showDialog<Race>(
      context: context,
      builder: (context) => RaceInfoAlertDialog(r),
    );
    if (race != mCharacter!.race) {
      setState(() {
        mCharacter!.updateRace(race);
      });
    }
  }

  var allowedRaces = realm.query<Race>(
    'isSubrace == false && source IN \$0',
    [mCharacter!.allowedSources.value],
  );

  @override
  Widget build(BuildContext context) {
    super.build(context);
    if (mCharacter!.race == null) {
      return InfoScrollable(
        contentWidth: maxWidth,
        children: [
          for (var race in allowedRaces) ...[
            if (race.hasSubraces) ...[
              Card(
                clipBehavior: Clip.hardEdge,
                child: ExpansionTile(
                  shape: const Border(),
                  maintainState: true,
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      StyledText(
                        '${race.name} (${race.subraces.length} Subraces)',
                        style: Styles.bodyLarge,
                      ),
                      StyledText(
                        race.abilityIncreaseString(),
                        style: Styles.bodySmall,
                      ),
                    ],
                  ),
                  trailing: SizedBox(
                    height: 35,
                    child: FilledButton(
                      style: FilledButton.styleFrom(
                          shape: dndButtonShape, padding: EdgeInsets.zero),
                      onPressed: () => showDialog<Race>(
                        context: context,
                        builder: (context) => RaceInfoAlertDialog(race),
                      ),
                      child: StyledText('Info', style: Styles.bodySmall),
                    ),
                  ),
                  children: [
                    for (var subrace in race.subraces) ...[
                      ItemListTile(
                        onTap: () => selectRace(subrace),
                        item: subrace,
                        subtitle: subrace.abilityIncreaseString(),
                        subtitleStyle: Styles.bodySmall,
                        buttonLabel: 'Select',
                        buttonLabelStyle: Styles.bodySmall,
                        onButtonPressed: () =>
                            setState(() => mCharacter!.updateRace(subrace)),
                      ),
                    ],
                  ],
                ),
              ),
            ] else ...[
              Card(
                child: ItemListTile(
                  onTap: () => selectRace(race),
                  item: race,
                  subtitle: race.abilityIncreaseString(),
                  subtitleStyle: Styles.bodySmall,
                  buttonLabel: 'Select',
                  buttonLabelStyle: Styles.bodySmall,
                  onButtonPressed: () =>
                      setState(() => mCharacter!.updateRace(race)),
                ),
              )
            ]
          ]
        ],
      );
    } else {
      return InfoScrollable(
        contentWidth: maxWidth,
        children: [
          BigImage(mCharacter!.race!.image!),
          Center(child: HugeText(mCharacter!.race!.name)),
          smallSpace,
          SmallText(mCharacter!.race!.traitsDesc),
          smallSpace,
          Align(
            alignment: Alignment.centerLeft,
            child: TextSection(
              'Ability Score Increase: ',
              mCharacter!.race!.abilityIncreaseString(),
            ),
          ),
          largeSpace,
          for (var trait in mCharacter!.race!.traits) ...[
            DndCard(trait.name, [
              SmallText(trait.desc),
              if (trait.type == FeatureTypes.addon) ...[
                if (trait.option!.isChoice) ...[
                  smallSpace,
                  OptionWidget(
                    trait.name,
                    trait.option!,
                  )
                ],
              ],
            ]),
            smallSpace,
          ],
          smallSpace,
          FilledButton(
            onPressed: () => setState(() => mCharacter!.updateRace(null)),
            style: FilledButton.styleFrom(
              shape: dndButtonShape,
              padding: EdgeInsets.zero,
            ),
            child: const SmallText('Change Race'),
          ),
        ],
      );
    }
  }
}

class RaceTileRow extends StatelessWidget {
  const RaceTileRow(this.race, {super.key});
  final Race race;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.memory(
          race.image!,
          height: 55,
        ),
        const SizedBox(width: 15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (race.hasSubraces) ...[
              SmallText('${race.name} (${race.subraces.length} Subraces)'),
            ] else ...[
              MediumText(race.name, bold: false),
              Text(race.abilityIncreaseString()),
            ]
          ],
        ),
      ],
    );
  }
}

class RaceInfoAlertDialog extends StatelessWidget {
  const RaceInfoAlertDialog(this.race, {super.key});
  final Race race;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: const EdgeInsets.only(top: 10, bottom: 10),
      insetPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      title: Text('${race.name} Info'),
      content: RaceInfoWidget(race),
      surfaceTintColor: Colors.white,
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context, null),
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed:
              race.hasSubraces ? null : () => Navigator.pop(context, race),
          child: const Text('Select Race'),
        ),
      ],
    );
  }
}
