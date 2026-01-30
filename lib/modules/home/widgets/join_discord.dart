import 'package:flutter/widgets.dart';
import 'package:ismartfund_mobile/theme/app_colors.dart';
import 'package:ismartfund_mobile/widgets/custom_asset_image.dart';
import 'package:ismartfund_mobile/widgets/custom_button.dart';
import 'package:ismartfund_mobile/widgets/custom_sizedbox.dart';
import 'package:ismartfund_mobile/widgets/custom_text.dart';

class JoinDiscord extends StatelessWidget {
  const JoinDiscord({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        border: Border.all(color: AppColors.primary, width: 1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Stack(
        alignment: AlignmentGeometry.topCenter,
        children: [
          Opacity(
            opacity: 0.2,
            child: CustomAssetsImage(
              imagePath: 'assets/images/chart_vector.png',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(
                  textAlign: TextAlign.center,
                  text:
                      'Join Our 50,000 Member Prop Trading Community on Discord',
                  fontSize: 22,
                  color: AppColors.primary,
                ),
                verticalSpace(10),
                CustomText(
                  text:
                      'Connect with funded traders from around the world. Share scalping, hedging, and challenge strategies, get instant updates from our team, and learn from real trader discussions every day. Our support and community moderators are online 24/7 to help you stay informed and connected.',
                  fontSize: 14,
                  color: AppColors.secondaryColor,
                  fontWeight: FontWeight.w400,
                ),
                verticalSpace(10),
                GlowButton(
                  width: double.infinity,
                  text: 'Join the Discord Community',
                  onTap: () {},
                  backgroundColor: AppColors.secondaryColor,
                  borderColor: AppColors.secondaryColor,
                  textColor: AppColors.white,
                  shadowColor: AppColors.secondaryColor,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
