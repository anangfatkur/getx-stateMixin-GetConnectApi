import 'package:get/get.dart';

class MyController extends GetxController with StateMixin<String> {
  // var count = 0.obs;

  // void add() => count++;

  void getData() {
    change(
      "Get data dari API",
      status: RxStatus.success(),
    );
  }
}
