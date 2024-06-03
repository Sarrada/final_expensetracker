import 'package:athang_expense_tracker/base/style/text_styles.dart';
import 'package:athang_expense_tracker/plugins/local_shared_preferences.dart';
import 'package:athang_expense_tracker/widgets/landing/summary_accounts.dart';
import 'package:athang_expense_tracker/widgets/landing/summary_home.dart';
import 'package:athang_expense_tracker/widgets/landing/summary_transactions.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../splash_screen.dart';

class TimerScreen extends StatefulWidget {
  @override
  State<TimerScreen> createState() => _TimerScreenState();
}

class _TimerScreenState extends State<TimerScreen> {
  Future<void> logoutUser() async {
    await setTokenToBlank();
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (_) => SplashScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Text(
                "I'm here",
                
              ),
          
        ],
      ),
    );
   }
}
