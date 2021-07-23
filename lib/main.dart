import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:johrh/preferences/shared_preferences_controller.dart';
import 'package:johrh/translation/app_locale.dart';

import 'home_screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferencesController().initSharedPreference();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: AppLocale(), // your translations
      locale: Locale(SharedPreferencesController().languageCode),
      home: HomeScreen(),
    );
  }
}
