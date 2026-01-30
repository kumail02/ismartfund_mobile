import 'package:flutter/widgets.dart';
import 'package:ismartfund_mobile/theme/app_colors.dart';
import 'package:ismartfund_mobile/widgets/custom_text.dart';

class CompareSection extends StatelessWidget {
  const CompareSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CustomText(
          text: 'Compare Our Instant Funding 1-Step & 2-Step Challenges',
          fontSize: 36,
          fontWeight: FontWeight.w700,
          color: AppColors.primary,
        ),
      ],
    );
  }
}
