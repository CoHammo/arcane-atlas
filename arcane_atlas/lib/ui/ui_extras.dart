import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '/enums.dart';
import '/models/models.dart';
import '/globals.dart';
import 'package:signals/signals_flutter.dart';

const largeSpace = SizedBox(height: 15);
const smallSpace = SizedBox(height: 5);
const divider = Divider(thickness: 2);
const hugeText = TextScaler.linear(1.8);
const largeText = TextScaler.linear(1.5);
const mediumText = TextScaler.linear(1.3);
const smallText = TextScaler.linear(1.05);
const listPadding = EdgeInsets.fromLTRB(10, 10, 10, 170);
const double maxWidth = 900;
final dndButtonShape =
    RoundedRectangleBorder(borderRadius: BorderRadius.circular(4));

class BigImage extends StatelessWidget {
  const BigImage(this.image, {super.key});
  final Uint8List image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(5),
      decoration:
          const BoxDecoration(color: Color.fromARGB(255, 236, 236, 236)),
      child: Center(
        child: Image.memory(image),
      ),
    );
  }
}

class HugeText extends StatelessWidget {
  const HugeText(this.text, {this.bold = true, super.key});
  final String text;
  final bool bold;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: bold ? const TextStyle(fontWeight: FontWeight.bold) : null,
      textScaler: hugeText,
    );
  }
}

class LargeText extends StatelessWidget {
  const LargeText(this.text, {this.bold = true, super.key});
  final String text;
  final bool bold;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: bold ? const TextStyle(fontWeight: FontWeight.bold) : null,
      textScaler: largeText,
    );
  }
}

class MediumText extends StatelessWidget {
  const MediumText(this.text, {this.bold = true, super.key});
  final String text;
  final bool bold;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: bold ? const TextStyle(fontWeight: FontWeight.bold) : null,
      textScaler: mediumText,
    );
  }
}

class SmallText extends StatelessWidget {
  const SmallText(this.text, {super.key});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text, textScaler: smallText);
  }
}

class TextSection extends StatelessWidget {
  const TextSection(this.text1, this.text2, {super.key});
  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      textScaler: smallText,
      TextSpan(children: [
        TextSpan(
            text: text1, style: const TextStyle(fontWeight: FontWeight.bold)),
        TextSpan(text: text2)
      ]),
    );
  }
}

class DndSource extends StatelessWidget {
  const DndSource(this.text, {super.key});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textScaler: smallText,
      style: const TextStyle(fontStyle: FontStyle.italic),
    );
  }
}

class DndCard extends StatelessWidget {
  const DndCard(
    this.title,
    this.children, {
    this.alignment = CrossAxisAlignment.center,
    super.key,
  });
  final String title;
  final List<Widget> children;
  final CrossAxisAlignment alignment;

  @override
  Widget build(BuildContext context) {
    return Card.outlined(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
      ),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(15, 10, 15, 15),
        child: Column(
          crossAxisAlignment: alignment,
          children: [
            Center(child: MediumText(title)),
            if (children.isNotEmpty) smallSpace,
            for (var child in children) child,
          ],
        ),
      ),
    );
  }
}

class OptionDialog extends StatefulWidget {
  OptionDialog(this.option, {super.key});
  final Option option;
  final List<dynamic> selections = [];

  @override
  State<OptionDialog> createState() => _OptionDialogState();
}

class _OptionDialogState extends State<OptionDialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        contentPadding: const EdgeInsets.only(top: 10, bottom: 10),
        insetPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        surfaceTintColor: Colors.white,
        title: Text('Choose ${widget.option.selections}'),
        content: SizedBox(
          width: 400,
          child: ListView(children: [
            for (var choice in widget.option.values)
              CheckboxListTile(
                enabled: widget.selections.length != widget.option.selections ||
                    widget.selections.contains(choice),
                title: SmallText(choice.toString()),
                value: widget.selections.contains(choice),
                onChanged: (value) => setState(
                  () => value!
                      ? widget.selections.add(choice)
                      : widget.selections.remove(choice),
                ),
              ),
          ]),
        ),
        actions: [
          TextButton(
            child: const Text('Done'),
            onPressed: () => Navigator.pop(context, widget.selections),
          )
        ]);
  }
}

class OptionWidget extends StatefulWidget {
  const OptionWidget(
    this.title,
    this.option, {
    this.onChange,
    super.key,
  });
  final String title;
  final Option option;
  final void Function(List)? onChange;

  @override
  State<OptionWidget> createState() => _OptionWidgetState();
}

class _OptionWidgetState extends State<OptionWidget> {
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      initiallyExpanded: true,
      title: Text(widget.title),
      trailing: FilledButton(
        style: FilledButton.styleFrom(
            shape: dndButtonShape, padding: EdgeInsets.zero),
        onPressed: () async {
          List<dynamic> chosen = (await showDialog<List<dynamic>>(
                context: context,
                builder: (context) => OptionDialog(widget.option),
              )) ??
              [];
          if (chosen.isNotEmpty) {
            setState(() {
              mCharacter!.updateOption(widget.option, selections: chosen);
              widget.onChange?.call(chosen);
            });
          }
        },
        child: const Text('Choose'),
      ),
      children: [
        for (var choice in mCharacter!.getOptionList(widget.option)) ...[
          ListTile(title: Text(choice.toString())),
        ]
      ],
    );
  }
}

class DiceWidget extends StatefulWidget {
  const DiceWidget(this._dice, {super.key});
  final DiceRoller _dice;

  @override
  State<DiceWidget> createState() => _DiceWidgetState();
}

class _DiceWidgetState extends State<DiceWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
          ),
          onPressed: () => widget._dice.roll(),
          child: const Icon(Icons.square),
        ),
      ],
    );
  }
}

class DndFloatingButton extends StatelessWidget {
  const DndFloatingButton(this.label, this.onPressed, {super.key});
  final String label;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      extendedPadding: const EdgeInsets.symmetric(horizontal: 10),
      onPressed: onPressed,
      label: MediumText(label, bold: false),
    );
  }
}

class DiceBottomSheet extends StatefulWidget {
  const DiceBottomSheet(this.dice, {super.key});
  final DiceRoller dice;

  @override
  State<DiceBottomSheet> createState() => _DiceBottomSheetState();
}

class _DiceBottomSheetState extends State<DiceBottomSheet> {
  late Signal<int> numDice;
  late DiceRoller dice;
  Roll? roll;

  void changeNumDice(int num) {
    dice.numDice = num;
  }

  @override
  void initState() {
    super.initState();
    dice = widget.dice;
    numDice = Signal<int>(dice.numDice);
    numDice.listen(context, () => changeNumDice(numDice.value));
    roll = dice.roll();
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
                        onPressed: () => setState(() {
                          roll = widget.dice.roll();
                        }),
                        style: FilledButton.styleFrom(
                          shape: dndButtonShape,
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                        ),
                        child: const MediumText('Roll', bold: false),
                      ),
                    ),
                    const SizedBox(width: 5),
                    NumberPicker(40, 40, numDice, max: 99),
                    const SizedBox(width: 2),
                    SizedBox(
                      width: 50,
                      height: 40,
                      child: MenuAnchor(
                        menuChildren: [
                          for (var d
                              in Dice.values.getRange(1, Dice.values.length))
                            MenuItemButton(
                              child: MediumText(d.name, bold: false),
                              onPressed: () => setState(() => dice.die = d),
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
                          child: MediumText(dice.die.name, bold: false),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(children: [
                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: LargeText(roll?.rolls?.join(' + ') ?? '',
                          bold: false),
                    ),
                  ),
                  const SizedBox(width: 15),
                  HugeText('= ${roll?.total ?? '0'}'),
                ]),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class NumberPicker extends StatelessWidget {
  const NumberPicker(
    this.width,
    this.height,
    this.number, {
    this.min = 1,
    required this.max,
    super.key,
  });
  final int min;
  final int max;
  int get range => max - min;
  final double width;
  final double height;
  final Signal number;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
            padding: EdgeInsets.zero, shape: dndButtonShape),
        onPressed: () {},
        child: ListWheelScrollView(
          controller:
              FixedExtentScrollController(initialItem: number.value - 1),
          physics: const FixedExtentScrollPhysics(),
          itemExtent: height,
          onSelectedItemChanged: (value) => number.value = value + 1,
          children: [
            for (int i = min; i <= max; i++)
              Center(child: MediumText('$i', bold: false)),
          ],
        ),
      ),
    );
  }
}

class InfoScrollable extends StatelessWidget {
  const InfoScrollable({
    required this.children,
    this.contentWidth = maxWidth,
    super.key,
  });
  final List<Widget> children;
  final double contentWidth;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: listPadding,
        child: Center(
          child: SizedBox(
            width: contentWidth,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: children,
            ),
          ),
        ),
      ),
    );
  }
}

class ItemListTile extends StatelessWidget {
  const ItemListTile({
    required this.item,
    this.subtitle,
    this.buttonTitle,
    this.onTap,
    this.onButtonPressed,
    super.key,
  });
  final IName item;
  final String? subtitle;
  final String? buttonTitle;
  final void Function()? onTap;
  final void Function()? onButtonPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      title: Row(
        children: [
          if (item is IImage && (item as IImage).image != null) ...[
            SizedBox(
              height: 55,
              child: Image.memory((item as IImage).image!),
            )
          ],
          const SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MediumText(item.name, bold: false),
              if (subtitle != null) Text(subtitle!),
            ],
          ),
        ],
      ),
      trailing: buttonTitle == null
          ? null
          : SizedBox(
              height: 35,
              child: FilledButton(
                style: FilledButton.styleFrom(
                    shape: dndButtonShape, padding: EdgeInsets.zero),
                onPressed: onButtonPressed,
                child: SmallText(buttonTitle!),
              ),
            ),
    );
  }
}
