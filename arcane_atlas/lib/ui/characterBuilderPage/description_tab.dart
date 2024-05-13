import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '/enums.dart';
import '/models/models.dart';
import '/ui/info_pages.dart';
import '/ui/ui_extras.dart';
import '/globals.dart';
import 'package:signals/signals_flutter.dart';

class DescriptionTab extends StatelessWidget {
  const DescriptionTab({super.key});

  @override
  Widget build(BuildContext context) {
    return InfoScrollable(
      contentWidth: maxWidth,
      children: [
        const Center(child: LargeText('Physical Characteristics', bold: false)),
        largeSpace,
        for (var desc in mCharacter!.descriptors
            .where((element) => element.type == 'Physical')) ...[
          CharacterTextField(desc),
          largeSpace,
        ],
        const SizedBox(height: 30),
        const Center(child: LargeText('Personal Characteristics', bold: false)),
        largeSpace,
        for (var desc in mCharacter!.descriptors
            .where((element) => element.type == 'Personal')) ...[
          CharacterTextField(desc),
          largeSpace,
        ],
        largeSpace,
        const Center(child: LargeText('Background', bold: false)),
        smallSpace,
        const CharacterBackgroundBuilder(),
      ],
    );
  }
}

class CharacterTextField extends StatelessWidget {
  const CharacterTextField(this.desc, {super.key});
  final Descriptor desc;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: TextEditingController(text: desc.value),
      maxLines: null,
      onChanged: (value) => desc.value = value,
      keyboardType: desc.isInt ? TextInputType.number : null,
      inputFormatters: desc.isInt
          ? <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly]
          : null,
      decoration: InputDecoration(
          border: const OutlineInputBorder(), labelText: desc.name),
      style: const TextStyle(fontSize: 16),
    );
  }
}

class CharacterBackgroundBuilder extends StatefulWidget {
  const CharacterBackgroundBuilder({super.key});

  @override
  State<CharacterBackgroundBuilder> createState() =>
      _CharacterBackgroundBuilderState();
}

class _CharacterBackgroundBuilderState extends State<CharacterBackgroundBuilder>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Watch((context) {
      var allowedBackgrounds = realm.query<Background>(
          'source IN \$0', [mCharacter!.allowedSources.value]);
      var theBack = mCharacter!.background;
      return Column(children: [
        ExpansionTile(
          title: const SmallText('Backgrounds'),
          initiallyExpanded: true,
          children: [
            for (var back in allowedBackgrounds) ...[
              ListTile(
                title: SmallText(back.name),
                trailing: Checkbox(
                    value: mCharacter!.background == back,
                    onChanged: (val) => setState(
                          () => val!
                              ? mCharacter!.updateBackground(back)
                              : mCharacter!.updateBackground(null),
                        )),
                onTap: () async {
                  Background? b = await showDialog<Background>(
                    context: context,
                    builder: (context) => AlertDialog(
                      contentPadding:
                          const EdgeInsets.only(top: 10, bottom: 10),
                      insetPadding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 20),
                      surfaceTintColor: Colors.white,
                      title: Text('${back.name} Info'),
                      content: SingleChildScrollView(
                          child: BackgroundInfoWidget(back)),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context, null),
                          child: const Text('Cancel'),
                        ),
                        TextButton(
                          onPressed: () => Navigator.pop(context, back),
                          child: const Text('Select Background'),
                        ),
                      ],
                    ),
                  );
                  setState(() => mCharacter!.updateBackground(b));
                },
              ),
            ],
          ],
        ),
        if (theBack != null) ...[
          const SizedBox(height: 20),
          Center(child: HugeText(theBack.name)),
          smallSpace,
          SmallText(theBack.desc),
          largeSpace,
          SmallText(theBack.characteristicsDesc),
          largeSpace,
          DndCard('Extras', [
            TextSection('Skill Proficiencies: ', theBack.skillProfs.join(', ')),
            smallSpace,
            if (theBack.toolProfs.isNotEmpty) ...[
              TextSection('Tool Proficiencies: ', theBack.toolProfs.join(', ')),
              smallSpace,
              for (var prof in theBack.toolProfs) ...[
                if (prof.isChoice) ...[
                  OptionWidget(prof.desc, prof),
                  smallSpace,
                ]
              ]
            ],
            if (theBack.languages != null) ...[
              TextSection('Languages: ', theBack.languages!.desc),
              smallSpace,
              if (theBack.languages!.isChoice) ...[
                OptionWidget(
                  'Languages',
                  theBack.languages!,
                ),
                smallSpace,
              ],
            ],
            TextSection('Equipment: ', theBack.startingEquipment.join(', ')),
            smallSpace,
          ]),
          smallSpace,
          for (var feat in theBack.features) ...[
            DndCard(feat.name, [
              SmallText(feat.desc),
              if (feat.type == FeatureTypes.addon) ...[
                smallSpace,
                OptionWidget(
                  feat.name,
                  feat.option!,
                ),
              ],
            ]),
            smallSpace,
          ],
          if (theBack.specialty != null) ...[
            DndCard(
              theBack.specialty!.name,
              alignment: CrossAxisAlignment.stretch,
              [
                SmallText(theBack.specialty!.desc),
                largeSpace,
                CharacteristicListWidget(theBack.specialty!),
                smallSpace,
                FilledButton(
                  onPressed: () {
                    Scaffold.of(context).showBottomSheet(
                      (context) => DiceBottomSheet(
                          DiceRoller(dieIndex: theBack.specialty!.diceBack)),
                      enableDrag: false,
                    );
                  },
                  style: FilledButton.styleFrom(shape: dndButtonShape),
                  child: MediumText('Roll ${theBack.specialty!.dice.name}',
                      bold: false),
                ),
              ],
            ),
            smallSpace,
          ],
          for (var charList in theBack.suggestedCharacteristics) ...[
            DndCard(charList.name, alignment: CrossAxisAlignment.stretch, [
              CharacteristicListWidget(charList),
              largeSpace,
              FilledButton(
                onPressed: () => Scaffold.of(context).showBottomSheet(
                  (context) =>
                      DiceBottomSheet(DiceRoller(dieIndex: charList.diceBack)),
                  enableDrag: false,
                ),
                style: FilledButton.styleFrom(shape: dndButtonShape),
                child: MediumText('Roll ${charList.dice.name}', bold: false),
              ),
            ]),
            smallSpace,
          ],
        ],
      ]);
    });
  }
}
