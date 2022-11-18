import 'package:flutter/material.dart';
import 'package:personal_finance_app/ui/components/template/custom_bottom_navigation.dart';
import 'package:personal_finance_app/ui/components/template/custom_scaffold.dart';

class RecordsView extends StatelessWidget {
  const RecordsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: const Center(
          child: Text('Records', style: TextStyle(color: Colors.black))),
      body: ListView(
        children: [],
      ),
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
      bottomNavigationBar: const CustomBottomNavigation(),
    );
  }
}
