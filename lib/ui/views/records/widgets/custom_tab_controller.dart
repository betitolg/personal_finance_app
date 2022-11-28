import 'package:flutter/material.dart';
import 'package:personal_finance_app/ui/components/theme/app_colors.dart';
import 'package:personal_finance_app/ui/views/records/widgets/earnings_list.dart';
import 'package:personal_finance_app/ui/views/records/widgets/expenses_list.dart';

class CustomTabController extends StatelessWidget {
  const CustomTabController({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: TabBar(
          labelColor: AppColors.kStrongColor,
          labelStyle: TextStyle(
            fontSize: 13.0,
            fontWeight: FontWeight.w600,
            wordSpacing: 0.1,
          ),
          unselectedLabelColor: Colors.grey,
          tabs: [
            Tab(
              text: "E X P E N S E S",
            ),
            Tab(
              text: "E A R N I N G S",
            ),
          ],
        ),
        body: TabBarView(
          children: [
            ExpensesList(),
            EarningsList(),
          ],
        ),
      ),
    );
  }
}
