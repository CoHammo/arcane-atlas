import 'package:flutter/material.dart';
import '/models/models.dart';
import '/ui/ui_extras.dart';
import '/globals.dart';

class PreferencesTab extends StatefulWidget {
  const PreferencesTab({super.key});

  @override
  State<PreferencesTab> createState() => _PreferencesTabState();
}

class _PreferencesTabState extends State<PreferencesTab>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return ListView(
      padding: listPadding,
      children: [
        BigImage(mCharacter!.image),
        Center(
          child: SizedBox(
            width: 400,
            child: TextField(
              controller: TextEditingController(text: mCharacter!.name),
              maxLines: null,
              onChanged: (value) => mCharacter!.name = value,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Character Name'),
              style: const TextStyle(fontSize: 20),
            ),
          ),
        ),
        const SizedBox(height: 25),
        const Center(child: LargeText('Select Preferences', bold: false)),
        for (var pref in mCharacter!.prefs.keys)
          SwitchListTile(
              title: SmallText('Allow $pref'),
              value: mCharacter!.prefs[pref] ?? false,
              onChanged: (value) =>
                  setState(() => mCharacter!.prefs[pref] = value)),
        const Divider(thickness: 2, height: 50),
        const Text(
          'Select Allowed Sources',
          textAlign: TextAlign.center,
          textScaler: largeText,
        ),
        for (var source in realm.all<Source>())
          SwitchListTile(
            title: SmallText(source.name),
            value: mCharacter!.allowedSources.value.contains(source),
            onChanged: (bool? value) {
              setState(() {
                value!
                    ? mCharacter!.allowedSources.add(source)
                    : mCharacter!.allowedSources.remove(source);
              });
            },
          ),
        const SizedBox(height: 100),
      ],
    );
  }
}
