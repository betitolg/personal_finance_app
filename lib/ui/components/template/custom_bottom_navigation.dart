import 'package:flutter/material.dart';
import 'package:personal_finance_app/ui/components/theme/app_colors.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
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
    );
  }
}
