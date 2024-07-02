import 'package:flutter/material.dart';
import 'package:realm/realm.dart';
import '/globals.dart';
import '/ui/campaignPage/encounter_builder_page.dart';
import '../extras/ui_extras.dart';
import '/models/models.dart';

class CampaignPage extends StatelessWidget {
  const CampaignPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(campaign!.name),
          surfaceTintColor: Colors.transparent,
          bottom: const TabBar(tabs: [
            Tab(icon: Icon(Icons.person)),
            Tab(icon: Icon(Icons.notes)),
          ]),
        ),
        body: const TabBarView(
          children: [
            CampaignCharactersTab(),
            CampaignEncountersTab(),
          ],
        ),
      ),
    );
  }
}

class CampaignCharactersTab extends StatelessWidget {
  const CampaignCharactersTab({super.key});

  @override
  Widget build(BuildContext context) {
    return InfoScrollable(children: [
      Row(
        children: [
          const LargeText('Characters', bold: false),
          const Spacer(),
          IconButton(icon: const Icon(Icons.add), onPressed: () {}),
        ],
      ),
      divider,
      for (var character in campaign!.characters) ...[
        Card(
          child: ItemListTile(
            item: character,
            subtitle: '${character.race}, ${character.dndClass}',
          ),
        )
      ],
    ]);
  }
}

class CampaignEncountersTab extends StatefulWidget {
  const CampaignEncountersTab({super.key});

  @override
  State<CampaignEncountersTab> createState() => _CampaignEncountersTabState();
}

class _CampaignEncountersTabState extends State<CampaignEncountersTab> {
  @override
  Widget build(BuildContext context) {
    return InfoScrollable(children: [
      Row(
        children: [
          const LargeText('Encounters', bold: false),
          const Spacer(),
          IconButton(
              icon: const Icon(Icons.add),
              onPressed: () async {
                Encounter? encounter = await Navigator.push<Encounter>(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return EncounterBuilderPage(
                      Encounter(ObjectId(), 'New Encounter'),
                    );
                  }),
                );
                if (encounter != null) {
                  setState(() {
                    realm.write(() => campaign!.encounters.add(encounter));
                  });
                }
              }),
        ],
      ),
      divider,
      for (var encounter in campaign!.encounters) ...[
        ItemListTile(
          item: encounter,
          subtitle: '${encounter.creatures.length} Creatures',
          onTap: () async {
            await Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => EncounterBuilderPage(encounter)));
            setState(() {});
          },
        ),
      ],
    ]);
  }
}
