import 'package:get/get.dart';
import '../pages/login.dart';
import '../pages/home.dart';
import '../routes/route_name.dart';

class AppPage {
  static final pages = [
    GetPage(
      name: RouteName.home,
      page: () => const MyHomePage(),
    ),
    GetPage(
      name: RouteName.login,
      page: () => LoginPage(),
    ),
  ];
}
