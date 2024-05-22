import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:state_management/provider/practiceProvider.dart';

class PracticeScreen extends StatefulWidget {
  const PracticeScreen({super.key});

  @override
  State<PracticeScreen> createState() => _PracticeScreenState();
}

class _PracticeScreenState extends State<PracticeScreen> {
  @override
  Widget build(BuildContext context) {
    print('build start se hoga');
    final provider = Provider.of<Help_provider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('class Provider'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: 12,
                itemBuilder: (context, index) {
                  return Consumer<Help_provider>(
                      builder: (context, value, child) {
                    return ListTile(
                      onTap: () {
                        if (value.selectItem.contains(index)) {
                          value.removeListItem(index);
                        } else {
                          value.AddistItem(index);
                        }
                      },
                      title: Text('item ' + index.toString()),
                      trailing: value.selectItem.contains(index)
                          ? const Icon(Icons.favorite)
                          : const Icon(Icons.favorite_outline),
                    );
                  });
                }),
          )
        ],
      ),
    );
  }
}
