import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_statemixin/routes/app_page.dart';
// import 'package:getx_statemixin/bindings/myBindings.dart';
// import './pages/home_page.dart';

//GET STORAGE
import '../pages/home.dart';
import '../pages/login.dart';
import 'package:get_storage/get_storage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // home: const MyHomePage(),
      home: const LoginPage(),
      getPages: AppPage.pages,
      // initialBinding: MyBindings(),
    );
  }
}
