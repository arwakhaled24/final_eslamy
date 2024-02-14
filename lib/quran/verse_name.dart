import 'package:eslamy/quran/sora_details.dart';
import 'package:flutter/material.dart';
import 'package:eslamy/them.dart';
class verse_name extends StatelessWidget {
String vese ;
int index ;
verse_name({required this.vese,required this.index });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
Navigator.pushNamed(context, sora_details.RouteName,
  arguments: sord_detailsarg(title: vese, index: index)
);
      },
      child: Container(
        alignment: Alignment.center,
      child: Text(vese,
        style: Theme.of(context).textTheme.subtitle2,

        ),
      ),
      );
  }
}
