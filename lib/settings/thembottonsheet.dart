import 'package:eslamy/provider/setting_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class thembottonsheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingProvider>(context);

    return Container(
      padding: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          InkWell(
            onTap: (){
              provider.enableLightTheme();
            },
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.light_mode_sharp,
                        size: 35,
                        color: Color(0xff696665),
                      ),
                      SizedBox(width: 15),
                      Text(
                        AppLocalizations.of(context)!.light,
                        style: TextStyle(
                          fontSize: 22,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              padding: EdgeInsets.only(top: 10),
              margin: EdgeInsets.only(bottom: 10),
            ),
          ),
          InkWell(
            onTap: (){
provider.enableDarkTheme();
            },
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.dark_mode_sharp,
                        size: 35,
                        color: Color(0xff696665),
                      ),
                      SizedBox(width: 15),
                      Text(
                        AppLocalizations.of(context)!.dark,
                        style: TextStyle(
                          fontSize: 22,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              padding: EdgeInsets.only(top: 10),
              margin: EdgeInsets.only(bottom: 10),
            ),
          ),
        ],
      ),
    );
  }
}
