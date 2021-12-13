import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/auth.dart';
import '../controller/loginController.dart';

class LoginPage extends StatelessWidget {
  final loginC = Get.find<LoginController>();
  final authC = Get.find<AuthController>();
  LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            TextField(
              controller: loginC.emailController,
              autocorrect: false,
              decoration: const InputDecoration(
                labelText: "Email",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            Obx(
              () => TextField(
                controller: loginC.passwordController,
                obscureText: loginC.hidden.value,
                autocorrect: false,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () => loginC.hidden.toggle(),
                    icon: loginC.hidden.isTrue
                        ? const Icon(Icons.remove_red_eye)
                        : const Icon(Icons.remove_red_eye_outlined),
                  ),
                  labelText: "Password",
                  border: const OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Obx(
              () => CheckboxListTile(
                value: loginC.rememberme.value,
                onChanged: (value) => loginC.rememberme.toggle(),
                title: const Text("Remember me"),
                controlAffinity: ListTileControlAffinity.leading,
              ),
            ),
            ElevatedButton(
              onPressed: () => authC.login(
                loginC.emailController.text,
                loginC.passwordController.text,
                loginC.rememberme.value,
              ),
              child: const Text("Login"),
            ),
          ],
        ),
      ),
    );
  }
}
