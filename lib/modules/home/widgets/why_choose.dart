import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ismartfund_mobile/modules/home/heper/data.dart';
import 'package:ismartfund_mobile/theme/app_colors.dart';
import 'package:ismartfund_mobile/widgets/custom_button.dart';
import 'package:ismartfund_mobile/widgets/custom_sizedbox.dart';
import 'package:ismartfund_mobile/widgets/custom_text.dart';

class WhyChooseSection extends StatelessWidget {
  const WhyChooseSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomText(
          textAlign: TextAlign.center,
          text: 'Why Choose Funded Trading Plus',
          fontSize: 32,
          color: AppColors.primary,
        ),
        verticalSpace(30),
        _buildContainer(
          heading: 'Funded Trading Plus',
          icon: CupertinoIcons.checkmark,
          points: features,
          color: AppColors.secondaryColor,
        ),
        verticalSpace(20),
        _buildContainer(
          heading: 'Other Funded Trading Firms',
          icon: CupertinoIcons.xmark,
          points: featuresOthers,
          color: AppColors.errorRed,
        ),
        verticalSpace(30),
        Container(
          padding: EdgeInsets.all(10),
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.primary,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            children: [
              CustomText(
                text: 'Need Help',
                fontSize: 16,
                color: AppColors.white,
                fontWeight: FontWeight.w700,
              ),
              verticalSpace(10),
              CustomText(
                text: '24/7 Support for Traders',
                fontSize: 16,
                color: AppColors.white,
                fontWeight: FontWeight.w700,
              ),
              verticalSpace(10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: CustomText(
                  textAlign: TextAlign.center,
                  text:
                      'Visit our Help Center for answers to common questions about funded challenges, payouts, and trading rules. Learn how to set up your account, understand scaling, and navigate platforms like MetaTrader 5, cTrader, DxTrade, and Match Trader. Still need help? Our live chat team is available 24/7 to support you every step of the way.',
                  fontSize: 14,
                  color: AppColors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
              verticalSpace(20),
              GlowButton(
                text: 'Live Chat',
                onTap: () {},
                backgroundColor: AppColors.dark,
                borderColor: AppColors.dark,
                textColor: AppColors.white,
                shadowColor: Colors.transparent,
              ),
              verticalSpace(20),
              GlowButton(
                text: 'Help Center',
                onTap: () {},
                backgroundColor: AppColors.dark,
                borderColor: AppColors.dark,
                textColor: AppColors.white,
                shadowColor: Colors.transparent,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildContainer({
    required String heading,
    required IconData icon,
    required List<String> points,
    required Color color,
  }) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: AppColors.primary.withValues(alpha: 0.5),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            text: heading,
            fontSize: 22,
            fontWeight: FontWeight.w600,
            color: AppColors.primary,
          ),
          verticalSpace(14),

          ...points.asMap().entries.map((entry) {
            final index = entry.key;
            final text = entry.value;

            final bgColor = index.isEven
                ? AppColors.primary.withValues(alpha: 0.7)
                : AppColors.secondaryColor.withValues(alpha: 0.4);

            return Container(
              margin: const EdgeInsets.only(bottom: 10),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              decoration: BoxDecoration(
                color: bgColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(icon, size: 16, color: color),
                  horizontalSpace(10),
                  Expanded(
                    child: CustomText(
                      text: text,
                      fontSize: 13,
                      color: AppColors.white,
                    ),
                  ),
                ],
              ),
            );
          }),
        ],
      ),
    );
  }
}
