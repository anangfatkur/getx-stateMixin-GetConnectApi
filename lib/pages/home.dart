import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_statemixin/controller/auth.dart';
import 'package:getx_statemixin/controller/loginController.dart';


class MyHomePage extends StatelessWidget {
  final auth = Get.find<AuthController>();
  final login = Get.find<LoginController>();
  MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => auth.logout(login.rememberme.value),
        child: const Icon(Icons.logout),
      ),
    );
  }
}
