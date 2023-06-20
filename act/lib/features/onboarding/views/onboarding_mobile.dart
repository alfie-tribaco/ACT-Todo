import 'package:act/features/onboarding/widgets/top_bar.dart';
import 'package:flutter/material.dart';

class OnboardingMobile extends StatefulWidget {
  const OnboardingMobile({super.key});

  @override
  State<OnboardingMobile> createState() => _OnboardingMobileState();
}

class _OnboardingMobileState extends State<OnboardingMobile> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: TopBar(
        burgerMenuEnabled: true,
      ),
      body: Placeholder(),
    );
  }
}
