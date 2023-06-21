import 'package:act/features/onboarding/widgets/developer_section.dart';
import 'package:act/features/onboarding/widgets/feature_section.dart';
import 'package:act/features/onboarding/widgets/footer_section.dart';
import 'package:act/features/onboarding/widgets/mockup_section.dart';
import 'package:act/features/onboarding/widgets/top_bar.dart';
import 'package:act/features/onboarding/widgets/welcome_section.dart';
import 'package:flutter/material.dart';

class OnboardingDesktop extends StatefulWidget {
  const OnboardingDesktop({super.key});

  @override
  State<OnboardingDesktop> createState() => _OnboardingDesktopState();
}

class _OnboardingDesktopState extends State<OnboardingDesktop> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: TopBar(
        burgerMenuEnabled: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            WelcomeSection(),
            FeatureSection(),
            MockupSection(),
            DeveloperSection(),
            FooterSection()
          ],
        ),
      ),
    );
  }
}
