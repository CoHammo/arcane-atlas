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
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
        ),
        const SizedBox(height: 25),
        Text(
          'Select Preferences',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        smallSpace,
        for (var pref in mCharacter!.prefs.keys)
          SwitchListTile(
              title: Text(
                'Allow $pref',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              value: mCharacter!.prefs[pref] ?? false,
              onChanged: (value) =>
                  setState(() => mCharacter!.prefs[pref] = value)),
        const Divider(thickness: 2, height: 50),
        Text(
          'Select Allowed Sources',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        smallSpace,
        for (var source in mCharacter!.allowedSources)
          SwitchListTile(
            title: Text(
              source.name,
              style: Theme.of(context).textTheme.titleMedium,
            ),
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
