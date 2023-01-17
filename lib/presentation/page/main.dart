import 'package:financial_control/config/app_color.dart';
import 'package:financial_control/config/session.dart';
import 'package:financial_control/data/model/user.dart';
import 'package:financial_control/presentation/page/auth/login_page.dart';
import 'package:financial_control/presentation/page/bottomnav.dart';
import 'package:financial_control/presentation/page/home_page.dart';
import 'package:financial_control/presentation/page/onboarding/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  initializeDateFormatting('id_ID').then((value) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        primaryColor: AppColor.primary,
        colorScheme: const ColorScheme.light(
          primary: AppColor.primary,
          secondary: AppColor.secondary,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColor.primary,
          foregroundColor: Colors.white,
        ),
      ),
      home: FutureBuilder(
        future: Session.getUser(),
        builder: (context, AsyncSnapshot<User> snapshot) {
          if (snapshot.data != null && snapshot.data!.idUser != null) {
            return const BottomNav();
          }
          return OnboardingScreen();
        },
      ),
    );
  }
}
