import 'package:flutter/material.dart';
import 'ui/homepage.dart';
import 'create.dart';
import 'globals.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Create.images();
  startDatabase();
  runApp(const ArcaneAtlas());
}

void startDatabase() {
  realm.write(() {
    realm.addAll(Create.content());
    realm.add(Create.character());
  });
}
