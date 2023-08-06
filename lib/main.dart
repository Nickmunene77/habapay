import 'package:flutter/material.dart';
import 'package:haba/account/home_account.dart';
import 'package:haba/account/setting_account.dart';
import 'package:haba/account/statement_account.dart';
import 'package:haba/screens/login_page.dart';
import 'package:haba/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashScreen(),
        '/login': (context) => const LoginPage(),
        '/home_account': (context) => const HomeAccount(),
        '/statement_account': (context) => const StatementAccount(),
        '/setting_account': (context) => const SettingAccount(),
      },
      initialRoute: '/',
    );
  }
}
