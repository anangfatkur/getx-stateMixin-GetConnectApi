import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_statemixin/pages/home.dart';
import 'package:getx_statemixin/routes/app_page.dart';

// import 'package:getx_statemixin/bindings/myBindings.dart';
// import './pages/home_page.dart';

//GET STORAGE
// import '../pages/home.dart';
import '../pages/login.dart';
import 'package:get_storage/get_storage.dart';
import '../controller/auth.dart';
import '../controller/loginController.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final loginC = Get.put(LoginController());
  final authC = Get.put(AuthController());
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => GetMaterialApp(
          // home: const MyHomePage(),
          debugShowCheckedModeBanner: false,
          home: authC.isAuth.isTrue ? const MyHomePage() : LoginPage(),
          getPages: AppPage.pages,
          // initialBinding: MyBindings(),
          // initialBinding: MyBindings(),
        ));
  }
}
