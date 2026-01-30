import 'package:flutter/material.dart';
import 'package:ismartfund_mobile/modules/home/heper/data.dart';
import 'package:ismartfund_mobile/modules/home/widgets/fund_trading_table.dart';
import 'package:ismartfund_mobile/theme/app_colors.dart';
import 'package:ismartfund_mobile/widgets/custom_asset_image.dart';
import 'package:ismartfund_mobile/widgets/custom_button.dart';
import 'package:ismartfund_mobile/widgets/custom_sizedbox.dart';
import 'package:ismartfund_mobile/widgets/custom_text.dart';

class AvailablePlatforms extends StatelessWidget {
  const AvailablePlatforms({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(child: Divider(color: AppColors.primary, thickness: 2)),
            horizontalSpace(10),
            CustomText(
              text: 'AVAILABLE PLATFORMS',
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: AppColors.primary,
            ),
            horizontalSpace(10),
            Expanded(child: Divider(color: AppColors.primary, thickness: 2)),
          ],
        ),
        verticalSpace(20),
        _buildContainer(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomAssetsImage(
                imagePath: 'assets/images/usa_logo.png',
                height: 30,
                width: 30,
              ),
              horizontalSpace(10),
              CustomText(
                text: 'USA',
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: AppColors.white,
              ),
            ],
          ),
        ),
        verticalSpace(10),
        _buildContainer(
          child: CustomAssetsImage(
            imagePath: 'assets/images/match_trade.png',
            height: 30,
            width: 100,
          ),
        ),
        verticalSpace(10),
        _buildContainer(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomAssetsImage(
                imagePath: 'assets/images/world_icon.png',
                height: 30,
                width: 30,
              ),
              horizontalSpace(10),
              CustomText(
                text: 'Rest Of World',
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: AppColors.white,
              ),
            ],
          ),
        ),
        verticalSpace(20),
        FundedTradingTable(),
        verticalSpace(30),
        ...fundtradingPoints.map((e) => _buildPoints(text: e)),
        verticalSpace(30),
        GlowButton(
          text: 'Start Challenge \$469',
          onTap: () {},
          width: double.infinity,
          backgroundColor: AppColors.secondaryColor,
          borderColor: AppColors.primary,
          textColor: AppColors.white,
          shadowColor: Colors.transparent,
        ),
        verticalSpace(10),
        CustomText(text: '\$98 Sales Tax', fontSize: 14, color: AppColors.dark),
        verticalSpace(10),
        CustomText(text: 'Learn More', fontSize: 14, color: AppColors.primary),
        verticalSpace(30),
        CustomText(
          textAlign: TextAlign.center,
          text:
              'VAT is payable by customers from the UK and Europe only and VAT will be added at the checkout.',
          fontSize: 15,
          color: AppColors.primary,
        ),
        CustomText(
          textAlign: TextAlign.center,
          text:
              'Fees exclude your personal bank fee and any transfer fees associated with currency conversions.',
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: AppColors.primary,
        ),
      ],
    );
  }

  Widget _buildContainer({required Widget child}) {
    return Container(
      padding: const EdgeInsets.all(10),
      alignment: Alignment.center,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.primary,
        border: Border.all(color: AppColors.primary, width: 1.5),
        borderRadius: BorderRadius.circular(8),
      ),
      child: child,
    );
  }

  Widget _buildPoints({required String text}) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: AppColors.white,
        border: Border.all(color: AppColors.primary, width: 1.5),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          horizontalSpace(10),
          CustomText(
            text: text,
            fontSize: 14,
            fontWeight: FontWeight.w700,
            color: AppColors.dark,
          ),
        ],
      ),
    );
  }
}
