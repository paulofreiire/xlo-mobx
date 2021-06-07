import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'package:xlo/screens/base/base_screen.dart';
import 'package:xlo/stores/page_store.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeParse();
  setupLocators();
  runApp(MyApp());
}

Future<void> initializeParse() async {
  final keyApplicationId = 'XHKSdHIEVoomgMzpHblZSMtusCp79jE7UKrap1PX';
  final keyClientKey = 'o63MjJoOhnoID48lKguClq229piC2zBD23EgYKlP';
  final keyParseServerUrl = 'https://parseapi.back4app.com';

  await Parse().initialize(keyApplicationId, keyParseServerUrl,
      clientKey: keyClientKey, autoSendSessionId: true, debug: true);
}

void setupLocators() {
  GetIt.I.registerSingleton(PageStore());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'XLO',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: Colors.purple,
        appBarTheme: AppBarTheme(
          elevation: 0
        ),
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: Colors.orange
        )
      ),
      home: BaseScreen(),
    );
  }
}
