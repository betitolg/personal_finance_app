import 'package:flutter/material.dart';
import 'package:personal_finance_app/ui/components/template/custom_scaffold.dart';
import 'package:personal_finance_app/ui/components/theme/app_colors.dart';
import 'package:personal_finance_app/ui/views/home/widgets/accounts.dart';
import 'package:personal_finance_app/ui/views/home/widgets/accounts_header.dart';
import 'package:personal_finance_app/ui/views/home/widgets/activity_card.dart';
import 'package:personal_finance_app/ui/views/home/widgets/header_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: const Center(
          child: Text('My Wallet', style: TextStyle(color: Colors.black))),
      body: ListView(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const SizedBox(height: 20.0),
          const HeaderCard(),
          const SizedBox(height: 20.0),
          const AccountsHeader(),
          const SizedBox(height: 20.0),
          const Accounts(),
          const SizedBox(height: 20.0),
          const ActivityCard()
        ],
      ),
      leading: Container(
          margin: const EdgeInsets.only(left: 30.0),
          child: const Icon(Icons.sort, color: Colors.grey)),
      // ignore: prefer_const_literals_to_create_immutables
      actions: [
        const Icon(Icons.notifications, color: Colors.grey),
        const SizedBox(width: 10),
        Container(
          margin: const EdgeInsets.only(right: 30.0),
          child: Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Icon(Icons.search, color: Colors.grey),
            ],
          ),
        ),
      ],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        elevation: 0,
        backgroundColor: Colors.white,
        showSelectedLabels: false,
        items: [
          const BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.wallet,
                color: AppColors.kStrongColor,
                size: 30,
              ),
              icon: Icon(
                Icons.wallet,
                color: Colors.grey,
                size: 30,
              ),
              label: ''),
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.receipt_long,
                color: Colors.grey,
                size: 30,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Container(
                width: 60,
                height: 60,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [
                      AppColors.kButtonColor,
                      AppColors.kStrongColor,
                    ],
                  ),
                ),
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 40,
                ),
              ),
              label: ''),
          const BottomNavigationBarItem(
              icon: Icon(Icons.checklist, color: Colors.grey, size: 30.0),
              label: ''),
          const BottomNavigationBarItem(
              icon: Icon(Icons.credit_card, color: Colors.grey, size: 30.0),
              label: ''),
        ],
      ),
    );
  }
}
