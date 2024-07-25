import 'package:flutter/material.dart';
import 'package:mix/mix.dart';
import '../../models/extras.dart';
import '../extras/all_extras.dart';
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

  final _allSources = realm.all<Source>();

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return InfoScrollable(
      contentWidth: maxWidth,
      children: [
        BigImage(mCharacter!.image),
        Center(
          child: SizedBox(
            child: TextField(
              controller: TextEditingController(text: mCharacter!.name),
              maxLines: null,
              onChanged: (value) => mCharacter!.name = value,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Character Name'),
              style: const TextStyle(fontSize: 24),
            ),
          ),
        ),
        const SizedBox(height: 25),
        StyledText(
          'Select Preferences',
          style: Styles.titleMedium.add($text.textAlign.center()),
        ),
        smallSpace,
        for (var pref in mCharacter!.prefs.keys)
          SwitchListTile(
              title: StyledText('Allow $pref', style: Styles.bodyMedium),
              value: mCharacter!.prefs[pref] ?? false,
              onChanged: (value) =>
                  setState(() => mCharacter!.prefs[pref] = value)),
        const Divider(thickness: 2, height: 50),
        StyledText(
          'Select Allowed Sources',
          style: Styles.titleMedium.add($text.textAlign.center()),
        ),
        smallSpace,
        for (var source in _allSources)
          SwitchListTile(
            title: StyledText(source.name, style: Styles.bodyMedium),
            value: mCharacter!.allowedSources.value.contains(source),
            onChanged: (bool? value) {
              setState(() {
                value!
                    ? mCharacter!.allowedSources.add(source)
                    : mCharacter!.allowedSources.remove(source);
              });
            },
          ),
      ],
    );
  }
}
