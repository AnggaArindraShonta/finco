import 'package:financial_control/config/app_asset.dart';

class _OnboardingModel {
  final String title;
  final String subTitle;
  final String imagePath;
  _OnboardingModel({
    required this.title,
    required this.subTitle,
    required this.imagePath,
  });
}

// ignore: library_private_types_in_public_api
final List<_OnboardingModel> onboardingModel = [
  _OnboardingModel(
    title: 'Add all accounts & manage',
    subTitle:
        'You can add all accounts in one place and use it to send and request.',
    imagePath: AppAsset.boarding1,
  ),
  _OnboardingModel(
      title: 'Track your activity',
      subTitle: 'You can track your income',
      imagePath: AppAsset.boarding2),
  _OnboardingModel(
      title: 'Send & request payments',
      subTitle: 'You can send or recieve any payments from yous accounts.',
      imagePath: AppAsset.boarding3),
];
