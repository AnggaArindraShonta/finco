import 'package:diamond_bottom_bar/diamond_bottom_bar.dart';
import 'package:financial_control/presentation/page/tracker/add_history_page.dart';
import 'package:financial_control/presentation/page/tracker/auto_income.dart';
import 'package:financial_control/presentation/page/tracker/income_outcome_page.dart';
import 'package:financial_control/presentation/page/tracker/history_page.dart';
import 'package:financial_control/presentation/page/tracker/income_outcome_page.dart';
import 'package:financial_control/presentation/page/home_page.dart';
import 'package:financial_control/presentation/page/profile.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;
  late Widget _selectedWidget;

  @override
  void initState() {
    _selectedWidget = const HomePage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Finco',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: _selectedWidget,
        bottomNavigationBar: DiamondBottomNavigation(
          itemIcons: const [
            Icons.home,
            Icons.expand_circle_down_outlined,
            Icons.history,
            Icons.account_box,
          ],
          centerIcon: Icons.qr_code,
          selectedIndex: _selectedIndex,
          onItemPressed: onPressed,
        ),
      ),
    );
  }

  void onPressed(index) {
    setState(() {
      _selectedIndex = index;
      if (index == 0) {
        _selectedWidget = const HomePage();
      } else if (index == 1) {
        _selectedWidget = AddHistoryPage();
      } else if (index == 2) {
        _selectedWidget = const AutoIncome();
      } else if (index == 3) {
        _selectedWidget = const HistoryPage();
      } else if (index == 4) {
        _selectedWidget = const ProfilePage();
      }
    });
  }
}
