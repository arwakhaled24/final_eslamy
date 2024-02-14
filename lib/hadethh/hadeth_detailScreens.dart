import 'package:eslamy/hadethh/hadeth_tab.dart';
import 'package:eslamy/hadethh/item_hadethDetails.dart';
import 'package:eslamy/quran/verse_namedetails.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:eslamy/them.dart';
import 'package:provider/provider.dart';

import '../provider/setting_provider.dart';
class hadeth_detailsScreen extends StatefulWidget {
static const String RouteName ="hadeth details screend";

  @override
  State<hadeth_detailsScreen> createState() => _hadeth_detailsScreen();
}

class _hadeth_detailsScreen extends State<hadeth_detailsScreen> {
List <String> w=[];

  @override
  Widget build(BuildContext context) {
    var provider =Provider.of<SettingProvider>(context);
   var args= ModalRoute.of(context)?.settings.arguments as HadethData ;
   var width =MediaQuery.of(context).size.width;
   var height= MediaQuery.of(context).size.height ;
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image:
                    provider.themeMode == ThemeMode.dark?
                AssetImage("assets/images/dark_bachground.png"
                 ,
                ):AssetImage( "assets/images/main_background.png",
                    ),
                fit: BoxFit.fill
            )
        ),
        child: Scaffold(
          appBar: AppBar(
            title: Text(args.title),
          ),
          body: Container(
          width: width * 0.9,
            height: height*0.9,
              margin: EdgeInsets.only(left:width*0.06 ,right:width*0.06 ,bottom:height*0.05,top:height*0.03   ),
            decoration: BoxDecoration(
              color:provider.themeMode == ThemeMode.dark?
              theming.darkprimarycolor:
              theming.whitecolor ,
              borderRadius: BorderRadius.circular(24)
            ),
            child:
            ListView.builder(itemBuilder:
                ( context,index ){
              return item_hadethDetails(content: args.content[index]);
            },
                itemCount: args.content.length),
          ),
        ));
  }
}


