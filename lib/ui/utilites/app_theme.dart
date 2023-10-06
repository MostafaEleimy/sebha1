import 'package:flutter/cupertino.dart';
import 'package:islami_app/ui/utilites/app_colors.dart';

abstract class AppTheme{
  static const TextStyle appBarTitlesTextStyle= TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Appcolors.accent);
  static const TextStyle quranTabTitlesTextStyle= TextStyle(fontSize: 25,fontWeight: FontWeight.w600,color: Appcolors.accent);
  static const TextStyle settingsTabTitle= TextStyle(fontSize: 25,fontWeight: FontWeight.w600,color: Appcolors.accent);
  static const TextStyle settingsOptionTitle= TextStyle(fontSize: 22,fontWeight: FontWeight.normal,color: Appcolors.accent);


}