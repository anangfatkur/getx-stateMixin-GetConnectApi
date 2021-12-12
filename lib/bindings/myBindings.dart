import 'package:get/get.dart';
import 'package:getx_statemixin/controller/loginController.dart';
// import 'package:getx_statemixin/controller/myController.dart';

class MyBindings implements Bindings {
  @override
  void dependencies() {
    // ignore: todo
    // TODO: implement dependencies
    // Get.put(MyController());
    Get.put(LoginController());
  }
}
