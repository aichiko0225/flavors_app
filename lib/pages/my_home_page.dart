import 'package:flavors_app/pages/counter/counter_view.dart';
import 'package:flavors_app/pages/demo/demo_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../flavors.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(F.title),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Hello ${F.title}',
          ),

          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (c) => const CounterPage()));
            },
            child: Text('Counter'),
          ),

          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (c) => const DemoPage()));
            },
            child: Text('Demo'),
          )
        ]
      ),
    );
  }
}
