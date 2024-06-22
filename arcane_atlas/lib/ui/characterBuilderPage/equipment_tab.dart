import 'package:flutter/material.dart';
import '/enums.dart';
import '/globals.dart';
import '/models/equipment.dart';
import '/ui/ui_extras.dart';
import 'package:realm/realm.dart';

class EquipmentTab extends StatefulWidget {
  const EquipmentTab({super.key});

  @override
  State<EquipmentTab> createState() => _EquipmentTabState();
}

class _EquipmentTabState extends State<EquipmentTab> {
  List<int> equipmentTypes = [for (var e in EquipmentTypes.values) e.index];
  late RealmResults<Equipment> query;

  @override
  Widget build(BuildContext build) {
    query = realm.query<Equipment>('_type IN \$0', [equipmentTypes]);
    if (mCharacter!.dndClass == null || mCharacter!.background == null) {
      return const Text(
          'You must choose a class and background before choosing equipment');
    } else {
      String goldString;
      if (mCharacter!.rollGold && mCharacter!.rolledGoldCoins.isEmpty) {
        goldString = mCharacter!.dndClass!.rolledGold.toString();
      } else {
        goldString = mCharacter!.coins.toString();
      }
      return InfoScrollable(
        contentWidth: maxWidth,
        children: [
          Center(
            child: SizedBox(
              width: 500,
              child: SegmentedButton<bool>(
                segments: const [
                  ButtonSegment<bool>(
                    value: false,
                    label: SmallText('Starting Equipment'),
                  ),
                  ButtonSegment<bool>(
                    value: true,
                    label: SmallText('Roll Gold'),
                  ),
                ],
                selected: {mCharacter!.rollGold},
                onSelectionChanged: (selection) => setState(() {
                  mCharacter!.rollGold = selection.first;
                }),
              ),
            ),
          ),
          largeSpace,
          SizedBox(
            height: 35,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MediumText('Coins: $goldString', bold: false),
                if (mCharacter!.rollGold) ...[
                  FilledButton(
                    style: FilledButton.styleFrom(
                        shape: dndButtonShape, padding: EdgeInsets.zero),
                    onPressed: () => setState(() {
                      mCharacter!.rolledGoldCoins.clear();
                      mCharacter!.rolledGoldCoins.gold =
                          mCharacter!.dndClass!.rolledGold!.roll().total;
                      mCharacter!.rollGoldInventory.clear();
                    }),
                    child: const MediumText('Roll', bold: false),
                  )
                ]
              ],
            ),
          ),
          smallSpace,
          ExpansionTile(
            title: const SmallText('Current Inventory'),
            children: [
              for (var equip in mCharacter!.inventory) ...[
                EquipmentTile(
                  equipment: equip,
                  buttonLabel: mCharacter!.rollGold ? 'Remove' : null,
                  onButtonPress: mCharacter!.rollGold
                      ? () => setState(() {
                            mCharacter!.rollGoldInventory.remove(equip);
                            mCharacter!.rolledGoldCoins.add(equip.cost!);
                          })
                      : null,
                ),
              ],
            ],
          ),
          smallSpace,
          if (!mCharacter!.rollGold) ...[
            LargeText('${mCharacter!.dndClass!.name} Starting Equipment'),
            smallSpace,
            for (var equip in mCharacter!.dndClass!.startingEquipment) ...[
              DndCard(equip.desc, [
                if (equip.isChoice) ...[
                  OptionWidget(
                    'Choices',
                    equip,
                    onChange: (chosen) => setState(() {}),
                  ),
                ],
              ]),
              smallSpace,
            ],
            smallSpace,
            LargeText('${mCharacter!.background!.name} Starting Equipment'),
            smallSpace,
            for (var equip in mCharacter!.background!.startingEquipment) ...[
              DndCard(equip.desc, [
                if (equip.isChoice) ...[
                  OptionWidget(
                    'Choices',
                    equip,
                    onChange: (chosen) => setState(() {}),
                  ),
                ],
              ]),
              smallSpace,
            ],
          ] else ...[
            const LargeText('Equipment'),
            smallSpace,
            Wrap(
              spacing: 5,
              runSpacing: 5,
              children: [
                for (var et in EquipmentTypes.values) ...[
                  ChoiceChip(
                    label: SmallText(et.name),
                    selected: equipmentTypes.contains(et.index),
                    onSelected: (value) => setState(
                      () => value
                          ? equipmentTypes.add(et.index)
                          : equipmentTypes.remove(et.index),
                    ),
                  ),
                ],
              ],
            ),
            smallSpace,
            SizedBox(
              height: MediaQuery.of(context).size.height - 350,
              child: ListView.builder(
                itemCount: query.length,
                itemBuilder: (context, index) => EquipmentTile(
                  equipment: query[index],
                  buttonLabel: 'Add',
                  onButtonPress: () => setState(() {
                    if (mCharacter!.rolledGoldCoins
                        .subtract(query[index].cost!)) {
                      mCharacter!.rollGoldInventory.add(query[index]);
                    }
                  }),
                ),
              ),
            ),
          ],
        ],
      );
    }
  }
}

class EquipmentTile extends StatelessWidget {
  const EquipmentTile({
    required this.equipment,
    this.onButtonPress,
    this.buttonLabel,
    super.key,
  });
  final Equipment equipment;
  final void Function()? onButtonPress;
  final String? buttonLabel;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        visualDensity: VisualDensity.compact,
        title: SmallText(equipment.name),
        subtitle: Text(
            '${equipment.subtype ?? equipment.type.name} - ${equipment.cost}'),
        trailing: onButtonPress == null
            ? null
            : SizedBox(
                height: 30,
                child: FilledButton(
                  style: FilledButton.styleFrom(
                      shape: dndButtonShape,
                      padding: const EdgeInsets.symmetric(horizontal: 5)),
                  onPressed: onButtonPress,
                  child: SmallText(buttonLabel ?? 'None'),
                ),
              ),
      ),
    );
  }
}
