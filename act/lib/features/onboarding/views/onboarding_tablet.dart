import 'package:act/features/onboarding/widgets/top_bar.dart';
import 'package:flutter/material.dart';

class OnboardingTablet extends StatefulWidget {
  const OnboardingTablet({super.key});

  @override
  State<OnboardingTablet> createState() => _OnboardingTabletState();
}

class _OnboardingTabletState extends State<OnboardingTablet> {
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
