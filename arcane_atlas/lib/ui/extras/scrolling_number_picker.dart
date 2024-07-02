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
    super.key,
  });
  final int min;
  final int max;
  int get range => max - min;
  final double width;
  final double height;
  final Signal number;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
            padding: EdgeInsets.zero, shape: dndButtonShape),
        onPressed: onPressed ?? () {},
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
