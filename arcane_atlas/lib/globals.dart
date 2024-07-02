import 'package:realm/realm.dart';
import 'create.dart';
import 'mock_character.dart';
import 'models/campaign.dart';

final realm = Realm(Configuration.inMemory(Create.schemas()));
Campaign? campaign;
MockCharacter? mCharacter;
