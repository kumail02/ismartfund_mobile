import 'package:flutter/material.dart';
import 'package:ismartfund_mobile/theme/app_colors.dart';
import 'package:ismartfund_mobile/widgets/app_bar.dart';
import 'package:ismartfund_mobile/widgets/app_drawer.dart';

class MobileMainLayout extends StatelessWidget {
  final Widget child;
  const MobileMainLayout({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      endDrawer: const AppDrawer(), // IMPORTANT
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const MobileAppBar(userName: 'John'),
            child,
          ],
        ),
      ),
    );
  }
}
