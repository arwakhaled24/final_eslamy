

import 'package:eslamy/settings/languagebottonsheet.dart';
import 'package:eslamy/settings/thembottonsheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../provider/setting_provider.dart';
class settings extends StatelessWidget {
 
  Widget build(BuildContext context) {
    var provider =Provider.of<SettingProvider>(context);
    var width =MediaQuery.of(context).size.width;
    var height= MediaQuery.of(context).size.height ;
    return Center(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: width*0.03),
        padding: EdgeInsets.only(top:width*0.2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(AppLocalizations.of(context)!.language,
              style: Theme.of(context).textTheme.subtitle2
          ),
            InkWell(
              onTap: (){
                showlanguagebotoonseet(context);
              },
              child: Container(
                margin: EdgeInsets.only(top: 8,bottom: 25),
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Theme.of(context).cardColor,
                  borderRadius: BorderRadius.circular(12),

                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    provider.langCode=="en"?
                    Text(AppLocalizations.of(context)!.english):
                    Text(AppLocalizations.of(context)!.arabic,

                        style: TextStyle(
                          color: Colors.black,
                            fontSize: 24,
                        )
                    ),
                    Icon(Icons.arrow_drop_down_outlined)

                  ],
                ),
              ),
            ),
            Text(AppLocalizations.of(context)!.theming,
                style: Theme.of(context).textTheme.subtitle2
            ),
            InkWell(
              onTap: (){
                showthemmingbottunsheet(context);
              },
            
              child: Container(
                margin: EdgeInsets.only(top: 8),
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Theme.of(context).cardColor,
                  borderRadius: BorderRadius.circular(12),

                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                provider.themeMode == ThemeMode.light?
                        AppLocalizations.of(context)!.light:
                  AppLocalizations.of(context)!.dark,
                        style: TextStyle(
                            fontSize: 20
                        )
                    ),
                    Icon(Icons.arrow_drop_down_outlined)

                  ],
                ),
              ),
            )

          ],
        ),
      ),
    );
  }

  void showlanguagebotoonseet(BuildContext context) {
    showModalBottomSheet(context: context ,
        builder: (context){
      return bottonsheet();
        }
    );
  }

  showthemmingbottunsheet( BuildContext context) {
    return showModalBottomSheet(context: context,
        builder:(context) {
      return thembottonsheet();
        }

    );
  }
}
