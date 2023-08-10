// Package imports:
import 'package:substring_kmp_search/substring_kmp_search.dart';

abstract class MySearchHelper {
  //

  static List<T> search<T>(
    String searchText,
    Map<dynamic, String> namebyId,
    Map<dynamic, T> itembyId,
  ) {
    final list = namebyId.keys.toList();
    searchText = searchText.toLowerCase();
    Map<dynamic, List<int>> matchesById = {};

    for (var itemId in list) {
      final name = namebyId[itemId]!.toLowerCase();
      final matchedPoints = KmpUtil.kmpSearchTextIndex(name, searchText);
      matchesById.addAll({itemId: matchedPoints});
    }

    final sortedList = List.of(list)
      ..removeWhere((itemId) => matchesById[itemId]!.isEmpty)
      ..sort((aId, bId) {
        final aMP = matchesById[aId];
        final bMP = matchesById[bId];

        if (aMP![0] > bMP![0]) return 1;
        if (aMP[0] < bMP[0]) return -1;

        if (aMP[0] == bMP[0]) {
          if (aMP.length > bMP.length) return -1;
          if (aMP.length < bMP.length) return 1;

          if (aMP.length == bMP.length) return 0;

          for (int i = 1; i <= aMP.length; i++) {
            if (aMP[i] > bMP[i]) return 1;
            if (aMP[i] < bMP[i]) return -1;
          }
        }
        return 0;
      });

    return sortedList.map((itemId) => itembyId[itemId]!).toList();
  }
}
