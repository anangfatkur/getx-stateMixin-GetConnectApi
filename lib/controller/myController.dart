import 'package:get/get.dart';
import '../providers/userP.dart';

class MyController extends GetxController
    with StateMixin<Map<String, dynamic>> {
  // var count = 0.obs;

  // void add() => count++;

  void getData() {
    try {
      UserProvider().getUser().then(
        (response) {
          if (response.statusCode == 200) {
            final data = response.body["data"] as Map<String, dynamic>;
            change(
              data,
              status: RxStatus.success(),
            );
          }
        },
        onError: (_) {
          change(
            null,
            status: RxStatus.error("Tidak ada data dari API"),
          );
        },
      );
    } catch (error) {
      change(
        null,
        status: RxStatus.error(
          error.toString(),
        ),
      );
    }
  }

  @override
  void onInit() {
    // TODO: implement onInit
    change(null, status: RxStatus.empty());
    super.onInit();
  }
}
