import 'package:flutter/material.dart';
import '../extras/option_widgets.dart';
import '/globals.dart';
import '/models/models.dart';
import '../extras/ui_extras.dart';
import '/enums.dart';
import '/ui/info_pages.dart';
import 'package:signals/signals_flutter.dart';

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

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Watch((context) {
      if (mCharacter!.race == null) {
        var allowedRaces = realm.query<Race>(
            'isSubrace == false && source IN \$0',
            [mCharacter!.allowedSources.value]);
        return ListView.separated(
          itemCount: allowedRaces.length,
          itemBuilder: (context, index) {
            if (allowedRaces[index].hasSubraces) {
              return ExpansionTile(
                maintainState: true,
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${allowedRaces[index].name} (${allowedRaces[index].subraces.length} Subraces)',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(allowedRaces[index].abilityIncreaseString()),
                  ],
                ),
                trailing: SizedBox(
                  height: 35,
                  child: FilledButton(
                    style: FilledButton.styleFrom(
                        shape: dndButtonShape, padding: EdgeInsets.zero),
                    onPressed: () => showDialog<Race>(
                      context: context,
                      builder: (context) =>
                          RaceInfoAlertDialog(allowedRaces[index]),
                    ),
                    child: const Text('Info'),
                  ),
                ),
                children: [
                  for (var subrace in allowedRaces[index].subraces) ...[
                    ItemListTile(
                      onTap: () => selectRace(subrace),
                      item: subrace,
                      subtitle: subrace.abilityIncreaseString(),
                      buttonTitle: 'Select',
                      onButtonPressed: () =>
                          setState(() => mCharacter!.updateRace(subrace)),
                    )
                  ],
                ],
              );
            } else {
              return ListTile(
                selected: mCharacter!.race == allowedRaces[index],
                selectedTileColor: const Color.fromARGB(255, 221, 221, 221),
                onTap: () => selectRace(allowedRaces[index]),
                title: RaceTileRow(allowedRaces[index]),
                trailing: FilledButton(
                  style: FilledButton.styleFrom(shape: dndButtonShape),
                  onPressed: () => setState(
                      () => mCharacter!.updateRace(allowedRaces[index])),
                  child: const SmallText('Select'),
                ),
              );
            }
          },
          separatorBuilder: (context, index) => const Divider(height: 2),
        );
      } else {
        return Watch(
          (context) => InfoScrollable(
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
          ),
        );
      }
    });
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
