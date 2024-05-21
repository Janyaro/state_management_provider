import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:state_management/provider/exampleOneProvider.dart';

class ExampleOne extends StatefulWidget {
  const ExampleOne({super.key});

  @override
  State<ExampleOne> createState() => _ExampleOneState();
}

class _ExampleOneState extends State<ExampleOne> {
  @override
  Widget build(BuildContext context) {
    print('build screen');
    final provider = Provider.of<ExampleOneProvider>(context, listen: false);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<ExampleOneProvider>(builder: (context, value, child) {
            return Slider(
                min: 0.0,
                max: 1.0,
                value: provider.getvalue,
                onChanged: (val) {
                  print(val);
                  value.setSliderValue(val);
                });
            ;
          }),
          Consumer<ExampleOneProvider>(builder: (context, value, child) {
            return Row(
              children: [
                Expanded(
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.green.withOpacity(value.getvalue)),
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
                        color: Colors.blue.withOpacity(value.getvalue)),
                    child: const Center(
                        child: Text(
                      'container 2',
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    )),
                  ),
                )
              ],
            );
          }),
        ],
      ),
    );
  }
}
