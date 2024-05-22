import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/provider/ExampleF.dart';
import 'package:state_management/provider/practiceProvider.dart';

class MyFavourite extends StatefulWidget {
  const MyFavourite({super.key});

  @override
  State<MyFavourite> createState() => _MyFavouriteState();
}

class _MyFavouriteState extends State<MyFavourite> {
  @override
  Widget build(BuildContext context) {
    final provide = Provider.of<FavouriteProvider>(context, listen: false);
    print('build widget');
    final media = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Favourite Screen"),
        centerTitle: true,
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const MyFavourite()));
            },
            child: const Icon(
              Icons.favorite,
              color: Colors.red,
            ),
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
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
                  itemCount: provide.selectedListItem.length,
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
                            ? const Icon(Icons.favorite)
                            : const Icon(Icons.favorite_border_outlined),
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
