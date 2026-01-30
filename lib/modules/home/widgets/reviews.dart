import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ismartfund_mobile/modules/home/heper/data.dart';
import 'package:ismartfund_mobile/modules/home/widgets/inverted_traingle.dart';
import 'package:ismartfund_mobile/theme/app_colors.dart';
import 'package:ismartfund_mobile/widgets/custom_asset_image.dart';
import 'package:ismartfund_mobile/widgets/custom_button.dart';
import 'package:ismartfund_mobile/widgets/custom_sizedbox.dart';
import 'package:ismartfund_mobile/widgets/custom_text.dart';

class Reviews extends StatelessWidget {
  const Reviews({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildDivider(),
        //  verticalSpace(20),
        CustomText(
          textAlign: TextAlign.center,
          text: 'What Our Client Say About Us',
          fontSize: 32,
          color: AppColors.primary,
          fontWeight: FontWeight.w700,
        ),
        ReviewsSection(),
        verticalSpace(20),
        GlowButton(
          text: 'View All Reviews',
          onTap: () {},
          backgroundColor: AppColors.dark,
          borderColor: AppColors.secondaryColor,
          textColor: AppColors.white,
          shadowColor: AppColors.secondaryColor,
        ),

        
      ],
    );
  }

  Widget _buildDivider() {
    return Stack(
      alignment: Alignment.center,
      children: [
        Divider(color: AppColors.primary, thickness: 3),
        CustomAssetsImage(
          imagePath: 'assets/images/client_icon.png',
          height: 100,
          width: 100,
        ),
      ],
    );
  }
}

class ReviewsSection extends StatelessWidget {
  const ReviewsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        /// ⭐ TOP STARS
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            5,
            (index) => Container(
              margin: const EdgeInsets.symmetric(horizontal: 2),
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(2),
              ),
              child: const Icon(
                CupertinoIcons.star_fill,
                size: 14,
                color: Colors.white,
              ),
            ),
          ),
        ),
        verticalSpace(20),
        CustomText(
          textAlign: TextAlign.center,
          text: 'Showing our favourite reviews',
          fontSize: 16,
          color: AppColors.secondaryColor,
          fontWeight: FontWeight.w400,
        ),

        verticalSpace(20),

        /// REVIEWS LIST
        SizedBox(
          height: 500,
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: reviews.map((review) {
                return Container(
                  margin: const EdgeInsets.only(bottom: 16),
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: AppColors.grey,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        blurRadius: 10,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      /// Stars + Verified
                      Row(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(
                              5,
                              (index) => Container(
                                margin: const EdgeInsets.symmetric(
                                  horizontal: 2,
                                ),
                                padding: const EdgeInsets.all(6),
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(2),
                                ),
                                child: const Icon(
                                  CupertinoIcons.star_fill,
                                  size: 14,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 8),
                          const Icon(
                            CupertinoIcons.star_fill,
                            size: 16,
                            color: AppColors.secondaryColor,
                          ),
                          const SizedBox(width: 4),
                          const CustomText(
                            text: 'Verified',
                            fontSize: 13,
                            color: AppColors.secondaryColor,
                          ),
                        ],
                      ),

                      verticalSpace(10),
                      CustomText(
                        text: '${review.name}, ${review.date}',
                        fontSize: 13,
                        color: AppColors.textGray,
                      ),

                      verticalSpace(6),
                      CustomText(
                        text: review.title,
                        fontSize: 16,
                        color: AppColors.primary,
                        fontWeight: FontWeight.w600,
                      ),

                      verticalSpace(10),
                      Center(
                        child: GestureDetector(
                          onTap: () {},
                          child: const CustomText(
                            text: 'Read more',
                            fontSize: 14,
                            color: AppColors.secondaryColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
          ),
        ),
      ],
    );
  }
}
