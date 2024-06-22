import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '/globals.dart';
import '/models/models.dart';
import '/ui/ui_extras.dart';
import '/enums.dart';

class AbilitiesTab extends StatefulWidget {
  AbilitiesTab({super.key});
  final DiceRoller dice = DiceRoller(numDice: 4, dieIndex: Dice.d6.index);
  final List<Roll?> abilityRolls = List.filled(6, null, growable: true);

  @override
  State<AbilitiesTab> createState() => _AbilitiesTabState();
}

class _AbilitiesTabState extends State<AbilitiesTab> {
  Abilities abilities = mCharacter!.abilities;

  int get abilityPoints {
    return 27 -
        abilities.scores.values.fold<int>(
            0, (i, ab) => ab.baseScore > 8 ? i + (ab.baseScore - 8) : i);
  }

  int getAbilityPointsSpent() {
    return 27 - abilityPoints;
  }

  @override
  Widget build(BuildContext context) {
    return InfoScrollable(
      contentWidth: 700,
      children: [
        SegmentedButton<AbilityChooseMode>(
          segments: const [
            ButtonSegment<AbilityChooseMode>(
              value: AbilityChooseMode.manualRolled,
              label: SmallText('Manual/Rolled'),
            ),
            ButtonSegment<AbilityChooseMode>(
              value: AbilityChooseMode.standard,
              label: SmallText('Standard Array'),
            ),
            ButtonSegment<AbilityChooseMode>(
              value: AbilityChooseMode.pointBuy,
              label: SmallText('Point Buy'),
            ),
          ],
          selected: {mCharacter!.abilityMode},
          onSelectionChanged: (selection) => setState(() {
            mCharacter!.abilityMode = selection.first;
            if (mCharacter!.abilityMode == AbilityChooseMode.standard) {
              widget.abilityRolls.replaceRange(0, 6, [
                Roll(total: 15),
                Roll(total: 14),
                Roll(total: 13),
                Roll(total: 12),
                Roll(total: 10),
                Roll(total: 8)
              ]);
            } else if (mCharacter!.abilityMode ==
                AbilityChooseMode.manualRolled) {
              widget.abilityRolls.fillRange(0, 6, null);
            } else {
              for (var ab in abilities.scores.values) {
                ab.baseScore = 8;
              }
            }
          }),
        ),
        const SizedBox(height: 40),
        Wrap(
          direction: Axis.horizontal,
          alignment: WrapAlignment.center,
          spacing: 10,
          runSpacing: 10,
          children: [
            for (var abs in abilities.scores.entries) ...[
              SizedBox(
                width: 225,
                child: AbilityScoreRow(
                  abs.key,
                  abs.value,
                  mCharacter!.abilityMode,
                  () => setState(() {}),
                  getAbilityPointsSpent,
                ),
              ),
            ],
          ],
        ),
        largeSpace,
        if (mCharacter!.abilityMode == AbilityChooseMode.manualRolled ||
            mCharacter!.abilityMode == AbilityChooseMode.standard) ...[
          if (mCharacter!.abilityMode == AbilityChooseMode.manualRolled) ...[
            Center(
              child: SizedBox(
                width: 160,
                height: 40,
                child: FilledButton(
                  onPressed: () => setState(() {
                    for (int i = 0; i < widget.abilityRolls.length; i++) {
                      widget.abilityRolls[i] = widget.dice.roll(dropLowest: 1);
                    }
                    widget.abilityRolls
                        .sort((a, b) => b!.total.compareTo(a!.total));
                  }),
                  style: FilledButton.styleFrom(shape: dndButtonShape),
                  child: const MediumText('Roll All Dice', bold: false),
                ),
              ),
            ),
            largeSpace,
          ],
          Wrap(
            direction: Axis.horizontal,
            alignment: WrapAlignment.center,
            spacing: 10,
            runSpacing: 10,
            children: [
              for (int i = 0; i < widget.abilityRolls.length; i++) ...[
                SizedBox(
                  height:
                      mCharacter!.abilityMode == AbilityChooseMode.manualRolled
                          ? 95
                          : 50,
                  width: 50,
                  child: Column(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          onPressed: mCharacter!.abilityMode ==
                                  AbilityChooseMode.manualRolled
                              ? () => setState(() => widget.abilityRolls[i] =
                                  widget.dice.roll(dropLowest: 1))
                              : () {},
                          style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4)),
                            padding: EdgeInsets.zero,
                          ),
                          child: LargeText(
                            widget.abilityRolls[i]?.total.toString() ?? 'Roll',
                            bold: false,
                          ),
                        ),
                      ),
                      if (mCharacter!.abilityMode ==
                          AbilityChooseMode.manualRolled) ...[
                        smallSpace,
                        Table(
                          border: TableBorder.all(color: Colors.grey),
                          children: [
                            TableRow(children: [
                              Center(
                                  child: SmallText(
                                      widget.abilityRolls[i]?[0]?.toString() ??
                                          '0')),
                              Center(
                                  child: SmallText(
                                      widget.abilityRolls[i]?[1]?.toString() ??
                                          '0')),
                            ]),
                            TableRow(children: [
                              Center(
                                  child: SmallText(
                                      widget.abilityRolls[i]?[2]?.toString() ??
                                          '0')),
                              Center(
                                  child: SmallText(
                                      widget.abilityRolls[i]?[3]?.toString() ??
                                          '0')),
                            ])
                          ],
                        ),
                      ],
                    ],
                  ),
                )
              ],
            ],
          ),
        ] else ...[
          Center(
              child: HugeText(
            'Points: $abilityPoints/27',
            bold: false,
          )),
        ]
      ],
    );
  }
}

class AbilityScoreRow extends StatefulWidget {
  const AbilityScoreRow(
    this.name,
    this.ab,
    this.mode,
    this.onChange,
    this.pointsSpent, {
    super.key,
  });
  final String name;
  final AbilityScore ab;
  final AbilityChooseMode mode;
  final void Function() onChange;
  final int Function() pointsSpent;

  @override
  State<AbilityScoreRow> createState() => _AbilityScoreRowState();
}

class _AbilityScoreRowState extends State<AbilityScoreRow> {
  final DiceRoller dice = DiceRoller(numDice: 4, dieIndex: Dice.d6.index);
  int get minScore => widget.mode == AbilityChooseMode.manualRolled ? 3 : 8;
  int get maxScore => widget.mode == AbilityChooseMode.manualRolled ? 99 : 15;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8, right: 5),
          child: SizedBox(
            height: 32,
            width: 32,
            child: FilledButton(
                onPressed: widget.ab.baseScore > minScore
                    ? () => setState(() {
                          widget.ab.baseScore--;
                          widget.onChange();
                        })
                    : null,
                style: FilledButton.styleFrom(
                    shape: dndButtonShape, padding: EdgeInsets.zero),
                child: const Icon(Icons.remove)),
          ),
        ),
        SizedBox(
          height: 65,
          width: 125,
          child: TextField(
            controller:
                TextEditingController(text: widget.ab.baseScore.toString()),
            maxLength: 2,
            onChanged: (value) =>
                widget.ab.baseScore = int.tryParse(value) ?? 8,
            onSubmitted: (value) => setState(() {
              widget.ab.baseScore = int.tryParse(value) ?? 8;
              widget.onChange();
            }),
            keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.digitsOnly
            ],
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 20),
            decoration: InputDecoration(
              prefix: const SizedBox(width: 25),
              suffix: SizedBox(
                width: 25,
                child: Text(
                    widget.ab.raceBonus > 0 ? '+${widget.ab.raceBonus}' : ''),
              ),
              counterText: '',
              contentPadding: const EdgeInsets.symmetric(horizontal: 10),
              border: const OutlineInputBorder(),
              labelText: widget.name,
              labelStyle: const TextStyle(fontSize: 18),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8, left: 5),
          child: SizedBox(
            height: 32,
            width: 32,
            child: FilledButton(
              onPressed: widget.ab.baseScore < maxScore &&
                      (widget.pointsSpent() < 27 ||
                          mCharacter!.abilityMode != AbilityChooseMode.pointBuy)
                  ? () => setState(() {
                        widget.ab.baseScore++;
                        widget.onChange();
                      })
                  : null,
              style: FilledButton.styleFrom(
                  shape: dndButtonShape, padding: EdgeInsets.zero),
              child: const Icon(Icons.add),
            ),
          ),
        ),
      ],
    );
  }
}
