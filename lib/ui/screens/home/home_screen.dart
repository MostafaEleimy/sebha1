import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/ui/screens/home/tabs/Quran/Quran.dart';
import 'package:islami_app/ui/screens/home/tabs/Settings%20tab/SettingsTab.dart';
import 'package:islami_app/ui/screens/home/tabs/ahades/ahades.dart';
import 'package:islami_app/ui/screens/home/tabs/radio/radio.dart';
import 'package:islami_app/ui/screens/home/tabs/sebha/sebha.dart';
import 'package:islami_app/ui/utilites/app_assets.dart';
import 'package:islami_app/ui/utilites/app_colors.dart';
import 'package:islami_app/ui/utilites/app_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeScreen extends StatefulWidget {
  static const String routname="home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentTabIndex=0;
  List<Widget> tabs=[
    QuranTab(),
    AhadesTab(),
    SebhaTab(),
    RadioTab(),
    SettingsTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage(AppAssets.background),fit: BoxFit.fill)
      ),
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Appcolors.tarnsparent,
          centerTitle: true,
          title: Text(AppLocalizations.of(context)!.islami,style: AppTheme.appBarTitlesTextStyle,),
        ),
        backgroundColor: Appcolors.tarnsparent,
        body: tabs[currentTabIndex],
        bottomNavigationBar: buildBottomNavigationBar(),
      ),
    );
  }

  Widget buildBottomNavigationBar()=>Theme(
    data: ThemeData(canvasColor: Appcolors.primary),
    child: BottomNavigationBar(
      currentIndex: currentTabIndex,
      onTap: (index){
        currentTabIndex=index;
        setState(() {});
      },
      selectedItemColor: Appcolors.accent,
        iconSize: 30,
        items:  [
          const BottomNavigationBarItem(icon: ImageIcon(AssetImage(AppAssets.iconQuran)),label: "Quran"),
          const BottomNavigationBarItem(icon: ImageIcon(AssetImage(AppAssets.iconAhades)),label: "Ahades"),
          const BottomNavigationBarItem(icon: ImageIcon(AssetImage(AppAssets.iconSebha)),label: "Sebha"),
          const BottomNavigationBarItem(icon: ImageIcon(AssetImage(AppAssets.iconRadio)),label: "Radio"),
          BottomNavigationBarItem(icon:Icon(Icons.settings),label: AppLocalizations.of(context)!.settings),

        ],
    ),
  );
}
