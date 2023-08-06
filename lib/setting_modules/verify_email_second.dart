import 'package:flutter/material.dart';
import 'package:haba/account/home_account.dart';
import 'package:haba/account/setting_account.dart';
import 'package:haba/widgets/account_bottom_bar.dart';

class SecondVerifyEmailScreen extends StatefulWidget {
  const SecondVerifyEmailScreen({Key? key}) : super(key: key);

  @override
  SecondVerifyEmailScreenState createState() => SecondVerifyEmailScreenState();
}

class SecondVerifyEmailScreenState extends State<SecondVerifyEmailScreen> {
  bool isTermsOfUseSelected = false;
  bool isDataPrivacySelected = false;
  bool isCookiesPolicySelected = false;
  bool isUserResponsibilitySelected = false;

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
                              builder: (context) => const SettingAccount(),
                            ),
                          );
                        },
                        child: const Icon(
                          Icons.arrow_back_ios_new,
                        ),
                      ),
                      const SizedBox(width: 90),
                      const Text(
                        'Settings',
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
                  width: 347,
                  height: 585,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 60),
                      const Text(
                        "Verify your email",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          fontFamily: "IBM Plex Sans",
                        ),
                      ),
                      const SizedBox(height: 30),
                      const Image(
                        image: AssetImage('assets/Vector (21).png'),
                      ),
                      const SizedBox(
                        height: 70,
                      ),
                      const Center(
                        child: Text(
                          'Click the link sent to\nbriannakamoto@gmail.com',
                          style: TextStyle(
                            fontFamily: 'IBM Plex Sans',
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomeAccount(),
                            ),
                          );
                        },
                        child: Container(
                          width: 310,
                          height: 47,
                          margin: const EdgeInsets.only(
                            top: 240,
                          ),
                          padding: const EdgeInsets.symmetric(
                            vertical: 12,
                            horizontal: 30,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: const Color.fromRGBO(253, 172, 21, 1),
                          ),
                          child: const Center(
                            child: Text(
                              'Go to Home',
                              style: TextStyle(
                                fontFamily: 'IBM Plex Sans',
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
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
            ),
          ),
        ],
      ),
      bottomNavigationBar: const AccountBottomBar(),
    );
  }
}
