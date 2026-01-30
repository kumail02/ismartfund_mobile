import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:ismartfund_mobile/constants/app_images.dart';
import 'package:ismartfund_mobile/modules/home/heper/data.dart';
import 'package:ismartfund_mobile/modules/home/widgets/hero_clipper.dart';
import 'package:ismartfund_mobile/theme/app_colors.dart';
import 'package:ismartfund_mobile/widgets/custom_asset_image.dart';
import 'package:ismartfund_mobile/widgets/custom_button.dart';
import 'package:ismartfund_mobile/widgets/custom_sizedbox.dart';
import 'package:ismartfund_mobile/widgets/custom_text.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: 200,
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: AppColors.white,
            border: Border.all(color: AppColors.primary, width: 1.5),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomAssetsImage(
                imagePath: 'assets/images/mt5_transparent.webp',
                height: 30,
                width: 30,
              ),
              const SizedBox(width: 10),
              CustomText(
                text: 'MT5 AVAILABLE',
                fontSize: 14,
                fontWeight: FontWeight.w800,
                color: AppColors.primary,
              ),
            ],
          ),
        ),
        SizedBox(height: 5),
        CustomText(
          text: 'The #1 Trusted Prop\nFirm in the Industry',
          fontSize: 36,
          fontWeight: FontWeight.w800,
          color: AppColors.primary,
        ),
        SizedBox(height: 10),
        ...header.map((text) => _buildheroSectionText(text)),
        verticalSpace(10),
        GlowButton(
          text: "Start Your Challenge",
          onTap: () {},
          backgroundColor: AppColors.secondaryColor,
          borderColor: AppColors.secondaryColor,
          textColor: AppColors.white,
          shadowColor: AppColors.secondaryColor,
        ),
        verticalSpace(20),
        GlowButton(
          text: "Join Our Community",
          onTap: () {},
          backgroundColor: AppColors.white,
          borderColor: AppColors.secondaryColor,
          textColor: AppColors.primary,
          shadowColor: AppColors.secondaryColor,
        ),
        verticalSpace(30),
        Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              width: double.infinity,
              clipBehavior: Clip.none,
              padding: const EdgeInsets.only(bottom: 0),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    AppColors.primary.withValues(alpha: 0.04),
                    AppColors.primary.withValues(alpha: 0.01),
                  ],
                ),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 450),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      children: [
                        SlideInUp(
                          child: CustomText(
                            textAlign: TextAlign.center,
                            text:
                                "At Funded Trading Plus, we believe you, as a potential\n"
                                "customer, should have all available information provided\n"
                                "in advance to help you in your decision making process.",
                            fontSize: 14,
                            color: AppColors.textGray,
                            fontWeight: FontWeight.w400,
                          ),
                        ),

                        verticalSpace(12),
                        CustomText(
                          text: "*VIEW DISCLAIMER",
                          fontSize: 14,
                          color: AppColors.primary,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 40,
              left: 0,
              right: 0,
              child: Center(
                child: FadeInRight(
                  child: CustomAssetsImage(
                    imagePath: 'assets/images/hero_graphic.webp',
                    width: double.infinity,
                    fit: BoxFit.cover,
                    height: 350,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: -30,
              left: 0,
              right: 0,
              child: SizedBox(
                height: 40,
                child: CustomPaint(
                  painter: BottomArrowPainter(
                    color: AppColors.secondaryColor,
                    strokeWidth: 4,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildheroSectionText(String text) {
    return Row(
      children: [
       CustomAssetsImage(
                      imagePath: AppImages.checkMark,
                      height: 25,
                      width: 25,
                    ),
        horizontalSpace(10),
        Expanded(
          child: CustomText(
            text: text,
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: AppColors.primary,
          ),
        ),
      ],
    );
  }
}
