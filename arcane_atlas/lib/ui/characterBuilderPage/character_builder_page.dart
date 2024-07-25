import '../extras/styles.dart';
import 'package:flutter/material.dart';
import 'package:mix/mix.dart';
import '../../mock_character.dart';
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
          title: StyledText('Character Builder', style: Styles.titleMedium),
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
            PreferencesTab(),
            RaceTab(),
            ClassTab(),
            NewAbilitiesTab(),
            DescriptionTab(),
            EquipmentTab(),
          ],
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Set readiness = mCharacter!.readiness;
            if (readiness.first == false) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: StyledText(readiness.last)),
              );
            } else {
              Character c = $Character.fromMock(mCharacter!);
              mCharacter = null;
              Navigator.pop(context, c);
            }
          },
          label: StyledText('Finish', style: Styles.bodyMedium),
          extendedPadding: const EdgeInsets.all(15),
        ),
      ),
    );
  }
}
