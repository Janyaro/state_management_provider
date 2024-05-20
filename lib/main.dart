import 'package:flutter/material.dart';
import 'package:state_management/Screen/CountProviderExample.dart';
import 'package:state_management/provider/countprovider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CountProvider(),
      child: MaterialApp(
        home: CountExample(),
      ),
    );
  }
}
