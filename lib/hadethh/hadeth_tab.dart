import 'package:eslamy/hadethh/item_hadethname.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class hadeth_tab extends StatefulWidget {
  static const String RoutrName = "hadeth tab";

  @override
  State<hadeth_tab> createState() => _hadeth_tabState();
}

class _hadeth_tabState extends State<hadeth_tab> {
  List<HadethData> hadethlist = [];
  @override
  Widget build(BuildContext context) {
    if(hadethlist.isEmpty) {
      hadethload();
    }
    return Column(children: [
      Expanded(flex: 1, child: Image.asset("assets/images/hadeth_logo.png")),
      Container(
        width: double.infinity,
        height: 4,
        color: Theme.of(context).primaryColor,
        margin: EdgeInsets.only(bottom: 4),
      ),
      Text(
        AppLocalizations.of(context)!.hadeth_name
     ,
        style: TextStyle(
          fontSize: 24,
          color: Theme.of(context).textTheme.subtitle1!.color
        ),
      ),
      Container(
        width: double.infinity,
        height: 4,
        color: Theme.of(context).primaryColor,
        margin: EdgeInsets.only(top: 4),
      ),
      Expanded(
          flex: 3,
          child: hadethlist.isEmpty ?
              Center(child: CircularProgressIndicator(),):
          ListView.separated(
            itemBuilder: (context, index) {
              return item_hadethname(hadeth:hadethlist[index] ,
               // style: TextStyle(fontSize: 22),
              );
            },
            itemCount: hadethlist.length,
            separatorBuilder: (context, index) {
              return Container(
                color: Theme.of(context).primaryColor,
                width: double.infinity,
                height: 3,
                margin: EdgeInsets.symmetric(horizontal: 24),
              );
            },
          )),
    ]);
  }

  void hadethload() async {
    String filecontent =
        await rootBundle.loadString("assets/fiels/ahadeth .txt");
    List<String> allhadethcontent = filecontent.split("#\r\n");
    for (int i = 0; i < allhadethcontent.length; i++) {
      List<String> singelhADETH = allhadethcontent[i].split('\n');
      String title = singelhADETH[0];
      singelhADETH.removeAt(0);
      HadethData hadeth= HadethData(title: title, content: singelhADETH);
      hadethlist.add(hadeth);
    }
    setState(() {});
  }
}

class HadethData {
  String title;
  List<String> content;
  HadethData({required this.title, required this.content});
}
