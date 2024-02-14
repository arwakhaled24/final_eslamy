import 'package:flutter/material.dart';
import 'package:eslamy/them.dart';
class SettingProvider extends ChangeNotifier{
ThemeMode themeMode = ThemeMode.dark;
String langCode ='en';
void ChangeLang(String newLangCode){
  langCode=newLangCode;
  notifyListeners();
}
void changeTheme(ThemeMode newTheme){
  themeMode = newTheme ;
  notifyListeners();

}
void enableLightTheme(){
  themeMode = ThemeMode.light;
  notifyListeners();
}
void enableDarkTheme(){
  themeMode = ThemeMode.dark;
  notifyListeners();
}
}
