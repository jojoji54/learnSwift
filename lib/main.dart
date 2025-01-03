import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:learnswift/Screens/home/homePage.dart';
import 'package:learnswift/data/Constant/constant.dart';
import 'package:learnswift/provider/allprovider.dart';
import 'package:learnswift/sharedPreferences/sharedPreferencesData.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'l10n/l10n.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Inicializa Hive y abre la caja
  await Hive.initFlutter();
  await Hive.openBox('purchases'); // Abre o crea la caja 'purchases'
  await Hive.openBox('lenguajePurchases'); // Abre o crea la caja 'lenguajePurchases'
  await SharedPreferencesData.cargarPreferencias();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => AllProvider(),
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            supportedLocales: L10n.all,
            localizationsDelegates: const [
              AppLocalizations.delegate, // Add this line
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            title: 'CodeCrafters',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
              useMaterial3: true,
            ),
             locale: Locale(Constant.languaje),
            home: const MyHomePage(),
          );
        });
  }
}
