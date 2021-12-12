import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  var hidden = true.obs;
  // ignore: non_constant_identifier_names
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
}
