import 'package:flutter/material.dart';
import 'package:eslamy/them.dart';
import 'package:provider/provider.dart';

import '../provider/setting_provider.dart';
class radio_tab extends StatelessWidget {

  @override
  Widget build(BuildContext context) {


    var provider =Provider.of<SettingProvider>(context);
    return Column(
      children: [
        Expanded(
        flex: 1,
            child: Text("")
    ),
        Expanded(
            flex: 1,
            child: Image.asset("assets/images/radiotabimage.png")
        ),
        Expanded(
            flex: 2,
child:Column(

  children: [

    Container(
      margin: EdgeInsets.only(top:15,bottom: 20 ),
      child: Center(

        child: Text("اذاعه القرآن الكريم",
        style:Theme.of(context).textTheme.subtitle2,
      ),
    )),
    Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(Icons.skip_previous,
          size: 50 ,
        color:ThemeMode == provider.themeMode?
        theming.yello :
        theming.lightprimarycolor,),
        Icon(Icons.play_arrow,
    size: 50,
    color:ThemeMode == provider.themeMode?
    theming.yello :
    theming.lightprimarycolor ),
        Icon(Icons.skip_next,
        size: 50,
    color: ThemeMode == provider.themeMode?
    theming.yello :
    theming.lightprimarycolor)
    ,



      ],
    )
  ],
),
        )
      ],


    );
  }
}
