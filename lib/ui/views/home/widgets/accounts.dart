import 'package:flutter/material.dart';
import 'package:personal_finance_app/models/account_model.dart';
import 'package:personal_finance_app/ui/components/theme/app_colors.dart';

class Accounts extends StatefulWidget {
  const Accounts({Key? key}) : super(key: key);

  @override
  State<Accounts> createState() => _AccountsState();
}

class _AccountsState extends State<Accounts> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30.0),
      width: double.infinity,
      height: 159.0,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: accountList.length,
          itemBuilder: (context, index) {
            final account = accountList[index];
            return Container(
              margin: EdgeInsets.only(
                left: index == 0 ? 30.0 : 0.0,
                right: 14.0,
              ),
              child: Container(
                  width: 144.0,
                  height: 159.0,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 10.0,
                        spreadRadius: 1.0,
                        offset: Offset(0.0, 5.0),
                      ),
                    ],
                  ),
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                      vertical: 20.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Container(
                              width: 45,
                              height: 45,

                              // ignore: prefer_const_constructors
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: Colors.grey, width: 1),
                              ),

                              child: const Icon(
                                Icons.attach_money,
                                color: AppColors.kStrongColor,
                              ),
                            ),
                            const Spacer(),
                            const Icon(
                              Icons.more_vert,
                              color: Colors.grey,
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          children: [
                            const Text("\$"),
                            const SizedBox(
                              width: 5.0,
                            ),
                            Text(
                              account.amount.toString(),
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          account.name.toString(),
                          style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 15.0,
                          ),
                        ),
                      ],
                    ),
                  )),
            );
          }),
    );
  }
}
