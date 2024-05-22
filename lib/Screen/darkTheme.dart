import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:state_management/provider/theme_changer.dart';

class DarkThemeScreen extends StatefulWidget {
  const DarkThemeScreen({super.key});

  @override
  State<DarkThemeScreen> createState() => _DarkThemeScreenState();
}

class _DarkThemeScreenState extends State<DarkThemeScreen> {
  @override
  Widget build(BuildContext context) {
    final themeChanger = Provider.of<ThemeChanger>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'theme Changer',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          RadioListTile<ThemeMode>(
              title: Text('Light Mode '),
              value: ThemeMode.light,
              groupValue: themeChanger.thememode,
              onChanged: themeChanger.setChanger),
          RadioListTile<ThemeMode>(
              title: Text('Dark Mode '),
              value: ThemeMode.dark,
              groupValue: themeChanger.thememode,
              onChanged: themeChanger.setChanger),
          RadioListTile<ThemeMode>(
              title: Text('System Mode '),
              value: ThemeMode.system,
              groupValue: themeChanger.thememode,
              onChanged: themeChanger.setChanger),
          Icon(Icons.face)
        ],
      ),
    );
  }
}
