import 'package:flutter/material.dart';
import 'package:personal_finance_app/ui/views/home/widgets/header_card_content.dart';

class HeaderCard extends StatelessWidget {
  const HeaderCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30.0),
      width: double.infinity,
      height: 200.0,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10.0,
            spreadRadius: 1.0,
            offset: Offset(0.0, 5.0),
          ),
        ],
      ),
      child: const HeaderCardContent(),
    );
  }
}
