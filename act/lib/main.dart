import 'package:act/app/config/app_theme.dart';
import 'package:act/app/providers/app_providers.dart';
import 'package:act/app/utils/app_theme_state.dart';
import 'package:act/features/onboarding/views/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: AppProviders().appProviders,
      child: Consumer<AppThemeState>(
        builder: (context, value, child) {
          return MaterialApp(
            title: 'Flutter Demo',
            debugShowCheckedModeBanner: false,
            theme: value.isDark == true
                ? AppTheme().darkTheme
                : AppTheme().lightTheme,
            home: const OnboardingScreen(),
          );
        },
      ),
    );
  }
}
