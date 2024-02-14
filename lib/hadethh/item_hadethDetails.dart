import 'package:eslamy/quran/sora_details.dart';
import 'package:flutter/material.dart';
import 'package:eslamy/them.dart';
import 'package:provider/provider.dart';

import '../provider/setting_provider.dart';
class item_hadethDetails extends StatelessWidget {
  String content;

  item_hadethDetails({required this.content});

  @override
  Widget build(BuildContext context) {
    var provider =Provider.of<SettingProvider>(context);
    return Container(

      child: Text("$content",
          style:Theme.of(context).textTheme.subtitle1,
          textAlign: TextAlign.center,
          textDirection: TextDirection.rtl
      ),
      decoration: BoxDecoration(
        color: provider.themeMode == ThemeMode.dark?
        theming.darkprimarycolor:
        theming.whitecolor
        ,
    ));
  }
}
