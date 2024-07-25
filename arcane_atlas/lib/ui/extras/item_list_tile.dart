import 'package:flutter/material.dart';
import 'package:mix/mix.dart';

import '../../models/extras.dart';
import 'styles.dart';
import 'ui_extras.dart';

class ItemListTile extends StatelessWidget {
  const ItemListTile({
    required this.item,
    this.subtitle,
    this.titleStyle,
    this.subtitleStyle,
    this.buttonLabel,
    this.buttonLabelStyle,
    this.onTap,
    this.onButtonPressed,
    super.key,
  });
  final IName item;
  final String? subtitle;
  final Style? titleStyle;
  final Style? subtitleStyle;
  final String? buttonLabel;
  final Style? buttonLabelStyle;
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
              StyledText(item.name, style: titleStyle ?? Styles.bodyLarge),
              if (subtitle != null)
                StyledText(subtitle!,
                    style: subtitleStyle ?? Styles.bodyMedium),
            ],
          ),
        ],
      ),
      trailing: buttonLabel == null
          ? null
          : SizedBox(
              height: 35,
              child: FilledButton(
                style: FilledButton.styleFrom(
                    shape: dndButtonShape, padding: EdgeInsets.zero),
                onPressed: onButtonPressed,
                child: StyledText(buttonLabel!,
                    style: buttonLabelStyle ?? Styles.labelLarge),
              ),
            ),
    );
  }
}
