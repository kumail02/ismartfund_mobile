import 'package:flutter/cupertino.dart';
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
import 'package:ismartfund_mobile/widgets/custom_sizedbox.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    return Padding(
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
          verticalSpace(30),
          FooterSection(),
          verticalSpace(100),
        ],
      ),
    );
  }
}
