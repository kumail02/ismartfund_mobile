import 'package:get/get.dart';
import 'package:ismartfund_mobile/modules/home/home_view.dart';
import '../layouts/main_layout.dart';
import 'app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: Routes.home,
      page: () => const MobileMainLayout(child: HomeView()),
    ),
  ];
}
