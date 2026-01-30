import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ismartfund_mobile/controllers/layout_controller.dart';
import 'package:ismartfund_mobile/routes/app_routes.dart';
import 'routes/app_pages.dart';

void main() {
  Get.put(LayoutController(), permanent: true);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'iSmartfund Mobile',
      initialRoute: Routes.home,
      getPages: AppPages.pages,
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Aptos'),
    );
  }
}
