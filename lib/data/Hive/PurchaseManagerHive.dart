import 'package:hive_flutter/hive_flutter.dart';

class PurchaseManagerHive {
  final Box _box = Hive.box('purchases');

  bool getPurchasedTrue(int index) {
    final item = _box.get(index, defaultValue: {'purchased': true});
    return item['purchased'];
  }

  bool getPurchasedFalse(int index) {
    final item = _box.get(index, defaultValue: {'purchased': false});
    return item['purchased'];
  }

  bool getCompleted(int index) {
    final item = _box.get(index, defaultValue: {'completed': false});
    return item['completed'];
  }

  void updatePurchase(int index, {bool? purchased, bool? completed}) {
    final item = _box.get(index, defaultValue: {'purchased': false, 'completed': false});
    _box.put(index, {
      'purchased': purchased ?? item['purchased'],
      'completed': completed ?? item['completed'],
    });
  }

  // Nuevo método para filtrar datos
  List<Map> filterCompletedByCourseId(int courseId) {
    List<Map> filteredItems = [];
    _box.keys.forEach((key) {
      final item = _box.get(key, defaultValue: {'purchased': false, 'completed': false});
      if (item['id'] == courseId && item['completed'] == true) {
        filteredItems.add({'key': key, 'data': item});
      }
    });
    return filteredItems;
  }
}
