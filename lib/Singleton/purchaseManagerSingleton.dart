import 'package:learnswift/data/purchaseAndDevelopment/purchasesAndDevelopment.dart';
import 'package:learnswift/sharedPreferences/sharedPreferencesData.dart';

class PurchaseManagerSingleton {
  // Singleton: Instancia única
  static final PurchaseManagerSingleton _instance =
      PurchaseManagerSingleton._internal();

  // Constructor privado
  PurchaseManagerSingleton._internal();

  // Factory para devolver la instancia única
  factory PurchaseManagerSingleton() {
    return _instance;
  }

  // Lista en memoria
  List<PurchasesAndDevelopment> _purchaseAndDevelop = [];

  // Getter para acceder a la lista
  List<PurchasesAndDevelopment> get purchaseAndDevelop => _purchaseAndDevelop;

  // Método para inicializar la lista (por ejemplo, desde SharedPreferences)
  void initialize(List<PurchasesAndDevelopment> initialData) {
    _purchaseAndDevelop = initialData;
  }

  // Método para actualizar un elemento
 void updateItem(int index, {bool? completed, bool? purchased}) {
  if (index >= 0 && index < _purchaseAndDevelop.length) {
    _purchaseAndDevelop[index] = _purchaseAndDevelop[index].copyWith(
      completed: completed ?? _purchaseAndDevelop[index].completed,
      purchased: purchased ?? _purchaseAndDevelop[index].purchased,
    );
  } else {
    throw Exception("Índice fuera de rango: $index");
  }
}
void updateItemAndSave(int index, {bool? completed, bool? purchased}) async {
  // Actualiza el elemento en la lista
  PurchaseManagerSingleton().updateItem(index, completed: completed, purchased: purchased);

  // Guarda los datos actualizados en SharedPreferences
  await SharedPreferencesData.guardarPurchasesAndDevelopmentList(
    PurchaseManagerSingleton().purchaseAndDevelop,
  );
}


}
