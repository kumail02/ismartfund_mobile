import 'package:flutter/cupertino.dart';
import 'package:ismartfund_mobile/constants/app_images.dart';
import 'package:ismartfund_mobile/modules/home/heper/data.dart';
import 'package:ismartfund_mobile/modules/home/widgets/inverted_traingle.dart';
import 'package:ismartfund_mobile/theme/app_colors.dart';
import 'package:ismartfund_mobile/widgets/custom_asset_image.dart';
import 'package:ismartfund_mobile/widgets/custom_button.dart';
import 'package:ismartfund_mobile/widgets/custom_sizedbox.dart';
import 'package:ismartfund_mobile/widgets/custom_text.dart';

class StartChallenge extends StatelessWidget {
  const StartChallenge({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipPath(
          clipper: InvertedTriangleClipper(),
          child: Container(
            height: 60,
            width: double.infinity,
            color: const Color(0xFF0A67A3), // Blue color from screenshot
          ),
        ),
        verticalSpace(50),
        CustomAssetsImage(
          imagePath: 'assets/images/start_challege.webp',
          height: 300,
          width: 300,
          fit: BoxFit.cover,
        ),
        verticalSpace(30),
        CustomText(
          textAlign: TextAlign.center,
          text:
              'Become a Funded Trader Today. Turn Your Skills Into Real Funds.',
          fontSize: 26,
          color: AppColors.primary,
        ),
        verticalSpace(20),
        CustomText(
          textAlign: TextAlign.center,
          text:
              'Show your trading ability in our prop trading challenges. Manage risk in pips and measure your results in percentages. No time limits or monthly fees,  just clear rules and real payouts.',
          fontSize: 18,
          color: AppColors.secondaryColor,
          fontWeight: FontWeight.w400,
        ),
        verticalSpace(20),
        CustomText(
          textAlign: TextAlign.center,
          text:
              'Trade your way – day trading, hedging, scalping, and swing trading all allowed on MetaTrader 5, cTrader, DxTrade, and Match Trader. Pass the challenge or skip the challenge completely and join our trading team.',
          fontSize: 18,
          color: AppColors.secondaryColor,
          fontWeight: FontWeight.w400,
        ),
        verticalSpace(20),
        GlowButton(
          text: 'Start Your Challenge',
          onTap: () {},
          backgroundColor: AppColors.secondaryColor,
          borderColor: AppColors.secondaryColor,
          textColor: AppColors.white,
          shadowColor: AppColors.secondaryColor,
        ),
        verticalSpace(20),
        CustomAssetsImage(
          imagePath: 'assets/images/start_challenge_2.webp',
          height: 400,
          width: 400,
          fit: BoxFit.cover,
        ),
        verticalSpace(20),
        CustomText(
          textAlign: TextAlign.center,
          text: 'The Funded Trading Plus Advantage',
          fontSize: 26,
          color: AppColors.primary,
        ),
        verticalSpace(10),
        CustomText(
          textAlign: TextAlign.center,
          text:
              'At Funded Trading Plus, we’re not another prop trading firm. We’re traders building a fairer way to get funded. Our 1-Step, 2-Step, and Instant Funding Challenges are built around real trader feedback to make funding achievable, transparent, and fast.',
          fontSize: 18,
          color: AppColors.secondaryColor,
          fontWeight: FontWeight.w400,
        ),
        verticalSpace(10),
        ...advantages.map(
          (e) => Padding(
            padding: EdgeInsetsGeometry.only(bottom: 20),
            child: Row(
              children: [
                CustomAssetsImage(
                  imagePath: AppImages.checkMark,
                  height: 25,
                  width: 25,
                  fit: BoxFit.cover,
                ),
                horizontalSpace(10),
                Expanded(
                  child: CustomText(
                    text: e,
                    fontSize: 14,
                    color: AppColors.primary,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ),
        verticalSpace(20),
        GlowButton(
          width: double.infinity,
          text: 'Explore Our Challenges Now',
          onTap: () {},
          backgroundColor: AppColors.secondaryColor,
          borderColor: AppColors.secondaryColor,
          textColor: AppColors.white,
          shadowColor: AppColors.secondaryColor,
        ),
      ],
    );
  }
}
