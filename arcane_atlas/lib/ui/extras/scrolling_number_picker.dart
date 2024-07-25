import 'package:flutter/material.dart';
import 'package:mix/mix.dart';
import 'package:signals/signals_flutter.dart';
import 'styles.dart';
import 'ui_extras.dart';

class ScrollingNumberPicker extends StatefulWidget {
  const ScrollingNumberPicker(
    this.width,
    this.height,
    this.number, {
    this.min = 1,
    required this.max,
    this.onPressed,
    this.prefix,
    this.suffix,
    this.textStyle,
    this.resetSignal,
    super.key,
  });
  final int min;
  final int max;
  final double width;
  final double height;
  final Signal<int> number;
  final void Function()? onPressed;
  final String? prefix;
  final String? suffix;
  final Style? textStyle;
  final Signal? resetSignal;

  @override
  State<ScrollingNumberPicker> createState() => _ScrollingNumberPickerState();
}

class _ScrollingNumberPickerState extends State<ScrollingNumberPicker> {
  int get range => widget.max - widget.min;
  late var controller = FixedExtentScrollController(
      initialItem: widget.number.value - widget.min);

  bool reset = false;

  @override
  void initState() {
    widget.resetSignal?.listen(context, () => reset = true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (reset) {
      controller.jumpToItem(widget.number.value - widget.min);
      reset = false;
    }
    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.all(10),
          shape: dndButtonShape,
        ),
        onPressed: widget.onPressed ?? () {},
        child: Stack(
          alignment: Alignment.center,
          children: [
            Row(children: [
              StyledText(
                widget.prefix ?? '',
                style: Styles.bodyLarge.add($text.style.color.black()),
              ),
              const Spacer(),
              StyledText(
                widget.suffix ?? '',
                style: Styles.bodyLarge.add($text.style.color.black()),
              ),
            ]),
            ListWheelScrollView(
              controller: controller,
              physics: const FixedExtentScrollPhysics(),
              itemExtent: widget.height,
              onSelectedItemChanged: (value) =>
                  widget.number.value = value + widget.min,
              children: [
                for (int i = widget.min; i <= widget.max; i++) ...[
                  Center(
                    child: StyledText(
                      '$i',
                      style: widget.textStyle ?? Styles.titleSmall,
                    ),
                  ),
                ]
              ],
            ),
          ],
        ),
      ),
    );
  }
}
