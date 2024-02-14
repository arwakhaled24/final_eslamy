import 'package:eslamy/them.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class tasbeh_tab extends StatefulWidget {
  static const String routename = "tasbeh";

  @override
  State<StatefulWidget> createState() {
    return tasbeh_tabstate();
  }
}

class tasbeh_tabstate extends State<tasbeh_tab> {
  int count = 0;
  String zekr ="سبحان الله ";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.only(top: 15),
                child: Image.asset(
                  "assets/images/Group 8.png",

                ),
              ),
              flex: 1,
            ),
            Expanded(
                child: Column(
              children: [
                Container(
                  child: Text(
                    "$count",
                    style: Theme.of(context).textTheme.subtitle2 ,
                  ),
                  margin: EdgeInsets.only(top: 25,bottom: 10),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      border: Border.all(
                        color: Theme.of(context).primaryColor,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                ),
                Container(
                    child: Text(
                      zekr,
                      style: TextStyle(fontSize: 30,
                      color: theming.darkwhitecolor),
                    ),

                  decoration: BoxDecoration(
                      color:Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                ),
                  ElevatedButton(
child: Icon(Icons.add),
                    onPressed: () {
                      count++;
                      if (count < 33) {
                        zekr = "سبحان الله";
                      } else if (count >= 33 && count < 66) {
                        zekr = "الحمد لله ";
                      } else if (count >= 66 && count < 99) {
                        zekr = "الله اكبر ";
                      } else if (count == 100) {
                        count = 0;
                      }
                      setState(() {});
                      print("$count");
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Theme.of(context).primaryColor),
                  ),
                  )
              ],
            ))
            /* */
          ],
        ),
      ),
    );
  }
}
