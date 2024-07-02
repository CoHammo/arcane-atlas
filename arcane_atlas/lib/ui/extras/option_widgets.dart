import '/globals.dart';
import 'package:flutter/material.dart';
import '/models/models.dart';
import 'ui_extras.dart';

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
          shape: dndButtonShape,
          padding: const EdgeInsets.symmetric(horizontal: 5),
        ),
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
