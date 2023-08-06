import 'dart:async';

import 'package:flutter/material.dart';

import 'package:haba/widgets/account_bottom_bar.dart';
import 'package:haba/withdraw_module/next_withdraw_splash.dart';

class WithdrawSplashScreen extends StatefulWidget {
  const WithdrawSplashScreen({Key? key}) : super(key: key);

  @override
  WithdrawSplashScreenState createState() => WithdrawSplashScreenState();
}

class WithdrawSplashScreenState extends State<WithdrawSplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 1), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => const NextWithdrawSplashScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.amber[50],
      body: Column(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  color: Colors.white,
                  height: 80,
                  padding: EdgeInsets.only(top: 40.0, left: 10.0, right: 10.0),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          // Handle back icon tap action
                        },
                        child: const Icon(
                          Icons.arrow_back_ios_new,
                        ),
                      ),
                      const SizedBox(width: 90),
                      const Text(
                        'Withdraw',
                        style: TextStyle(
                          fontFamily: 'IBM Plex Sans',
                          fontSize: 22,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                      const Spacer(),
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          const Icon(
                            Icons.notification_add_outlined,
                          ),
                          Positioned(
                            top: 5,
                            right: 0,
                            child: Container(
                              width: 10,
                              height: 10,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromRGBO(253, 172, 21, 1),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                    width: 345,
                    height: 585,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        const SizedBox(height: 60),
                        const Text(
                          "Transactions Successful",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              fontFamily: "IBM Plex Sans"),
                        ),
                        const SizedBox(height: 60),
                        Image.asset(
                          'assets/Vector (8).png',
                          height: 48,
                        ),
                        const SizedBox(height: 80),
                        const Center(
                          child: Text(
                            "Your wallet’s balance will be \n updated in 30",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontFamily: "IBM Plex Sans",
                              fontSize: 18,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(height: 200),
                        GestureDetector(
                          onTap: () {
                            /*                             Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => VerificationSuccessful(),
                              ),
                            ); */
                          },
                          child: Container(
                            width: 310,
                            height: 47,
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(253, 172, 21, 1),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Center(
                              child: Text(
                                'Return to Home',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'IBM Plex Sans',
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  height: 23 / 18,
                                  letterSpacing: 0,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ))
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: const AccountBottomBar(),
    );
  }
}
