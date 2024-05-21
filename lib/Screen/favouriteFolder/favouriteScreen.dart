import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:state_management/provider/ExampleF.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    final provide = Provider.of<FavouriteProvider>(context, listen: false);
    print('build widget');
    final media = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: media.height,
        width: media.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.topLeft,
                colors: [Colors.blue.shade200, Colors.blue.shade700])),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: 100,
                  itemBuilder: (context, index) {
                    return Consumer<FavouriteProvider>(
                        builder: (context, value, child) {
                      return ListTile(
                        onTap: () {
                          if (value.selectedListItem.contains(index)) {
                            value.removeValue(index);
                          } else
                            value.addItem(index);
                        },
                        title: Text('item ' + index.toString()),
                        trailing: value.selectedListItem.contains(index)
                            ? Icon(Icons.favorite)
                            : Icon(Icons.favorite_border_outlined),
                      );
                    });
                  }),
            )
          ],
        ),
      ),
    );
  }
}
