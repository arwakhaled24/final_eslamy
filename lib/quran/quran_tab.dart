import 'package:eslamy/quran/verse_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:eslamy/them.dart';
class quran_tab extends StatelessWidget {

  List<String> sor_name=[
    "الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
    ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
    ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
    ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
    ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
    ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
    ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
    ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
    ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
    "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"
  ];

  @override
  Widget build(BuildContext context) {
   return Column(
     children: [
       Image.asset("assets/images/quran_header.png"),
       Container(
         width: double.infinity,
           height: 5,
         color: Theme.of(context).primaryColor,
         margin: EdgeInsets.only(bottom: 4),
       ),
       Text(AppLocalizations.of(context)!.sura_name,
         style: Theme.of(context).textTheme.subtitle1,
       ),
       Container(
         width: double.infinity,
         height:5,
         color: Theme.of(context).primaryColor,
         margin: EdgeInsets.only(top: 4),
       ),
       Expanded(
           child: ListView.separated(itemBuilder: (context,index){
             return verse_name( vese: sor_name[index],index: index,);

           },
             itemCount: sor_name.length,
              separatorBuilder: (context , index ){
             return Container(
               color: Theme.of(context).primaryColor,
               width: double.infinity,
               height: 3,
               margin: EdgeInsets.symmetric(horizontal: 24),
             );
              },
           )
       )

     ],
   );
  }
}
