import 'package:flutter/material.dart';
import 'package:ismartfund_mobile/theme/app_colors.dart';

class MobileAppBar extends StatelessWidget {
  final String userName;
  const MobileAppBar({super.key, required this.userName});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      decoration: const BoxDecoration(color: Colors.white),
      child: Column(
        children: [
          /// TOP ROW (Logo + Drawer)
          Row(
            children: [
              Image.asset(
                'assets/images/ismart-logos-tranparent-web-04.png',
                height: 40,
              ),
              const Spacer(),

              /// Drawer Button
              InkWell(
                onTap: () {
                  Scaffold.of(context).openEndDrawer();
                },
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: AppColors.dark,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Icon(Icons.menu, color: Colors.white, size: 20),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
