import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ismartfund_mobile/modules/home/controller/home_controller.dart';
import 'package:ismartfund_mobile/modules/home/widgets/available_platforms.dart';
import 'package:ismartfund_mobile/modules/home/widgets/challenges_slider.dart';
import 'package:ismartfund_mobile/modules/home/widgets/compare_section.dart';
import 'package:ismartfund_mobile/modules/home/widgets/footer.dart';
import 'package:ismartfund_mobile/modules/home/widgets/hero_section.dart';
import 'package:ismartfund_mobile/modules/home/widgets/join_discord.dart';
import 'package:ismartfund_mobile/modules/home/widgets/our_promises.dart';
import 'package:ismartfund_mobile/modules/home/widgets/reviews.dart';
import 'package:ismartfund_mobile/modules/home/widgets/start_challenge.dart';
import 'package:ismartfund_mobile/modules/home/widgets/why_choose.dart';
import 'package:ismartfund_mobile/theme/app_colors.dart';
import 'package:ismartfund_mobile/widgets/custom_sizedbox.dart';
import 'package:ismartfund_mobile/widgets/custom_text.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 30.0, left: 16.0, right: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              HeroSection(),
              verticalSpace(30),
              verticalSpace(30),
              ChallengesSlider(),
              // verticalSpace(30),
              // CompareSection(),
              verticalSpace(30),
              AvailablePlatforms(),
              verticalSpace(30),
              OurPromises(),
              verticalSpace(30),
              Reviews(),
              verticalSpace(30),
              StartChallenge(),
              verticalSpace(30),
              JoinDiscord(),
              verticalSpace(30),
              WhyChooseSection(),
            ],
          ),
        ),
        verticalSpace(30),
        FooterSection(),
        Container(
          height: 50,
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(color: AppColors.primary),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.copyright_outlined, size: 15, color: AppColors.white),
              horizontalSpace(5),
              CustomText(text: '|', fontSize: 14, color: AppColors.white),
              horizontalSpace(5),
              CustomText(
                text: 'www.ismartfund.com',
                fontSize: 14,
                color: AppColors.white,
                decoration: TextDecoration.underline,
              ),
              horizontalSpace(5),
              CustomText(text: '|', fontSize: 14, color: AppColors.white),
              horizontalSpace(5),
              CustomText(
                text: 'Ismart Fund',
                fontSize: 14,
                color: AppColors.white,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
