import 'package:eslamy/hadethh/hadeth_detailScreens.dart';
import 'package:eslamy/hadethh/hadeth_tab.dart';
import 'package:eslamy/quran/sora_details.dart';
import 'package:flutter/material.dart';

class item_hadethname extends StatelessWidget {

  HadethData hadeth ;
  item_hadethname({required this.hadeth});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, hadeth_detailsScreen.RouteName,
arguments: hadeth
        );
      },
      child: Container(
        alignment: Alignment.center,
        child: Text(hadeth.title ,
          style:Theme.of(context).textTheme.subtitle2,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
