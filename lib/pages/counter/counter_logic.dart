import 'package:get/get.dart';

class CounterLogic extends GetxController {
  late int count = 0;

  void increase() {
    ++count;
    update();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
}
