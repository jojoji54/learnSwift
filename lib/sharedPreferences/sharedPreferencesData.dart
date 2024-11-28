import 'dart:convert';
import 'package:learnswift/Singleton/purchaseManagerSingleton.dart';
import 'package:learnswift/data/Constant/Constant.dart';
import 'package:learnswift/data/purchaseAndDevelopment/purchasesAndDevelopment.dart';
import 'package:learnswift/data/purchaseAndDevelopment/purchasesAndDevelopmentList.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesData {
  /// Método para cargar las preferencias
static Future<void> cargarPreferencias() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();

  String? encodedList = prefs.getString('purchasesAndDevelopmentList');
  Constant.everythingunlocked = prefs.getBool('everythingunlocked')??false;
  print(  Constant.everythingunlocked);

  List<PurchasesAndDevelopment> loadedData;

  if (encodedList != null) {
    Iterable decoded = jsonDecode(encodedList);
    loadedData = List<PurchasesAndDevelopment>.from(
      decoded.map((item) => PurchasesAndDevelopment.fromJson(item)),
    );
  } else {
    loadedData = purchasesAndDevelopmentList;
    await guardarPurchasesAndDevelopmentList(purchasesAndDevelopmentList);
  }

  // Inicializa el Singleton con los datos cargados
  PurchaseManagerSingleton().initialize(loadedData);
}



  /// Método para guardar la lista `purchasesAndDevelopmentList` en SharedPreferences
  static Future<void> guardarPurchasesAndDevelopmentList(
      List<PurchasesAndDevelopment> list) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    // Convertir la lista a JSON
    String encodedList = jsonEncode(list.map((item) => item.toJson()).toList());

    // Guardar la lista en SharedPreferences
    await prefs.setString('purchasesAndDevelopmentList', encodedList);
  }
}
