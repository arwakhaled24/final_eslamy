import 'package:eslamy/quran/verse_namedetails.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:eslamy/them.dart';
import 'package:provider/provider.dart';

import '../provider/setting_provider.dart';
class sora_details extends StatefulWidget {
static const String RouteName ="sord details";

  @override
  State<sora_details> createState() => _sora_detailsState();
}

class _sora_detailsState extends State<sora_details> {
List <String> w=[];

  @override
  Widget build(BuildContext context) {
    var provider =Provider.of<SettingProvider>(context);
   var args= ModalRoute.of(context)?.settings.arguments as sord_detailsarg ;
   var width =MediaQuery.of(context).size.width;
   var height= MediaQuery.of(context).size.height ;
   if(w.isEmpty){
   loadfile(args.index);
   }
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image:  provider.themeMode == ThemeMode.dark?
                AssetImage("assets/images/dark_bachground.png"):
                  AssetImage(
                      "assets/images/main_background.png"
                ),
                fit: BoxFit.fill
            )
        ),
        child: Scaffold(
          appBar: AppBar(
            title: Text(args.title

            ),
          ),
          body: Container(
          width: width * 0.9,
            height: height*0.9,
              margin: EdgeInsets.only(left:width*0.06 ,right:width*0.06 ,bottom:height*0.05,top:height*0.03   ),
            decoration: BoxDecoration(
              color:  ThemeMode.dark ==provider.themeMode?
              theming.darkprimarycolor:
                theming.whitecolor,
              borderRadius: BorderRadius.circular(24)
            ),
            child: w.isEmpty ?
                Center(child: CircularProgressIndicator()) :
            ListView.builder(
    itemBuilder:
                ( context,index ){
              return verse_namedetails(vese: w[index],index: index,);
            },
               /* separatorBuilder: (context , index ){
                  return Container(
                    color: Theme.of(context).primaryColor,
                    width: double.infinity,
                    height: 2,
                    margin: EdgeInsets.symmetric(horizontal: 24),
                  );*/


                itemCount: w.length),
          ),
        )
);
  }

  void loadfile(int index)async{
     String filecontent = await
     rootBundle.loadString("assets/fiels/${index+1}.txt");
      List<String> lines =filecontent.split("\n");
      w = lines ;
      setState(() {

      });

  }
}

class sord_detailsarg {
  String title ;
  int index ;
  sord_detailsarg({required this.title ,required this.index})
  ;
}

