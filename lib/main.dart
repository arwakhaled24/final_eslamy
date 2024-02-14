

import 'package:eslamy/HomeScreen.dart';
import 'package:eslamy/hadethh/hadeth_detailScreens.dart';
import 'package:eslamy/hadethh/hadeth_tab.dart';
import 'package:eslamy/provider/setting_provider.dart';
import 'package:eslamy/quran/sora_details.dart';
import 'package:eslamy/splash.dart';
import 'package:eslamy/them.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create:(context) => SettingProvider(),
      child: Myapp()
  ));
}

class Myapp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false ,
      initialRoute: splash.RouteName,
      routes: {
        splash.RouteName :(context)=>splash(),
        HomeScreen.RouteName:(context)=>HomeScreen(),
        sora_details.RouteName: (context) => sora_details(),
        hadeth_tab.RoutrName:(context)=>hadeth_tab(),
        hadeth_detailsScreen.RouteName:(context)=>hadeth_detailsScreen(),
      },
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        locale: Locale(provider.langCode),
     theme: theming.lightthem,
        darkTheme: theming.darkthem,
      themeMode: provider.themeMode,
    );
}
}

