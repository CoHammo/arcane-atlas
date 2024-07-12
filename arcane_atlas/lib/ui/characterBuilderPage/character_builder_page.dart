import 'package:flutter/material.dart';
import '../../mock_character.dart';
import '../extras/ui_extras.dart';
import 'character_builder.dart';
import '/models/models.dart';
import '/globals.dart';

class CharacterBuilderPage extends StatelessWidget {
  const CharacterBuilderPage({super.key});

  @override
  Widget build(BuildContext context) {
    mCharacter = MockCharacter()
      ..allowedSources.value.addAll(realm.all<Source>());
    return DefaultTabController(
      initialIndex: 0,
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Character Builder'),
          surfaceTintColor: Colors.transparent,
          bottom: const TabBar(tabs: <Widget>[
            Tab(icon: Icon(Icons.settings), text: 'Prefs'),
            Tab(icon: Icon(Icons.man), text: 'Race'),
            Tab(icon: Icon(Icons.bolt), text: 'Class'),
            Tab(icon: Icon(Icons.speed), text: 'Abils'),
            Tab(icon: Icon(Icons.notes), text: 'Desc'),
            Tab(icon: Icon(Icons.backpack), text: 'Equip'),
          ]),
        ),
        body: const TabBarView(
          children: [
            const PreferencesTab(),
            const RaceTab(),
            const ClassTab(),
            const NewAbilitiesTab(),
            const DescriptionTab(),
            const EquipmentTab(),
          ],
        ),
        floatingActionButton: DndFloatingButton('Finish Character', () {
          Set readiness = mCharacter!.readiness;
          if (readiness.first == false) {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: SmallText(readiness.last)));
          } else {
            Character c = $Character.fromMock(mCharacter!);
            mCharacter = null;
            Navigator.pop(context, c);
          }
        }),
      ),
    );
  }
}
