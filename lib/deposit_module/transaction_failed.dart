import 'package:flutter/material.dart';
import 'package:haba/account/home_account.dart';
import 'package:haba/deposit_module/deposit_number.dart';
import 'package:haba/widgets/account_bottom_bar.dart';

class TransactionFailedScreen extends StatelessWidget {
  const TransactionFailedScreen({Key? key}) : super(key: key);

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
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomeAccount(),
                            ),
                          );
                        },
                        child: const Icon(
                          Icons.arrow_back_ios_new,
                        ),
                      ),
                      const SizedBox(width: 70),
                      const Text(
                        'Deposit Money',
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
                          "Transaction Failed",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              fontFamily: "IBM Plex Sans"),
                        ),
                        const SizedBox(height: 60),
                        Image.asset(
                          'assets/Vector (7).png',
                          height: 48,
                        ),
                        const SizedBox(height: 80),
                        const Center(
                          child: Text(
                            "Something went wrong.\nThe deposit was not successful.",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontFamily: "IBM Plex Sans",
                              fontSize: 18,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(height: 200),
                        SizedBox(
                          width: 324,
                          height: 43,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  // Handle cancel button tap action
                                },
                                child: Container(
                                  width: 157,
                                  height: 43,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 10),
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    border: Border.all(
                                      color: Colors.amber,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      'Call Support',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.amber,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const DepositNumberScreen(),
                                    ),
                                  );
                                },
                                child: Container(
                                  width: 157,
                                  height: 43,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 30, vertical: 10),
                                  decoration: BoxDecoration(
                                    color: Colors.amber,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      'Retry',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
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
