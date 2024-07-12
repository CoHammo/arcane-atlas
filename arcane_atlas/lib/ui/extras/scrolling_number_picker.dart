import 'package:flutter/material.dart';
import 'package:signals/signals_flutter.dart';
import 'ui_extras.dart';

class ScrollingNumberPicker extends StatelessWidget {
  const ScrollingNumberPicker(
    this.width,
    this.height,
    this.number, {
    this.min = 1,
    required this.max,
    this.onPressed,
    this.prefix,
    this.suffix,
    super.key,
  });
  final int min;
  final int max;
  int get range => max - min;
  final double width;
  final double height;
  final Signal<int> number;
  final void Function()? onPressed;
  final String? prefix;
  final String? suffix;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.all(10),
          shape: dndButtonShape,
        ),
        onPressed: onPressed ?? () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(flex: 0, child: Text(prefix ?? '')),
            Expanded(
              flex: 4,
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
            Flexible(flex: 0, child: Text(suffix ?? '')),
          ],
        ),
      ),
    );
  }
}
