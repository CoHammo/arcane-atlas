import 'package:flutter/material.dart';

import 'ui_extras.dart';

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
      padding: listPadding,
      child: Center(
        child: SizedBox(
          width: contentWidth,
          child: Column(
            children: children,
          ),
        ),
      ),
    );
  }
}
