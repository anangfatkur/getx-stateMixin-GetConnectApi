import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/myController.dart';

// class HomePage extends StatelessWidget {
class HomePage extends GetView<MyController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: Center(
        child: controller.obx(
          (state) => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("id : ${state!["id"]}"),
              Text("Nama : ${state["first_name"] + state["last_name"]}"),
              Text("Email : ${state["email"]}"),
              Image.network("${state['avatar']}"),
            ],
          ),
          onLoading: const Text("Loading.."),
          onEmpty: const Text("Belum ada data.."),
          onError: (error) => const Text("Terjadi Kesalahan"),
        ),

        // child: Obx(
        //   () => Text(
        //     "${controller.count}",
        //     style: const TextStyle(fontSize: 30),
        //   ),
        // ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => controller.getData(),
      ),
    );
  }
}
