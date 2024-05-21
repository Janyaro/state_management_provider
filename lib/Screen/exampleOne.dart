import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class ExampleOne extends StatefulWidget {
  const ExampleOne({super.key});

  @override
  State<ExampleOne> createState() => _ExampleOneState();
}

class _ExampleOneState extends State<ExampleOne> {
  double valueNumber = 1.0;
  @override
  Widget build(BuildContext context) {
    // final provider = Provider.of(context);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Slider(
              min: 0.0,
              max: 1.0,
              value: valueNumber,
              onChanged: (value) {
                valueNumber = value;
                setState(() {});
              }),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.green.withOpacity(valueNumber)),
                  child: const Center(
                      child: Text(
                    'container 1',
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  )),
                ),
              ),
              Expanded(
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.blue.withOpacity(valueNumber)),
                  child: const Center(
                      child: Text(
                    'container 2',
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  )),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
