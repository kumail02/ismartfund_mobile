import 'package:flutter/material.dart';
import 'package:ismartfund_mobile/theme/app_colors.dart';
import 'package:ismartfund_mobile/widgets/custom_text.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.white,
      child: SafeArea(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            _drawerItem(title: "Home", onTap: () {}),
            _buildDivider(),

            _expansionSection(
              title: "Challenges",
              children: [
                _subItem("Choose Your Challenge"),
                _subItem("Master – Instant"),
                _subItem("Experienced – 1 Step"),
                _subItem("Advanced – 2 Step"),
                _subItem("Premium – 2 Step"),
                _subItem("Prestige Lite – 2 Step"),
                _subItem("Prestige Pro – 2 Step"),
                _subItem("Prestige – Discontinued"),
              ],
            ),
            _buildDivider(),

            _expansionSection(title: "Education"),
            _buildDivider(),
            _expansionSection(title: "About Us"),
            _buildDivider(),
            _expansionSection(title: "Help"),
            _buildDivider(),
            _drawerItem(title: "Affiliates"),
            _buildDivider(),
            _expansionSection(title: "Contact"),
            _buildDivider(),
            _drawerItem(title: "Dashboard Login"),
          ],
        ),
      ),
    );
  }

  Widget _drawerItem({required String title, VoidCallback? onTap}) {
    return ListTile(
      title: CustomText(text: title, fontSize: 15, color: AppColors.dark),
      onTap: onTap,
    );
  }

  // -------- Expansion Section
  Widget _expansionSection({
    required String title,
    List<Widget> children = const [],
  }) {
    return Theme(
      data: ThemeData().copyWith(
        dividerColor: Colors.transparent,
        splashColor: Colors.transparent,
      ),
      child: ExpansionTile(
        tilePadding: const EdgeInsets.symmetric(horizontal: 16),
        iconColor: Colors.lightBlueAccent,
        collapsedIconColor: Colors.lightBlueAccent,
        title: CustomText(text: title, fontSize: 15, color: AppColors.dark),
        children: children.isNotEmpty
            ? [
                Container(
                  color: AppColors.white, // light blue expanded bg
                  child: Column(children: children),
                ),
              ]
            : [],
      ),
    );
  }

  // -------- Sub Menu Item
  Widget _subItem(String title) {
    return ListTile(
      dense: true,
      title: CustomText(text: title, fontSize: 15, color: AppColors.dark),
      onTap: () {},
    );
  }

  Widget _buildDivider() {
    return const Divider(
      color: AppColors.primary,
      thickness: 1,
      indent: 20,
      endIndent: 20,
    );
  }
}
