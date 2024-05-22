import 'package:flutter/material.dart';

class Change_Notifier_Screen extends StatelessWidget {
  const Change_Notifier_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    print('main build honga ');
    ValueNotifier<int> _counter = ValueNotifier<int>(0);
    ValueNotifier<bool> toogle = ValueNotifier<bool>(true);

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ValueListenableBuilder(
              valueListenable: toogle,
              builder: (context, value, child) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    obscureText: toogle.value,
                    decoration: InputDecoration(
                        hintText: 'Enter Password',
                        fillColor: Colors.grey,
                        filled: true,
                        suffixIcon: InkWell(
                            onTap: () {
                              toogle.value = !toogle.value;
                            },
                            child: Icon(toogle.value
                                ? Icons.visibility_off
                                : Icons.visibility))),
                  ),
                );
              }),
          Center(
              child: ValueListenableBuilder(
                  valueListenable: _counter,
                  builder: (context, value, child) {
                    return Text(
                      _counter.value.toString(),
                      style: const TextStyle(fontSize: 23),
                    );
                  })),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _counter.value++;
          print(_counter.value);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
