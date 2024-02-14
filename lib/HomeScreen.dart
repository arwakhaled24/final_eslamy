import 'package:eslamy/provider/setting_provider.dart';
import 'package:eslamy/quran/quran_tab.dart';
import 'package:eslamy/radio/radio_tab.dart';
import 'package:eslamy/settings/settings.dart';
import 'package:eslamy/tasbeh/tasbeh_tab.dart';
import 'package:eslamy/them.dart';
import 'package:flutter/material.dart';
import 'package:eslamy/hadethh/hadeth_tab.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const String RouteName = "home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> tabs = [
    quran_tab(),
    hadeth_tab(),
    tasbeh_tab(),
    radio_tab(),
    settings(),
  ];
  int selectedtabindex = 0;

  @override
  Widget build(BuildContext context) {

    var provider =Provider.of<SettingProvider>(context);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                ThemeMode.dark == provider.themeMode ?
                "assets/images/dark_bachground.png":
                    "assets/images/main_background.png"

                    ,
              ),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.app_title),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedtabindex,
          onTap: (index) {
            selectedtabindex = index;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/images/moshaf_blue.png"),
              ),
              label: AppLocalizations.of(context)!.quran,
              backgroundColor: Theme.of(context).primaryColor,
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/images/hadeth.png"),
              ),
              label: AppLocalizations.of(context)!.hadeth,
              backgroundColor: Theme.of(context).primaryColor,
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/images/sebha_gold.png"),
              ),
              label: AppLocalizations.of(context)!.sepha,
              backgroundColor: Theme.of(context).primaryColor,
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/images/radio.png"),
              ),
              label: AppLocalizations.of(context)!.radio,
              backgroundColor: Theme.of(context).primaryColor,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: AppLocalizations.of(context)!.settings,
              backgroundColor: Theme.of(context).primaryColor,
            )
          ],
        ),
        body: tabs[selectedtabindex],
      ),
    );
  }
}
