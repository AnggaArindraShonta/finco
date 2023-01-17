import 'package:financial_control/config/app_color.dart';
import 'package:financial_control/config/custom.dart';
import 'package:financial_control/data/model/constant.dart';
import 'package:financial_control/presentation/page/auth/login_page.dart';
import 'package:financial_control/presentation/page/onboarding/build_dot_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/model/onboarding.dart';

class OnboardingScreen extends StatefulWidget {
  OnboardingScreen({Key? key}) : super(key: key);

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 500,
                  child: PageView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: onboardingModel.length,
                    onPageChanged: (index) {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                    itemBuilder: (BuildContext context, int index) => Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 25, horizontal: 20),
                      child: Column(
                        children: [
                          const SizedBox(height: 100),
                          Image.asset(onboardingModel[index].imagePath),
                          const SizedBox(height: 20),
                          const SizedBox(height: 20),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 25),
                            child: Column(
                              children: [
                                Text(
                                  onboardingModel[index].title,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline2!
                                      .copyWith(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                  selectionColor: Colors.black,
                                ),
                                const SizedBox(height: 15),
                                Text(
                                  onboardingModel[index].subTitle,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline3!
                                      .copyWith(fontSize: 14),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BuildDotIndicator(position: 0, currentIndex: currentIndex),
                    BuildDotIndicator(position: 1, currentIndex: currentIndex),
                    BuildDotIndicator(position: 2, currentIndex: currentIndex),
                  ],
                ),
                SizedBox(height: 20),
                if (currentIndex == 2)
                  if (currentIndex == 2)
                    Container(
                      width: 300,
                      child: CustomElevatedButton(
                        onPressed: () => Get.off(() => LoginPage()),
                        color: k_blue,
                        label: 'Get Started',
                      ),
                    ),
              ],
            ),
          );
        },
      ),
    );
  }
}
