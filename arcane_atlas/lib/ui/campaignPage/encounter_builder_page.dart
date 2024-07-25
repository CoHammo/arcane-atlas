import 'package:flutter/material.dart';
import 'package:mix/mix.dart';
import '../extras/all_extras.dart';
import '/enums.dart';
import '/globals.dart';
import '/models/creature.dart';
import '/models/encounter.dart';

class EncounterBuilderPage extends StatefulWidget {
  const EncounterBuilderPage(this.encounter, {super.key});
  final Encounter encounter;

  @override
  State<EncounterBuilderPage> createState() => _EncounterBuilderPageState();
}

class _EncounterBuilderPageState extends State<EncounterBuilderPage> {
  String encounterName = '';

  @override
  void initState() {
    super.initState();
    encounterName = widget.encounter.name;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Build Encounter'),
      ),
      body: InfoScrollable(children: [
        TextField(
          controller: TextEditingController(text: encounterName),
          maxLines: null,
          onChanged: (value) => encounterName = value,
          decoration: const InputDecoration(
              border: OutlineInputBorder(), labelText: 'Encounter Name'),
          style: const TextStyle(fontSize: 18),
        ),
        const SizedBox(height: 30),
        Row(children: [
          const LargeText('Monsters', bold: false),
          const Spacer(),
          IconButton(
              icon: const Icon(Icons.add),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                          surfaceTintColor: Colors.white,
                          title: const Text('Add Creatures'),
                          content: SizedBox(
                            width: maxWidth,
                            child: ListView(children: [
                              for (var creature in realm.all<Creature>()) ...[
                                ListTile(
                                  title: SmallText(creature.name),
                                  trailing: SizedBox(
                                    width: 100,
                                    child: Row(
                                      children: [
                                        IconButton(
                                          icon: const Icon(Icons.remove),
                                          onPressed: () => setState(
                                            () => realm.write(() => widget
                                                .encounter.creatures
                                                .remove(creature)),
                                          ),
                                        ),
                                        IconButton(
                                          icon: const Icon(Icons.add),
                                          onPressed: () => setState(
                                            () => realm.write(() => widget
                                                .encounter.creatures
                                                .add(creature)),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ]
                            ]),
                          ),
                          actions: [
                            TextButton(
                              onPressed: () => Navigator.pop(context),
                              child: const SmallText('Done'),
                            )
                          ]);
                    });
              }),
          IconButton(
              icon: const Icon(Icons.rotate_right),
              onPressed: () {
                setState(() =>
                    widget.encounter.generateEncounter(Difficulty.medium, 5));
              }),
        ]),
        divider,
        for (var creature in widget.encounter.creatures) ...[
          Card(
            child: ItemListTile(
              item: creature,
              subtitle: '${creature.size} ${creature.type}',
            ),
          ),
        ]
      ]),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          realm.write(() => widget.encounter.name = encounterName);
          Navigator.pop(context, widget.encounter);
        },
        label: StyledText('Done'),
      ),
    );
  }
}
