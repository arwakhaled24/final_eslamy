import 'package:eslamy/quran/sora_details.dart';
import 'package:flutter/material.dart';

class verse_namedetails extends StatelessWidget {
  String vese;
  int index;

  verse_namedetails({required this.vese,required this.index});

  @override
  Widget build(BuildContext context) {
    return Text("$vese (${index+1})",
      style:Theme.of(context).textTheme.subtitle2,
      textAlign: TextAlign.center,
      textDirection: TextDirection.rtl
    );
  }
}
