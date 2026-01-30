import 'package:flutter/widgets.dart';
import 'package:ismartfund_mobile/modules/home/models/awards_model.dart';
import 'package:ismartfund_mobile/modules/home/models/fund_trading_model.dart';
import 'package:ismartfund_mobile/modules/home/models/review_model.dart';
import 'package:ismartfund_mobile/modules/home/models/slider_model.dart';
import 'package:ismartfund_mobile/modules/home/models/social_media.dart';

final List<String> header = [
  'Trade simulated funds',
  'Choose from: Instant Funding, 1-Step & 2-Step Challenges',
  'Providing Prop Trading Challenges since 2021',
];

final List<SliderModel> sliderList = [
  SliderModel(
    image: 'assets/images/step_1.webp',
    tag: 'Most Popular',
    title: 'EXPERT CHALLENGE',
    description: [
      'Fast-track your funded account with our most popular prop firm challenge',
      'Earn up to 100% payout split and get funded fast',
      'Withdraw simulated profits from day one',
      '6% max | 4% daily trailing simulated loss',
      '10% simulated profit target',
    ],
    price: '143',
    step: '1-Step',
  ),
  SliderModel(
    image: 'assets/images/new.webp',
    title: 'PRESTIGE PRO CHALLENGE',
    description: [
      'Our best static drawdown 2-Step challenge',
      'Payouts: 65% every 7 days | 80% every 14 days',
      'Choose your payout cycle',
      'Step 1: 10% target | Step 2: 5% target',
      '10% max | 5% daily simulated loss limits',
    ],
    price: '167',
    step: '2-Step',
    tag: 'New',
  ),
  SliderModel(
    tag: 'Great rice',
    image: 'assets/images/great.webp',
    title: 'PRESTIGE LITE CHALLENGE',
    description: [
      'Lowest-cost 2-Step trading challenge with static drawdown',
      'Enjoy an 80% payout split',
      'Withdraw simulated profits every 7 days',
      '6% max | 3% daily static simulated loss limits',
      '6% & 6% simulated profit targets',
    ],
    price: '155',

    step: '2-Step',
  ),
  SliderModel(
    image: 'assets/images/premium.webp',
    title: 'ADVANCED CHALLENGE',

    description: [
      'A balanced 2-Step prop firm challenge to help you get funded fast',
      'Keep up to 100% payout split and get paid from day one',
      '10% max | 5% daily trailing simulated loss',
      '10% & 5% simulated profit targets',
    ],
    price: '299',
    step: '2-Step',
  ),
  SliderModel(
    image: 'assets/images/premium_challeneg.webp',
    title: 'PREMIUM CHALLENGE',
    description: [
      'Lower profit targets to get funded faster in this 2-Step prop firm challenge',
      'Earn up to 100% payout split and receive weekly payouts',
      '8% max | 4% daily trailing simulated loss',
      '8% & 5% simulated profit targets',
    ],
    price: '296',
    step: '2-Step',
  ),
  SliderModel(
    image: 'assets/images/instant_funding.webp',
    title: 'MASTER',
    description: [
      'Skip the challenge and get instant funding',
      'Up to 100% payout split. Withdrawals from day onet',
      '6% max | 6% daily trailing simulated loss',
      'No profit targets, no time limits, just access to instant funding',
    ],
    price: '270',
    step: 'Instant Funding',
  ),
];

final List<FundedTradingRow> fundedTradingData = [
  FundedTradingRow(
    label: 'Maximum Simulated Trading Days',
    step1: 'Unlimited ∞',
    step2: 'Unlimited ∞',
    fundedRules: 'Unlimited ∞',
    description:
        'There is no time limit to complete any challenge or funded phase. '
        'However, at least one simulated trade must be placed every 30 calendar days '
        'to keep the account active.',
  ),

  FundedTradingRow(
    label: 'Simulated Profit Target',
    step1: '10%\n\$10,000',
    step2: '5%\n\$5,000',
    fundedRules: 'X',
    description:
        'The simulated profit target is the amount required to pass each evaluation step. '
        'Once the target is reached without violating risk rules, the account advances '
        'to the next phase or becomes funded.',
  ),

  FundedTradingRow(
    label: 'Drawdown Type',
    step1: 'Static',
    step2: 'Static',
    fundedRules: 'Static',
    description:
        'Static drawdown means the maximum loss limit is fixed based on the initial '
        'account balance and does not trail or increase as profits grow.',
  ),

  FundedTradingRow(
    label: 'Minimum Profitable Days',
    step1: '3 Days\n0.5% Per Day',
    step2: '3 Days\n0.5% Per Day',
    fundedRules: '3 Days\n0.5% Per Day',
    description:
        'Traders must achieve profits on at least 3 separate trading days, '
        'with a minimum of 0.5% account growth per day, to ensure consistent performance.',
  ),

  FundedTradingRow(
    label: 'Maximum Simulated Leverage',
    step1: '30:1',
    step2: '30:1',
    fundedRules: '30:1',
    description:
        'Leverage determines the maximum position size available. '
        'A 30:1 leverage allows traders to control larger positions '
        'while still adhering to strict risk management rules.',
  ),
];

final List<String> fundtradingPoints = [
  'No Time Limits',
  'Expert Advisor Allowed',
  'Up to 30:1 Max Leverage',
];

final List<String> promisesToDeliverList = [
  'Competitive Challenge Pricing',
  'Trusted Payout Assurance',
  'Fair & Transparent Rules',
  'Swift & Seamless User Journey',
  'Always Available 24/7 Support',
];

final List<AwardsModel> awards = [
  AwardsModel(
    title:
        'The Most Trusted Trading Firm UK 2025 – The International Business Magazine',
    image: 'assets/images/award_1.webp',
  ),
  AwardsModel(
    title:
        'Best Proprietary Trading Firm of the Year UK 2025 – World Business Outlook',
    image: 'assets/images/award_2.webp',
  ),
];

final List<ReviewModel> reviews = [
  ReviewModel(
    name: 'Sebastian Castro',
    date: '24 September',
    title: 'Great service',
  ),
  ReviewModel(
    name: 'Robert Wanjohi',
    date: '18 September',
    title: 'I love how FT+ works',
  ),
  ReviewModel(
    name: 'Sebastian Castro',
    date: '24 September',
    title: 'Great service',
  ),
  ReviewModel(
    name: 'Robert Wanjohi',
    date: '18 September',
    title: 'I love how FT+ works',
  ),
  ReviewModel(
    name: 'Sebastian Castro',
    date: '24 September',
    title: 'Great service',
  ),
  ReviewModel(
    name: 'Robert Wanjohi',
    date: '18 September',
    title: 'I love how FT+ works',
  ),
];

final List<String> advantages = [
  'Real Traders, Real Experience – founded by professional traders and educators since 2013',
  'Built Around Traders – challenges designed from research into what traders actually want',
  'Industry Leading Scaling Plan – scale funded accounts up to \$2.5 million in simulated capital with clear rules and no hidden rules',
  'Quality-Focused – we partner with skilled traders who understand risk and candlestick structure',
  '24/7 Trader Support – live chat, FAQs, and guidance from real people who know the markets',
];

final List<String> features = [
  '#1 Rated Prop Trading Firm – choose a firm you can trust, read our 5 star reviews',
  'Instant Funding, 1-Step & 2-Step Challenges – choose the route that fits your trading style',
  'Fair & Transparent Rules – trade news, hold weekends, hedge, and scalp freely',
  'Scale to \$2.5M – withdraw payouts weekly with no reset penalties',
  'No Monthly Fees, Ever – pay once per challenge',
];

final List<String> featuresOthers = [
  'Poor ratings, hidden fees, and inconsistent payouts',
  'One-size-fits-all challenges with restrictive rules',
  'Unfair restrictions designed to make traders fail',
  'Slow scaling, limited payouts, and monthly delays',
  'Recurring fees even after failed evaluations',
];

final List<SocialMedia> socialMedia = [
  SocialMedia(icon: 'assets/images/facebook_icon.webp', onPress: () {}),
  SocialMedia(icon: 'assets/images/x_icon.webp', onPress: () {}),
  SocialMedia(icon: 'assets/images/youtube_icon.webp', onPress: () {}),
  SocialMedia(icon: 'assets/images/instagram_icon.webp', onPress: () {}),
  SocialMedia(icon: 'assets/images/discord_icon.webp', onPress: () {}),
];
