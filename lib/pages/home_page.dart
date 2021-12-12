import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/myController.dart';

// class HomePage extends StatelessWidget {
class HomePage extends GetView <MyController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: Center(
        child: Obx(
          () => Text(
            "${controller.count}",
            style: const TextStyle(fontSize: 30),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () => controller.add(),),
    );
  }
}
