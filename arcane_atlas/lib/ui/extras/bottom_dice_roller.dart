import 'package:mix/mix.dart';
import 'package:signals/signals_flutter.dart';
import '../../models/dice.dart';
import '/enums.dart';
import 'package:flutter/material.dart';
import 'scrolling_number_picker.dart';
import 'styles.dart';
import 'ui_extras.dart';

class BottomDiceRoller extends StatefulWidget {
  const BottomDiceRoller(this.dice, {super.key});
  final DiceRoller dice;

  @override
  State<BottomDiceRoller> createState() => _BottomDiceRollerState();
}

class _BottomDiceRollerState extends State<BottomDiceRoller>
    with SignalsAutoDisposeMixin {
  late final numDice = createSignal(context, widget.dice.numDice);
  late final die = createSignal(context, widget.dice.die);
  late final roll = createSignal(context, widget.dice.roll());

  @override
  void initState() {
    effect(() {
      widget.dice.numDice = numDice.value;
      widget.dice.die = die.value;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 25,
          width: double.infinity,
          child: IconButton(
            style: IconButton.styleFrom(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
            ),
            padding: EdgeInsets.zero,
            iconSize: 30,
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.arrow_drop_down),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
          child: SizedBox(
            height: 100,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 50,
                      height: 40,
                      child: FilledButton(
                        onPressed: () => roll.value = widget.dice.roll(),
                        style: FilledButton.styleFrom(
                          shape: dndButtonShape,
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                        ),
                        child: StyledText('Roll', style: Styles.bodyMedium),
                      ),
                    ),
                    const SizedBox(width: 5),
                    ScrollingNumberPicker(
                      45,
                      40,
                      numDice,
                      max: 99,
                      textStyle: Styles.bodyLarge,
                    ),
                    const SizedBox(width: 2),
                    SizedBox(
                      width: 50,
                      height: 40,
                      child: MenuAnchor(
                        menuChildren: [
                          for (var d in Dice.values)
                            MenuItemButton(
                              child:
                                  StyledText(d.name, style: Styles.bodyMedium),
                              onPressed: () => die.value = d,
                            ),
                        ],
                        builder: (context, controller, child) => OutlinedButton(
                            style: OutlinedButton.styleFrom(
                                shape: dndButtonShape,
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 5)),
                            onPressed: () => controller.isOpen
                                ? controller.close()
                                : controller.open(),
                            child: StyledText(
                              die.value.name,
                              style: Styles.bodyLarge,
                            )),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(children: [
                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: LargeText(roll.value.rolls?.join(' + ') ?? '',
                          bold: false),
                    ),
                  ),
                  const SizedBox(width: 15),
                  HugeText('= ${roll.value.total}'),
                ]),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
