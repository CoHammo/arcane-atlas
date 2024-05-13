import 'dart:math';

import '/enums.dart';
import '../../globals.dart';
import 'package:realm/realm.dart';
import 'models.dart';

part 'encounter.realm.dart';

@RealmModel()
class $Encounter implements IName {
  @PrimaryKey()
  late ObjectId id;

  @override
  @Indexed()
  late String name;

  late List<$Creature> creatures;

  Difficulty _range(Difficulty difficulty, double diff) {
    switch (difficulty) {
      case Difficulty.easy:
        return diff > 30 ? Difficulty.easy : Difficulty.hard;
      case Difficulty.medium:
        if (diff < -30) {
          // if the encounter is harder than it should be
          return Difficulty.hard;
        } else if (diff > 30) {
          // if the encounter is easier than it should be
          return Difficulty.easy;
        } else {
          // the encounter is within the right range
          return Difficulty.medium;
        }
      case Difficulty.hard:
        return diff < -30 ? Difficulty.hard : Difficulty.easy;
      case Difficulty.veryHard:
        return diff < -100 ? Difficulty.veryHard : Difficulty.easy;
    }
  }

  Map<double, List<Creature>> _getEncounter(Creature creature, List<Edge> edges,
      int limit, double targetScore, Difficulty difficulty, GraphStats stats) {
    Map<double, List<Creature>> allEncounters = {};
    for (var edge in edges.where((element) => element.source == creature)) {
      GraphStats st = stats.copy();
      st.add(edge.target.stats);
      if (st.nodesCrossed == limit) {
        allEncounters.addAll({
          st.score: [edge.source, edge.target]
        });
      } else if (_range(difficulty, targetScore - st.score) == difficulty) {
        allEncounters.addAll({
          st.score: [edge.source, edge.target]
        });
      } else if (_range(difficulty, targetScore - stats.score) ==
              Difficulty.easy &&
          _range(difficulty, targetScore - st.score) == Difficulty.hard) {
        break;
      } else {
        Map<double, List<Creature>> encounters = {};
        encounters.addAll(_getEncounter(
            edge.target, edges, limit, targetScore, difficulty, st));
        for (var encounter in encounters.values) {
          encounter.add(edge.source);
        }
        allEncounters.addAll(encounters);
      }
    }
    return allEncounters;
  }

  void generateEncounter(Difficulty difficulty, int limit) {
    var characters = campaign!.characters;
    var creatures = realm.all<Creature>();

    var partyStats = GraphStats(0, 0, 0)..nodesCrossed = 0;
    for (var char in characters) {
      partyStats.add(char.stats);
    }

    List<Edge> edges = [];
    for (var source in creatures) {
      for (var target in creatures) {
        edges.add(Edge(source, target));
      }
    }

    Map<double, List<Creature>> encounters = {};
    for (var creature in creatures) {
      GraphStats stats = creature.stats;
      encounters.addAll(_getEncounter(
          creature, edges, limit, partyStats.score, difficulty, stats));
    }

    var sortedKeys = encounters.keys.toList();
    sortedKeys.sort((a, b) =>
        (a - partyStats.score).abs().compareTo((b - partyStats.score).abs()));
    var index = Random().nextInt(5);
    realm.write(() {
      this.creatures.clear();
      this.creatures.addAll(encounters[sortedKeys[index]]!.toList());
    });
  }
}

class Edge {
  Edge(this.source, this.target);
  final Creature source;
  final Creature target;
}

interface class IGraphable {
  GraphStats get stats => GraphStats(0, 0, 0);
}

class GraphStats {
  GraphStats(this.level, this.armorClass, this.hitPoints);
  double level;
  double armorClass;
  double hitPoints;
  double nodesCrossed = 1;
  double get score => level + armorClass + hitPoints;

  void add(GraphStats stats) {
    level += stats.level;
    armorClass += stats.armorClass;
    hitPoints += stats.hitPoints;
    nodesCrossed++;
  }

  GraphStats copy() {
    var st = GraphStats(level, armorClass, hitPoints);
    st.nodesCrossed = nodesCrossed;
    return st;
  }
}
