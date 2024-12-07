import 'package:learnswift/data/Constant/Constant.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesData {
  /// Método para cargar las preferencias
  static Future<void> cargarPreferencias() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    Constant.everythingunlocked = prefs.getBool('everythingunlocked') ?? false;
    print(Constant.everythingunlocked);

   
  }


}
