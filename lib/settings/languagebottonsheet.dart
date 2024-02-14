import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../provider/setting_provider.dart';

class bottonsheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingProvider>(context);

    return Container(
      padding: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: (){
                    provider.ChangeLang('en');
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.format_list_numbered,
                        size: 40,
                        color: Color(0xff696665),
                      ),
                      SizedBox(width: 15),
                      Text(
                        AppLocalizations.of(context)!.english
                        ,
                        style: TextStyle(
                          fontSize: 22,
                        ),
                      ),
                    ],
                  ),
                ),
             //   Icon(Icons.check)
              ],
            ),
            padding: EdgeInsets.only(top: 10),
            margin: EdgeInsets.only(bottom: 10),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: (){
                    provider.ChangeLang('ar');
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.format_list_numbered_rtl,
                        size: 40,
                        color: Color(0xff696665),
                      ),
                      SizedBox(width: 15),
                      Text(
                        AppLocalizations.of(context)!.arabic,
                        style: TextStyle(
                          fontSize: 22,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            padding: EdgeInsets.only(top: 10),
            margin: EdgeInsets.only(bottom: 10),
          ),
        ],
      ),
    );
  }
}
