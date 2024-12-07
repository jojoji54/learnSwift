import 'package:hive_flutter/hive_flutter.dart';

class LanguagePurchaseManagerHive {
  final Box _languageBox = Hive.box('lenguajePurchases');

  bool getLanguagePurchasedTrue(int index) {
    final item = _languageBox.get(index, defaultValue: {'purchased': true});
    return item['purchased'];
  }

  bool getLanguagePurchasedFalse(int index) {
    final item = _languageBox.get(index, defaultValue: {'purchased': false});
    return item['purchased'];
  }

  void updateLanguagePurchase(int index, {bool? purchased}) {
    final item = _languageBox.get(index, defaultValue: {'purchased': false});
    _languageBox.put(index, {
      'purchased': purchased ?? item['purchased'],
    });
  }

  List<Map> getAllPurchasedLanguages() {
    List<Map> purchasedLanguages = [];
    _languageBox.keys.forEach((key) {
      final item = _languageBox.get(key, defaultValue: {'purchased': false});
      if (item['purchased'] == true) {
        purchasedLanguages.add({'key': key, 'data': item});
      }
    });
    return purchasedLanguages;
  }
}
