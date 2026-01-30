import 'package:get/get.dart';
import '../routes/app_routes.dart';

class LayoutController extends GetxController {
  final selectedRoute = Routes.home.obs;

  void navigate(String route) {
    if (selectedRoute.value == route) return;
    selectedRoute.value = route;
    Get.offNamedUntil(
      route,
      (route) => false,
    );
  }
}
