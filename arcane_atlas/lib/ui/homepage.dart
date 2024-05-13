import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:realm/realm.dart';
import '/models/models.dart';
import '/globals.dart';
import 'campaignPage/campaign_page.dart';
import 'characterBuilderPage/character_builder_page.dart';
import 'ui_extras.dart';

/// Root widget for Gamecraft.
class ArcaneAtlas extends StatelessWidget {
  const ArcaneAtlas({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gamecraft',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.red,
          inversePrimary: Colors.red,
        ),
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.red,
          inversePrimary: Colors.red,
        ),
        useMaterial3: true,
      ),
      scrollBehavior: DraggableScrollBehavior(),
      home: const HomePage(title: 'Gamecraft'),
    );
  }
}

/// Homepage of the app. It contains two pages, [CharactersHome] and
/// [CampaignsHome], and will always be on one of those two pages.
class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

/// State of [HomePage].
class _HomePageState extends State<HomePage> {
  int _pageIndex = 0;
  var characters = realm.all<Character>();
  var campaigns = realm.all<Campaign>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: <Widget>[
        CharactersHome(title: 'Characters', characters: characters),
        CampaignsHome(title: 'Campaigns', campaigns: campaigns),
      ][_pageIndex],
      floatingActionButton: MenuAnchor(
        menuChildren: <Widget>[
          MenuItemButton(
            onPressed: () async {
              Character? c = await Navigator.push<Character>(
                context,
                MaterialPageRoute(
                  builder: (context) => const CharacterBuilderPage(),
                ),
              );
              if (c != null) {
                setState(() => realm.write(() => realm.add(c)));
              }
            },
            child: const MediumText('Character Builder', bold: false),
          ),
          MenuItemButton(
            onPressed: () => ScaffoldMessenger.of(context)
                .showSnackBar(const NotDoneSnackbar()),
            child: const MediumText('Import Character', bold: false),
          ),
        ],
        builder: (context, controller, child) {
          return DndFloatingButton('Create Character',
              () => controller.isOpen ? controller.close() : controller.open());
        },
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _pageIndex,
        destinations: const <Widget>[
          NavigationDestination(
              icon: Icon(Icons.person_2), label: 'Characters'),
          NavigationDestination(
              icon: Icon(Icons.map_rounded), label: 'Campaigns'),
        ],
        onDestinationSelected: (int index) {
          setState(() => _pageIndex = index);
        },
      ),
    );
  }
}

/// Homepage for characters. Lists all characters in the Realm and allows you
/// to select one of them.
class CharactersHome extends StatelessWidget {
  const CharactersHome({
    super.key,
    required this.title,
    required this.characters,
  });
  final String title;
  final RealmResults<Character> characters;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: characters.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          child: ItemListTile(
            onTap: () {},
            item: characters[index],
            subtitle: characters[index].dndClass?.name ?? 'No Class',
          ),
        );
      },
    );
  }
}

/// Homepage for campaigns. Lists all campaigns in the Realm and allows you
/// to select one of them.
class CampaignsHome extends StatelessWidget {
  const CampaignsHome({
    super.key,
    required this.title,
    required this.campaigns,
  });
  final String title;
  final RealmResults<Campaign> campaigns;

  @override
  Widget build(BuildContext context) {
    var campaigns = realm.all<Campaign>();
    return ListView.builder(
      itemCount: campaigns.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          child: ItemListTile(
            onTap: () {
              campaign = campaigns[index];
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CampaignPage()),
              );
            },
            item: campaigns[index],
            subtitle: campaigns[index].world ?? 'No World',
          ),
        );
      },
    );
  }
}

/// Snackbar to display when a feature isn't implemented yet.
class NotDoneSnackbar extends SnackBar {
  const NotDoneSnackbar({
    super.key,
    super.content = const Text('Feature not implemented'),
  });
}

class DraggableScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        for (var device in PointerDeviceKind.values) device,
      };
}
