import 'package:hive_flutter/hive_flutter.dart';

class PurchaseManagerHive {
  final Box _box = Hive.box('purchases');

  bool getPurchasedTrue(int index) {
    // Semántica actual: si no existe, por defecto es "desbloqueado" (free)
    final raw = _box.get(index);
    if (raw == null) return true;
    return _readBoolField(raw, 'purchased', fallback: true);
  }

  bool getPurchasedFalse(int index) {
    final raw = _box.get(index);
    if (raw == null) return false;
    return _readBoolField(raw, 'purchased', fallback: false);
  }

  bool getCompleted(int index) {
    final raw = _box.get(index);
    if (raw == null) return false;
    return _readBoolField(raw, 'completed', fallback: false);
  }

  void updatePurchase(int index, {bool? purchased, bool? completed}) {
    final raw = _box.get(index);
    final currentPurchased = raw == null ? false : _readBoolField(raw, 'purchased', fallback: false);
    final currentCompleted = raw == null ? false : _readBoolField(raw, 'completed', fallback: false);

    _box.put(index, {
      'purchased': purchased ?? currentPurchased,
      'completed': completed ?? currentCompleted,
    });
  }

  // Esto ahora mismo está roto en tu código (no guardas 'id' o 'courseId')
  // Mejor bórralo o rehazlo. Lo dejo aquí solo para que no te falle compile.
  List<Map> filterCompletedByCourseId(int courseId) => [];

  bool _readBoolField(dynamic raw, String key, {required bool fallback}) {
    if (raw is Map) {
      final v = raw[key];
      if (v is bool) return v;
    }
    if (raw is bool && key == 'purchased') return raw;
    return fallback;
  }
}
