import 'package:flutter/material.dart';
import 'package:state_management/Screen/CountProviderExample.dart';
import 'package:state_management/Screen/exampleOne.dart';
import 'package:state_management/Screen/favouriteFolder/favouriteScreen.dart';
import 'package:state_management/provider/ExampleF.dart';
import 'package:state_management/provider/countprovider.dart';
import 'package:provider/provider.dart';
import 'package:state_management/provider/exampleOneProvider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
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
  }
}
