import 'package:flutter/material.dart';
import 'package:mix/mix.dart';
import 'package:signals/signals_flutter.dart';
import '../extras/all_extras.dart';
import '/globals.dart';
import '/models/models.dart';
import '/enums.dart';

class NewAbilitiesTab extends StatefulWidget {
  const NewAbilitiesTab({super.key});

  @override
  State<NewAbilitiesTab> createState() => _NewAbilitiesTabState();
}

class _NewAbilitiesTabState extends State<NewAbilitiesTab>
    with SignalsAutoDisposeMixin, AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  final DiceRoller dice = DiceRoller(numDice: 4, dieIndex: Dice.d6.index);

  late final chooseMode = createSignal(context, AbilityChooseMode.manualRolled);

  late final List<Signal<Roll?>> abilityRolls = [
    for (int i = 0; i < 6; i++) createSignal(context, null)
  ];

  late final Map<AbilityScore, Signal<int>> abilitySignals = {};

  late final raceSignal =
      createComputed(context, () => mCharacter!.raceChange.value);

  bool raceChanged = false;

  late final Computed<int> points = createComputed(
      context,
      () =>
          27 -
          abilitySignals.values.fold(
              0, (val, sig) => val += (sig.value > 8 ? sig.value - 8 : 0)));

  @override
  void initState() {
    for (var abs in mCharacter!.abilities.scores.values) {
      var s = signal(abs.baseScore);
      abilitySignals.addAll({abs: s});
      effect(() {
        abs.baseScore = s.value;
      });
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    raceChanged = raceSignal.value;
    return InfoScrollable(contentWidth: 600, children: [
      SegmentedButton<AbilityChooseMode>(
          segments: [
            ButtonSegment<AbilityChooseMode>(
              value: AbilityChooseMode.manualRolled,
              label: StyledText('Manual/Rolled', style: Styles.bodySmall),
            ),
            ButtonSegment<AbilityChooseMode>(
              value: AbilityChooseMode.standard,
              label: StyledText('Standard Array', style: Styles.bodySmall),
            ),
            ButtonSegment<AbilityChooseMode>(
              value: AbilityChooseMode.pointBuy,
              label: StyledText('Point Buy', style: Styles.bodySmall),
            ),
          ],
          selected: {
            chooseMode.value
          },
          onSelectionChanged: (selection) {
            if (selection.first == AbilityChooseMode.standard) {
              abilityRolls[0].value = Roll(total: 15);
              abilityRolls[1].value = Roll(total: 14);
              abilityRolls[2].value = Roll(total: 13);
              abilityRolls[3].value = Roll(total: 12);
              abilityRolls[4].value = Roll(total: 10);
              abilityRolls[5].value = Roll(total: 8);
              for (var abs in abilitySignals.values) {
                abs.value = 8;
              }
            } else if (selection.first == AbilityChooseMode.manualRolled) {
              for (var abs in abilitySignals.values) {
                abs.value = 8;
              }
              for (var roll in abilityRolls) {
                roll.value = null;
              }
            } else {
              for (var abs in abilitySignals.values) {
                abs.value = 8;
              }
            }
            chooseMode.value = selection.first;
          }),
      const SizedBox(height: 30),
      Wrap(
        direction: Axis.horizontal,
        alignment: WrapAlignment.center,
        spacing: 10,
        runSpacing: 10,
        children: [
          for (var abs in abilitySignals.entries) ...[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                StyledText(
                  abs.key.type.name,
                  style: Styles.bodySmall,
                ),
                ScrollingNumberPicker(
                  150,
                  50,
                  abs.value,
                  min: chooseMode.value == AbilityChooseMode.manualRolled
                      ? 1
                      : 8,
                  max: chooseMode.value == AbilityChooseMode.manualRolled
                      ? 99
                      : 15,
                  suffix:
                      abs.key.raceBonus > 0 ? '+${abs.key.raceBonus}' : null,
                  resetSignal: chooseMode,
                ),
              ],
            ),
          ],
        ],
      ),
      const SizedBox(height: 25),
      if (chooseMode.value == AbilityChooseMode.pointBuy) ...[
        Center(
            child: StyledText('$points/27 Points', style: Styles.titleSmall)),
      ] else ...[
        if (chooseMode.value == AbilityChooseMode.manualRolled) ...[
          Center(
            child: SizedBox(
              height: 40,
              width: 140,
              child: FilledButton(
                style: FilledButton.styleFrom(shape: dndButtonShape),
                onPressed: () {
                  for (var roll in abilityRolls) {
                    roll.value = dice.roll(dropLowest: 1);
                  }
                  abilityRolls
                      .sort((a, b) => b.value!.total.compareTo(a.value!.total));
                },
                child: StyledText('Roll Dice', style: Styles.bodyMedium),
              ),
            ),
          ),
          largeSpace,
        ],
        Wrap(
          alignment: WrapAlignment.center,
          direction: Axis.horizontal,
          spacing: 10,
          children: [
            for (var roll in abilityRolls) ...[
              Column(
                children: [
                  SizedBox(
                    height: 50,
                    width: 50,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        shape: dndButtonShape,
                        padding: const EdgeInsets.all(1),
                      ),
                      child: StyledText('${roll.value?.total ?? 'Roll'}',
                          style: Styles.titleSmall),
                      onPressed: () {
                        if (chooseMode.value ==
                            AbilityChooseMode.manualRolled) {
                          roll.value = dice.roll(dropLowest: 1);
                        }
                      },
                    ),
                  ),
                  smallSpace,
                  if (chooseMode.value == AbilityChooseMode.manualRolled) ...[
                    SizedBox(
                      height: 50,
                      width: 50,
                      child: Table(
                        border: TableBorder.all(width: 1, color: Colors.grey),
                        children: [
                          TableRow(children: [
                            StyledText('${roll.value?.rolls?[0] ?? 0}',
                                style: Styles.bodyMedium
                                    .add($text.textAlign.center())),
                            StyledText('${roll.value?.rolls?[1] ?? 0}',
                                style: Styles.bodyMedium
                                    .add($text.textAlign.center())),
                          ]),
                          TableRow(children: [
                            StyledText('${roll.value?.rolls?[2] ?? 0}',
                                style: Styles.bodyMedium
                                    .add($text.textAlign.center())),
                            StyledText('${roll.value?.rolls?[3] ?? 0}',
                                style: Styles.bodyMedium
                                    .add($text.textAlign.center())),
                          ])
                        ],
                      ),
                    ),
                  ],
                ],
              ),
            ]
          ],
        ),
      ],
    ]);
  }
}
