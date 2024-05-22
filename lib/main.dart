import 'package:flutter/material.dart';
import 'package:state_management/Screen/CountProviderExample.dart';
import 'package:state_management/Screen/darkTheme.dart';
import 'package:state_management/Screen/exampleOne.dart';
import 'package:state_management/Screen/favouriteFolder/favouriteScreen.dart';
import 'package:state_management/Screen/practiceClass.dart';
import 'package:state_management/provider/ExampleF.dart';
import 'package:state_management/provider/countprovider.dart';
import 'package:provider/provider.dart';
import 'package:state_management/provider/exampleOneProvider.dart';
import 'package:state_management/provider/practiceProvider.dart';
import 'package:state_management/provider/theme_changer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => CountProvider()),
          ChangeNotifierProvider(create: (_) => ExampleOneProvider()),
          ChangeNotifierProvider(create: (_) => FavouriteProvider()),
          ChangeNotifierProvider(create: (_) => Help_provider()),
          ChangeNotifierProvider(create: (_) => ThemeChanger())
        ],
        child: Builder(builder: (BuildContext context) {
          final themechanger = Provider.of<ThemeChanger>(context);
          return MaterialApp(
              theme: ThemeData(primaryColor: Colors.blue),
              themeMode: themechanger.thememode,
              darkTheme: ThemeData(
                  brightness: Brightness.dark,
                  primarySwatch: Colors.green,
                  appBarTheme: AppBarTheme(backgroundColor: Colors.green),
                  iconTheme: IconThemeData(color: Colors.pink)),
              debugShowCheckedModeBanner: false,
              home: DarkThemeScreen());
        }));
  }
}
/*
return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => CountProvider(),
        ),
        ChangeNotifierProvider(create: (_) => ExampleOneProvider()),
        ChangeNotifierProvider(create: (_) => FavouriteProvider())
      ],
      child: const MaterialApp(
        home: FavouriteScreen(),
      ),
    );
*/