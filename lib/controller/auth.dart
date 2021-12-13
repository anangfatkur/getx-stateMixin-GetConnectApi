import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthController extends GetxController {
  var isAuth = false.obs;

  final Map<String, String> _dataUser = {
    'email': 'admin@gmail.com',
    'password': 'admin123',
  };

  void dialogError(String msg) {
    Get.defaultDialog(
      title: "Terjadi Kesalahan",
      middleText: msg,
    );
  }

  Future<void> autoLogin() async {
    final box = GetStorage();
    if (box.read("dataUser") != null) {
      final data = box.read("dataUser") as Map<String, dynamic>;
      login(data["email"], data["password"], data["rememberme"]);
    }
  }

  void login(String email, String password, bool rememberme) async {
    if (email != '' && password != '') {
      if (GetUtils.isEmail(email)) {
        if (email == _dataUser['email'] && password == _dataUser['password']) {
          if (rememberme) {
            //simpan di storage menggunakan get storage

            final box = GetStorage();
            box.write(
              'dataUser',
              {
                "email": email,
                "password": password,
                "rememberme": rememberme,
              },
            );
          } else {
            //hapus di storage menggunakan get storage
            final box = GetStorage();
            if (box.read('dataUser') != null) {
              box.erase();
            }
          }
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

  void logout(bool rememberme) {
    final box = GetStorage();
    if (box.read('dataUser') != null) {
      box.erase();
    }

    isAuth.value = false;
  }
}
