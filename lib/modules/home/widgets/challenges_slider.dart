import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:ismartfund_mobile/constants/app_images.dart';
import 'package:ismartfund_mobile/modules/home/controller/home_controller.dart';
import 'package:ismartfund_mobile/modules/home/heper/data.dart';
import 'package:ismartfund_mobile/theme/app_colors.dart';
import 'package:ismartfund_mobile/widgets/custom_asset_image.dart';
import 'package:ismartfund_mobile/widgets/custom_button.dart';
import 'package:ismartfund_mobile/widgets/custom_sizedbox.dart';
import 'package:ismartfund_mobile/widgets/custom_text.dart';

class ChallengesSlider extends StatelessWidget {
  const ChallengesSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GetBuilder<HomeController>(
          builder: (controller) {
            return Column(
              children: [
                CarouselSlider.builder(
                  itemCount: sliderList.length,
                  options: CarouselOptions(
                    clipBehavior: Clip.none,
                    height: 600,
                    viewportFraction: 0.9,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlayInterval: const Duration(seconds: 3),
                    autoPlayAnimationDuration: const Duration(
                      milliseconds: 800,
                    ),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    scrollDirection: Axis.horizontal,
                    onPageChanged: (index, reason) {
                      controller.onSliderChanged(index);
                    },
                  ),
                  itemBuilder: (context, index, realIndex) {
                    final slider = sliderList[index];
                    return Stack(
                      alignment: Alignment.topCenter,
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          clipBehavior: Clip.hardEdge,
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: AppColors.primary),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomAssetsImage(
                                imagePath: slider.image,
                                width: double.infinity,
                                fit: BoxFit.cover,
                                height: 200,
                              ),
                              verticalSpace(10),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    CustomText(
                                      text: slider.step,
                                      fontSize: 18,
                                      color: AppColors.secondaryColor,
                                      fontWeight: FontWeight.w800,
                                    ),
                                    CustomText(
                                      text: slider.title,
                                      fontSize: 20,
                                      color: AppColors.primary,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    verticalSpace(10),
                                    ...slider.description.map(
                                      (text) => _buildheroSectionText(text),
                                    ),
                                    verticalSpace(20),
                                    Center(
                                      child: GlowButton(
                                        width: double.infinity,
                                        text:
                                            'Start Your Challange From \$${slider.price}',
                                        onTap: () {},
                                        backgroundColor:
                                            AppColors.secondaryColor,
                                        borderColor: AppColors.secondaryColor,
                                        textColor: AppColors.white,
                                        shadowColor: AppColors.secondaryColor,
                                      ),
                                    ),
                                    verticalSpace(10),
                                    Center(
                                      child: CustomText(
                                        text: 'Price includes VAT',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.dark,
                                      ),
                                    ),
                                    verticalSpace(5),
                                    Center(
                                      child: CustomText(
                                        text: 'LEARN MORE',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.primary,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        (slider.tag ?? '').isEmpty
                            ? const SizedBox()
                            : Positioned(
                                top: -15,
                                child: Container(
                                  alignment: Alignment.center,
                                  width: 100,
                                  clipBehavior: Clip.antiAlias,
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    color: AppColors.white,
                                    borderRadius: BorderRadius.circular(2.5),
                                    border: Border.all(
                                      color: AppColors.primary,
                                      width: 1.5,
                                    ),
                                  ),
                                  child: CustomText(
                                    text: slider.tag!,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.primary,
                                  ),
                                ),
                              ),
                      ],
                    );
                  },
                ),
              ],
            );
          },
        ),
        verticalSpace(10),
        GetBuilder<HomeController>(
          builder: (controller) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                sliderList.length,
                (index) => AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  width: controller.currentSlider == index ? 12 : 6,
                  height: 6,
                  decoration: BoxDecoration(
                    color: controller.currentSlider == index
                        ? AppColors.primary
                        : AppColors.secondaryColor.withValues(alpha: 0.3),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            );
          },
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
            fontSize: 14,
            fontWeight: FontWeight.w700,
            color: AppColors.primary,
          ),
        ),
      ],
    );
  }
}
