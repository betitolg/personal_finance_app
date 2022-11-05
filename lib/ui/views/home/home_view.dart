import 'package:flutter/material.dart';
import 'package:personal_finance_app/ui/components/template/custom_scaffold.dart';
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
        ],
      ),
      leading: Container(
          margin: const EdgeInsets.only(left: 30.0),
          child: const Icon(Icons.menu, color: Colors.grey)),
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
    );
  }
}
