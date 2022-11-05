import 'package:flutter/material.dart';
import 'package:personal_finance_app/ui/components/theme/app_colors.dart';

class HeaderCardContent extends StatelessWidget {
  const HeaderCardContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Text(
                    "Balance",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    "Today, 21 Feb",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15.0,
                    ),
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: AppColors.kStrongColor, width: 2),
                    borderRadius: BorderRadius.circular(6.0)),
                width: 70.0,
                height: 30.0,
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Icon(
                        Icons.add,
                        size: 20,
                        color: AppColors.kStrongColor,
                      ),
                      const Text(
                        "Add",
                        style: TextStyle(
                          color: AppColors.kStrongColor,
                          fontSize: 13.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20.0),
          Text("S/.")
        ],
      ),
    );
  }
}
