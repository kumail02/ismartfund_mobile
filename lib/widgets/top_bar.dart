import 'package:flutter/material.dart';
import 'package:ismartfund_mobile/widgets/custom_asset_image.dart';
import '../theme/app_colors.dart';
import 'custom_text.dart';

class TopActionBar extends StatelessWidget {
  const TopActionBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
      decoration: BoxDecoration(
        color: AppColors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.08),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          /// LEFT SIDE ACTIONS
          Wrap(
            spacing: 12,
            runSpacing: 12,
            children: const [
              _ActionItem(
                borderColor: AppColors.primary,
                iconColor: AppColors.primary,
                textColor: AppColors.primary,
                text: 'New challenge',
                iconPath: 'assets/icons/register.svg',
              ),
              _ActionItem(
                borderColor: AppColors.secondaryColor,
                textColor: AppColors.secondaryColor,
                text: 'Free 30 days trial',
              ),
            ],
          ),

          const Spacer(),

          /// RIGHT SIDE (ICONS + USER INFO)
          Row(
            children: [
              _TopIconButton(
                icon: Icons.notifications_none_rounded,
                onTap: () {},
              ),
              const SizedBox(width: 12),
              _TopIconButton(icon: Icons.mail_outline_rounded, onTap: () {}),
              const SizedBox(width: 12),
              _TopIconButton(icon: Icons.logout_rounded, onTap: () {}),

              const SizedBox(width: 20),
              const VerticalDivider(thickness: 1, width: 1),
              const SizedBox(width: 20),

              /// GREETING
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  CustomText(
                    text: 'Good Morning',
                    fontSize: 14,
                    color: AppColors.primary,
                    fontWeight: FontWeight.w500,
                  ),
                  CustomText(
                    text: 'John',
                    fontSize: 16,
                    color: AppColors.dark,
                    fontWeight: FontWeight.w700,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _TopIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;

  const _TopIconButton({required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(12),
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.primary.withValues(alpha: 0.4)),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Icon(icon, size: 22, color: AppColors.primary),
      ),
    );
  }
}

class _ActionItem extends StatefulWidget {
  final String text;
  final String? iconPath;
  final Color borderColor;
  final Color textColor;
  final Color? iconColor;

  const _ActionItem({
    required this.text,
    required this.borderColor,
    required this.textColor,
    this.iconPath,
    this.iconColor,
  });

  @override
  State<_ActionItem> createState() => _ActionItemState();
}

class _ActionItemState extends State<_ActionItem> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        width: 250,
        height: 70,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: isHovered ? AppColors.grey : AppColors.white, // hover color
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: widget.borderColor),
          boxShadow: isHovered
              ? [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.1),
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
                ]
              : [],
        ),
        transform: isHovered
            ? (Matrix4.identity()..scale(1.02)) // slight scale on hover
            : Matrix4.identity(),
        child: Row(
          mainAxisAlignment: widget.iconPath == null
              ? MainAxisAlignment.center
              : MainAxisAlignment.start,
          children: [
            if (widget.iconPath != null) ...[
              CustomAssetsImage(
                imagePath: widget.iconPath!,
                width: 42,
                height: 42,
                color: widget.iconColor,
              ),
              const SizedBox(width: 14),
            ],
            CustomText(
              text: widget.text,
              fontSize: 16,
              color: widget.textColor,
              fontWeight: FontWeight.w700,
            ),
          ],
        ),
      ),
    );
  }
}
