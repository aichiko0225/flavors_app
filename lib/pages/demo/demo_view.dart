import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'demo_logic.dart';

// getx demo
class DemoPage extends StatefulWidget {
  const DemoPage({Key? key}) : super(key: key);

  @override
  _DemoPageState createState() => _DemoPageState();
}

class _DemoPageState extends State<DemoPage> {
  final logic = Get.put(DemoLogic());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('demo'),
      ),
      body: Container(
        child: Column(
          children: [
            ConstrainedBox(
              constraints: BoxConstraints.tightFor(width: 100, height: 50),
              child: Container(child: Text('ConstrainedBox'), color: Colors.red,),
            )
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    Get.delete<DemoLogic>();
    super.dispose();
  }
}
