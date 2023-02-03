import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'counter_logic.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  final logic = Get.put(CounterLogic());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('计数器-简单式')),
      body: Center(
        child: GetBuilder<CounterLogic>(builder: (logic) {
          return Text(
            '点击了 ${logic.count} 次',
            style: TextStyle(fontSize: 30.0),
          );
        },),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => logic.increase(),
        child: Icon(Icons.add),
      ),
    );
  }

  @override
  void dispose() {
    Get.delete<CounterLogic>();
    super.dispose();
  }
}