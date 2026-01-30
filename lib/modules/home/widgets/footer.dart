import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ismartfund_mobile/modules/home/heper/data.dart';
import 'package:ismartfund_mobile/theme/app_colors.dart';
import 'package:ismartfund_mobile/widgets/custom_asset_image.dart';
import 'package:ismartfund_mobile/widgets/custom_button.dart';
import 'package:ismartfund_mobile/widgets/custom_sizedbox.dart';
import 'package:ismartfund_mobile/widgets/custom_text.dart';
import 'package:ismartfund_mobile/widgets/custom_textfield.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColors.white,
      ),

      child: Column(
        children: [
          CustomAssetsImage(
            imagePath: 'assets/images/ismart-logos-tranparent-web-04.png',
            height: 100,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          verticalSpace(20),
          CustomText(
            text: 'Our Address',
            fontSize: 16,
            color: AppColors.primary,
            fontWeight: FontWeight.w700,
          ),
          CustomText(
            textAlign: TextAlign.center,
            text:
                'Funded Trading Plus Ltd,\n2.17 Telegraph House\n80 Cleethorpe Road\nGrimsby\nDN31 3EF',
            fontSize: 14,
            color: AppColors.primary,
            fontWeight: FontWeight.w400,
          ),
          verticalSpace(30),
          CustomText(
            text: 'Contact Us',
            fontSize: 16,
            color: AppColors.primary,
            fontWeight: FontWeight.w700,
          ),
          CustomText(
            textAlign: TextAlign.center,
            text: '+44 333 090 9800',
            fontSize: 14,
            color: AppColors.primary,
            fontWeight: FontWeight.w400,
          ),
          verticalSpace(10),
          CustomText(
            textAlign: TextAlign.center,
            text:
                'All information on this site is purely for educational purposes and may not be accurate. Therefore, it should not be used to influence decisions in any financial market.',
            fontSize: 12,
            color: AppColors.primary,
            fontWeight: FontWeight.w400,
          ),
          verticalSpace(30),
          CustomText(
            text: 'Join Our Mailing Lists',
            fontSize: 16,
            color: AppColors.primary,
            fontWeight: FontWeight.w700,
          ),
          verticalSpace(10),
          CustomText(
            textAlign: TextAlign.center,
            text:
                'Never miss out on our amazing offers. Join our mailing list today.',
            fontSize: 14,
            color: AppColors.primary,
            fontWeight: FontWeight.w400,
          ),
          verticalSpace(10),
          CustomTextField(
            controller: TextEditingController(text: 'Enter your name'),
            hintText: "Enter your name",
          ),
          verticalSpace(20),
          GlowButton(
            width: double.infinity,
            text: 'Subscribe',
            onTap: () {},
            backgroundColor: AppColors.secondaryColor,
            borderColor: AppColors.secondaryColor,
            textColor: AppColors.white,
            shadowColor: Colors.transparent,
          ),
          verticalSpace(30),
          Row(
            children: [
              ...socialMedia.map(
                (e) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: CustomAssetsImage(
                    imagePath: e.icon,
                    height: 50,
                    width: 50,
                  ),
                ),
              ),
            ],
          ),
          verticalSpace(20),
          CustomText(
            text: 'Company Registration',
            fontSize: 16,
            color: AppColors.primary,
            fontWeight: FontWeight.w700,
          ),
          verticalSpace(20),
          CustomText(
            textAlign: TextAlign.center,
            text:
                'Funded Trading Plus is a brand name of Funded Trading Plus Ltd,  Company Number: 2025-00109, which is an International Business Company (IBC), registered in the jurisdiction of Saint Lucia.Registered address: Ground Floor, The Sotheby Building, Rodney Bay, Gros-Islet, Saint Lucia.International Office: 2.17 Telegraph House, 80 Cleethorpe Road, Grimsby, DN31 3EF.Web Domain: This website is operated by Funded Trading Plus Ltd, © 2026.',
            fontSize: 14,
            color: AppColors.primary,
            fontWeight: FontWeight.w400,
          ),
          verticalSpace(20),
          CustomText(
            text: 'Risk Warning',
            fontSize: 16,
            color: AppColors.primary,
            fontWeight: FontWeight.w700,
          ),
          verticalSpace(20),
          CustomText(
            textAlign: TextAlign.center,
            text:
                'All information provided on this site is intended solely for educational purposes related to trading on financial markets and does not serve in any way as a specific investment recommendation, business recommendation, investment opportunity analysis or similar general recommendation regarding the trading of investment instruments. Funded Trading Plus Ltd provides services of simulated trading and educational tools for traders. Whilst no real CFDs are traded by any customers whatsoever, Funded Trading Plus’s simulated live environment is provided through a technical solution for platforms and data feeds, powered by liquidity providers. Whilst simulated, any CFDs are complex instruments and come with a high risk of losing money (including simulated balance) rapidly due to leverage. You should consider whether you understand how CFDs work and whether you can afford to take the high risk of losing your money.',
            fontSize: 14,
            color: AppColors.primary,
            fontWeight: FontWeight.w400,
          ),
          verticalSpace(20),
          CustomText(
            text: 'Geographic Exclusions',
            fontSize: 16,
            color: AppColors.primary,
            fontWeight: FontWeight.w700,
          ),
          verticalSpace(20),
          CustomText(
            textAlign: TextAlign.center,
            text:
                'The information on this site is not directed at residents in any country or jurisdiction where such distribution or use would be contrary to local laws or regulations. It is important that you understand your local landscape when considering whether Funded Trading Plus Ltd’s services are correct for your country, as incompatible jurisdictions will result in non-progression of accounts should any circumvention of Funded Trading Plus Ltd’s geographic restrictions be encountered. For the avoidance of all doubt, MetaQuotes’ licensed software, namely MetaTrader5™ is unavailable via Funded Trading Plus Ltd in the United States of America.',
            fontSize: 14,
            color: AppColors.primary,
            fontWeight: FontWeight.w400,
          ),
          verticalSpace(20),
          CustomText(
            text: 'Sanctions, AML & CFT',
            fontSize: 16,
            color: AppColors.primary,
            fontWeight: FontWeight.w700,
          ),
          verticalSpace(20),
          CustomText(
            textAlign: TextAlign.center,
            text:
                'Funded Trading Plus Ltd operates in accordance with the international sanctions regime for its region; Funded Trading Plus Ltd’s Anti-Money Laundering (AML) and Counter Financing of Terrorism (CFT) controls; along with its individual assessments of jurisdictions which are unsupported. This list includes: North Korea, Myanmar, Cuba, Syria, Islamic Republic of Iran, Pakistan and Vietnam. ',
            fontSize: 14,
            color: AppColors.primary,
            fontWeight: FontWeight.w400,
          ),

          //   verticalSpace(10),
        ],
      ),
    );
  }
}
