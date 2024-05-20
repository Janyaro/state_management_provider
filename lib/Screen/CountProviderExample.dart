import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/provider/countprovider.dart';

class CountExample extends StatefulWidget {
  const CountExample({super.key});

  @override
  State<CountExample> createState() => _CountExampleState();
}

class _CountExampleState extends State<CountExample> {
  @override
  Widget build(BuildContext context) {
    final countprovider = Provider.of<CountProvider>(context, listen: false);
    print('build');
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Consumer<CountProvider>(builder: (context, value, child) {
            print('only me ');
            return Center(
                child: Text(
              value.count.toString(),
              style: TextStyle(fontSize: 50),
            ));
          })
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.greenAccent,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        onPressed: () {
          countprovider.setValue();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
