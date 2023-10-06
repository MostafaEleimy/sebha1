import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islami_app/ui/screens/details%20Screen/Details_screen.dart';
import 'package:islami_app/ui/screens/home/home_screen.dart';
import 'package:islami_app/ui/utilites/app_colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [Locale("en"),Locale("ar")],
      locale: Locale("en") ,
      routes: {
        HomeScreen.routname:(_)=>HomeScreen(),
        DetailsScreen.routName:(_)=>DetailsScreen()
      },
      initialRoute: HomeScreen.routname,
    );
  }
}


