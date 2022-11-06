import 'package:flutter/material.dart';

class AccountsHeader extends StatelessWidget {
  const AccountsHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Row(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const Text("Accounts",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold)),
          const Spacer(),
          const Icon(
            Icons.arrow_forward,
            color: Colors.grey,
            size: 34.0,
          ),
        ],
      ),
    );
  }
}
