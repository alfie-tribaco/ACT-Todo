import 'package:act/features/onboarding/widgets/top_bar.dart';
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
      body: Placeholder(),
    );
  }
}
