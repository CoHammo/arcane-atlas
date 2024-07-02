import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '/models/models.dart';

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
          Radius.circular(4),
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
      label: Text(
        label,
        style: Theme.of(context).textTheme.titleMedium,
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
              Text(item.name, style: Theme.of(context).textTheme.titleMedium),
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
