import 'package:financial_control/config/app_asset.dart';
import 'package:financial_control/config/app_color.dart';
import 'package:financial_control/config/session.dart';
import 'package:financial_control/presentation/controller/c_user.dart';
import 'package:financial_control/presentation/page/auth/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final cUser = Get.put(CUser());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 200,
              ),
              Image.asset(AppAsset.profile),
              Obx(() {
                return Text(
                  cUser.data.name ?? '',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                );
              }),
              Obx(() {
                return Text(
                  cUser.data.email ?? '',
                  style: const TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 15,
                  ),
                );
              }),
              const SizedBox(
                height: 50,
              ),
              Material(
                color: AppColor.primary,
                borderRadius: BorderRadius.circular(30),
                child: InkWell(
                  onTap: () {
                    Session.clearUser();
                    Get.off(() => const LoginPage());
                  },
                  borderRadius: BorderRadius.circular(30),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 8,
                    ),
                    child: Text(
                      'Logout',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
