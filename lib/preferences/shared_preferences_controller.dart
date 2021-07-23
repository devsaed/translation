import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesController {

  SharedPreferencesController._();
  static SharedPreferencesController instance = SharedPreferencesController._();
  SharedPreferences sharedPreferences;

  factory SharedPreferencesController(){
    return instance;
  }

  //init shared preference
  Future<void> initSharedPreference() async{
    sharedPreferences = await  SharedPreferences.getInstance();
  }

  // for language
  String get languageCode => sharedPreferences.getString('language_code') ?? 'en';

  Future<bool> setLanguage(String languageCode) async {
    return await sharedPreferences.setString('language_code', languageCode);
  }

}