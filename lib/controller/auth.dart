import 'package:get/get.dart';
import 'package:getx_statemixin/routes/route_name.dart';

class AuthController extends GetxController {
  var isAuth = false.obs;

  Map<String, String> _dataUser = {
    'email': 'admin@gmail.com',
    'password': 'admin123',
  };

  void dialogError(String msg) {
    Get.defaultDialog(
      title: "Terjadi Kesalahan",
      middleText: msg,
    );
  }

  void login(String email, String password) {
    if (email != '' && password != '') {
      if (GetUtils.isEmail(email)) {
        if (email == _dataUser['email'] && password == _dataUser['password']) {
          //Berhasil untuk Login
          isAuth.value = true;
        } else {
          dialogError("Data User TidAK Valid");
        }
      } else {
        dialogError("Email dan Password Tidak Benar");
      }
    } else {
      dialogError("Semua data harus di isi");
    }
  }
}
