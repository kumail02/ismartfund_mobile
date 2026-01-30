import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:ismartfund_mobile/constants/app_images.dart';
import 'package:ismartfund_mobile/modules/home/heper/data.dart';
import 'package:ismartfund_mobile/theme/app_colors.dart';
import 'package:ismartfund_mobile/widgets/custom_asset_image.dart';
import 'package:ismartfund_mobile/widgets/custom_sizedbox.dart';
import 'package:ismartfund_mobile/widgets/custom_text.dart';

class OurPromises extends StatelessWidget {
  const OurPromises({super.key});

  @override
  Widget build(BuildContext context) {
    return FadeInDown(
      child: Column(
        children: [
          Center(
            child: CustomText(
              text: 'Our 5-Star Promise',
              fontSize: 32,
              color: AppColors.primary,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...List.generate(
                5,
                (index) => const Icon(
                  CupertinoIcons.star_fill,
                  size: 20,
                  shadows: [
                    Shadow(
                      color: AppColors.textGray,
                      offset: Offset(0, 0),
                      blurRadius: 20,
                    ),
                  ],
                  color: AppColors.secondaryColor,
                ),
              ),
            ],
          ),
          verticalSpace(20),
          CustomText(
            text: 'Fair Rules, Fast Payouts, Real Support',
            fontSize: 16,
            color: AppColors.secondaryColor,
            fontWeight: FontWeight.w400,
          ),
          verticalSpace(10),
          CustomText(
            textAlign: TextAlign.center,
            text:
                'At Funded Trading Plus, a trusted prop trading firm, every trader deserves a fair chance to succeed. Our 5-Star Promise ensures you trade with clear rules, fast payouts, transparent pricing, and 24/7 trader support from real people who understand the funded trading journey.',
            fontSize: 16,
            color: AppColors.secondaryColor,
            fontWeight: FontWeight.w400,
          ),
          verticalSpace(20),
          CustomText(
            textAlign: TextAlign.center,
            text: 'We promise to deliver:',
            fontSize: 22,
            color: AppColors.primary,
            fontWeight: FontWeight.w700,
          ),
          verticalSpace(20),
          Wrap(
            alignment: WrapAlignment.center,
            spacing: 20,
            runSpacing: 20,
            children: [
              ...promisesToDeliverList.map(
                (e) => Container(
                  height: 180,
                  width: 150,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    border: Border.all(color: AppColors.primary, width: 1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomAssetsImage(
                        imagePath: AppImages.checkMark,
                        height: 30,
                        width: 30,
                      ),
                      verticalSpace(10),
                      CustomText(
                        textAlign: TextAlign.center,

                        text: e,
                        fontSize: 14,
                        color: AppColors.primary,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          verticalSpace(30),
          CustomText(
            textAlign: TextAlign.center,
            text:
                'Our 5-Star Promise isn’t just meaningless words on a page, it’s a reflection of our dedication to providing an exceptional experience.  I want our teams to deliver this for you, and I want you to hold us to these promises throughout your journey with us.',
            fontSize: 15,
            color: AppColors.secondaryColor,
            fontWeight: FontWeight.w400,
          ),
          verticalSpace(20),
          CustomText(
            textAlign: TextAlign.center,
            text:
                'At FT+, we are committed to creating an environment where you can thrive, backed by a service that is truly second to none. This promise is not just a statement; it’s a reflection of the glowing reviews and feedback we’ve consistently received from our satisfied customers on TrustPilot..',
            fontSize: 15,
            color: AppColors.secondaryColor,
            fontWeight: FontWeight.w400,
          ),
          verticalSpace(20),
          CustomText(
            textAlign: TextAlign.center,
            text:
                'We are not just a funded trading firm; we’re your partner in success',
            fontSize: 15,
            color: AppColors.secondaryColor,
            fontWeight: FontWeight.w900,
          ),
          verticalSpace(50),
          CustomText(
            textAlign: TextAlign.center,
            text: 'Awards',
            fontSize: 22,
            color: AppColors.primary,
            fontWeight: FontWeight.w700,
          ),
          verticalSpace(20),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: [
              ...awards.map(
                (e) => Container(
                  alignment: Alignment.center,
                  width: 170,
                  height: 250,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    border: Border.all(color: AppColors.primary, width: 1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      CustomAssetsImage(
                        imagePath: e.image,
                        height: 100,
                        width: 100,
                      ),
                      verticalSpace(10),
                      CustomText(
                        textAlign: TextAlign.center,
                        text: e.title,
                        fontSize: 15,
                        color: AppColors.primary,
                        fontWeight: FontWeight.w400,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
