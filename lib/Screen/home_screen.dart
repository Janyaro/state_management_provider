import 'dart:async';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int count = 0;
  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 1), (timer) {
      count++;
      print(count);
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
              child: Text(
            DateTime.timestamp().hour.toString() +
                ':' +
                DateTime.timestamp().minute.toString() +
                ':' +
                DateTime.timestamp().second.toString(),
            style: const TextStyle(fontSize: 63, fontWeight: FontWeight.bold),
          )),
          Center(
              child: Text(
            count.toString(),
            style: const TextStyle(fontSize: 63, fontWeight: FontWeight.bold),
          ))
        ],
      ),
    );
  }
}
