import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

class CustomScaffold extends StatelessWidget {
  const CustomScaffold(
      {Key? key,
      this.title,
      this.body,
      this.bottomNavigationBar,
      this.leading,
      this.actions})
      : super(key: key);
  final Widget? body;
  final Widget? bottomNavigationBar;
  final Widget? leading;
  final List<Widget>? actions;
  final Widget? title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kAppBackgroundColor,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: AppColors.kAppBackgroundColor,
        leading: leading,
        actions: actions,
        title: title,
      ),
      body: body,
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
