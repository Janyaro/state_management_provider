import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:state_management/provider/practiceProvider.dart';

// class PracticeScreen extends StatefulWidget {
//   const PracticeScreen({super.key});

//   @override
//   State<PracticeScreen> createState() => _PracticeScreenState();
// }

// class _PracticeScreenState extends State<PracticeScreen> {
//   @override
//   Widget build(BuildContext context) {
//     print('build start se hoga');
//     final provider = Provider.of<Help_provider>(context, listen: false);
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.blue,
//         title: const Text('class Provider'),
//         centerTitle: true,
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//         //  Expanded(
//         //     child: ListView.builder(
//         //         itemCount: 12,
//         //         itemBuilder: (context, index) {
//         //           return Consumer<Help_provider>(
//         //               builder: (context, value, child) {
//         //             return ListTile(
//         //               onTap: () {
//         //                 if (value.selectItem.contains(index)) {
//         //                   value.removeListItem(index);
//         //                 } else {
//         //                   value.AddistItem(index);
//         //                 }
//         //               },
//         //               title: Text('item ' + index.toString()),
//         //               trailing: value.selectItem.contains(index)
//         //                   ? const Icon(Icons.favorite)
//         //                   : const Icon(Icons.favorite_outline),
//         //             );
//         //           });
//         //         }),
//         //   )

//         ],
//       ),
//     );
//   }
// }

class PracticeScreen extends StatelessWidget {
  PracticeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ValueNotifier<int> _counter = ValueNotifier<int>(0);
    print('widget built');
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Text(
            'Data ahe ga k nhi ',
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
          )),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blueAccent,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          child: Icon(Icons.add),
          onPressed: () {
            _counter.value++;
            print(_counter.value);
          }),
    );
  }
}
