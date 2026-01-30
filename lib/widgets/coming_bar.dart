import 'package:flutter/material.dart';
import 'package:ismartfund_mobile/widgets/custom_asset_image.dart';
import '../theme/app_colors.dart';
import 'custom_text.dart';

class ComingUpBar extends StatelessWidget {
  const ComingUpBar({super.key});

  @override
  Widget build(BuildContext context) {
    return _boxed(
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          /// LEFT CONTENT
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                CustomText(
                  text: 'Coming Up',
                  fontSize: 14,
                  color: AppColors.dark,
                  fontWeight: FontWeight.w500,
                ),
                CustomText(
                  text: 'February 2026 Challenge',
                  fontSize: 14,
                  color: AppColors.dark,
                  fontWeight: FontWeight.w700,
                ),
                CustomText(
                  text: 'Join the competition. Start Trading.',
                  fontSize: 14,
                  color: AppColors.dark,
                  fontWeight: FontWeight.w400,
                ),
              ],
            ),
          ),

          /// RIGHT ACTION
          GestureDetector(
            onTap: () {
              // TODO: Navigate / Register action
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: AppColors.primary),
              ),
              child: Row(
                children: [
                  const CustomAssetsImage(
                    imagePath: 'assets/icons/pick challenge icon.svg',
                    width: 60,
                    height: 60,
                    color: AppColors.primary,
                  ),
                  const SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      CustomText(
                        text: 'Register now',
                        fontSize: 16,
                        color: AppColors.primary,
                        fontWeight: FontWeight.w700,
                      ),
                      CustomText(
                        text: '11days 23:10:34s left',
                        fontSize: 12,
                        color: AppColors.primary,
                        fontWeight: FontWeight.w500,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  static Widget _boxed(Widget child) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.white,
        border: Border.all(color: AppColors.primary),
        borderRadius: BorderRadius.circular(20),
      ),
      child: child,
    );
  }
}
