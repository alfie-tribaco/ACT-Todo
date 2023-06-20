import 'package:act/app/utils/responsive/responsive.dart';
import 'package:act/features/onboarding/views/onboarding_desktop.dart';
import 'package:act/features/onboarding/views/onboarding_mobile.dart';
import 'package:act/features/onboarding/views/onboarding_tablet.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
        desktop: OnboardingDesktop(),
        mobile: OnboardingMobile(),
        tablet: OnboardingTablet());
  }
}
