import 'package:flutter/material.dart';
import 'package:personal_finance_app/ui/components/template/custom_bottom_navigation.dart';
import 'package:personal_finance_app/ui/views/records/widgets/custom_tab_controller.dart';

class RecordsView extends StatelessWidget {
  const RecordsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Records',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        actions: [
          Container(
            padding: const EdgeInsets.only(right: 30.0),
            // ignore: prefer_const_literals_to_create_immutables
            child: const Icon(Icons.notifications, color: Colors.grey),
          ),
        ],
        leading: Container(
          margin: const EdgeInsets.only(left: 30.0),
          child: const Icon(Icons.sort, color: Colors.grey),
        ),
      ),
      body: const CustomTabController(),
      bottomNavigationBar: const CustomBottomNavigation(),
    );
  }
}
