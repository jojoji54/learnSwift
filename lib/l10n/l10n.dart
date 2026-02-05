import 'package:flutter/rendering.dart';

class L10n {
  static const List<Locale>  all = [

     Locale('en'),
     Locale('es'),
     Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hans'),
   // const Locale('ja') ESTO ES LENGUAJE EN JAPO
  ];
}