import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/model/details_screen_arg.dart';

import '../../utilites/app_assets.dart';
import '../../utilites/app_colors.dart';
import '../../utilites/app_theme.dart';

class DetailsScreen extends StatefulWidget {
  static const String routName = "details_screen";

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  late DetailsScreenArg arguments;
  String fileContent="";
  int Count=0;

  @override
  Widget build(BuildContext context) {
    arguments = ModalRoute
        .of(context)!
        .settings
        .arguments as DetailsScreenArg;

    if(fileContent.isEmpty) readFile();

    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AppAssets.background), fit: BoxFit.fill)
      ),
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Appcolors.tarnsparent,
          centerTitle: true,
          title: Text(arguments.sura, style: AppTheme.appBarTitlesTextStyle,),
        ),
        backgroundColor: Appcolors.tarnsparent,
        body: fileContent.isEmpty ?const Center(child: CircularProgressIndicator()):
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Text(fileContent,
              textAlign: TextAlign.center,
              textDirection: TextDirection.rtl,
              style: const TextStyle(fontSize: 24, color: Appcolors.accent),),
          ),
        ),

      ),
    );
  }

  void readFile() async {
    String file = await rootBundle.loadString(arguments.isQuranFile?"assets/Files/Quran/${arguments.filename}.txt":"assets/Files/Ahades/${arguments.filename}");
    fileContent=file;
    if(!arguments.isQuranFile){
      setState(() {});
      return;
    };
    List<String> fileline=file.split("\n");
    for(int i=0;i<fileline.length;i++){
        fileline[i]+= "(${i+1})";
      }
    fileContent=fileline.join();
    setState(() {});
    }

}

