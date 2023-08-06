import 'package:flutter/material.dart';
import 'package:haba/account/setting_account.dart';
import 'package:haba/widgets/account_bottom_bar.dart';

class FaqScreen extends StatefulWidget {
  const FaqScreen({Key? key}) : super(key: key);

  @override
  FaqScreenState createState() => FaqScreenState();
}

class FaqScreenState extends State<FaqScreen> {
  bool isTermsOfUseSelected = false;
  bool isDataPrivacySelected = false;
  bool isCookiesPolicySelected = false;
  bool isUserResponsibilitySelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                        "Frequently Asked Questions",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          fontFamily: "IBM Plex Sans",
                        ),
                      ),
                      const SizedBox(height: 30),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isTermsOfUseSelected = !isTermsOfUseSelected;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'How do i complete my profile',
                                style: TextStyle(
                                  fontFamily: 'IBM Plex Sans',
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                ),
                              ),
                              Image.asset(
                                isTermsOfUseSelected
                                    ? 'assets/Vector (16).png'
                                    : 'assets/Vector (15).png',
                                height: 48,
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isDataPrivacySelected = !isDataPrivacySelected;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Do i have to add my business',
                                style: TextStyle(
                                  fontFamily: 'IBM Plex Sans',
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                ),
                              ),
                              Image.asset(
                                isDataPrivacySelected
                                    ? 'assets/Vector (16).png'
                                    : 'assets/Vector (15).png',
                                height: 48,
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isCookiesPolicySelected = !isCookiesPolicySelected;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'How do complete my profile',
                                style: TextStyle(
                                  fontFamily: 'IBM Plex Sans',
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                ),
                              ),
                              Image.asset(
                                isCookiesPolicySelected
                                    ? 'assets/Vector (16).png'
                                    : 'assets/Vector (15).png',
                                height: 48,
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isUserResponsibilitySelected =
                                !isUserResponsibilitySelected;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Can i download all my records',
                                style: TextStyle(
                                  fontFamily: 'IBM Plex Sans',
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                ),
                              ),
                              Image.asset(
                                isUserResponsibilitySelected
                                    ? 'assets/Vector (16).png'
                                    : 'assets/Vector (15).png',
                                height: 48,
                              ),
                            ],
                          ),
                        ),
                      ),
                      if (isTermsOfUseSelected)
                        const Expanded(
                          child: SingleChildScrollView(
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            child: Text(
                              'How to complete profile paragraph',
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'IBM Plex Sans',
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF323232),
                              ),
                            ),
                          ),
                        ),
                      if (isDataPrivacySelected)
                        const Expanded(
                          child: SingleChildScrollView(
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            child: Text(
                              "While it is not compulsory to add your business to use HabaPay, you can consider it because of its many benefits especially to businesses.",
                              style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'IBM Plex Sans',
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF323232),
                              ),
                            ),
                          ),
                        ),
                      if (isCookiesPolicySelected)
                        const Expanded(
                          child: SingleChildScrollView(
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            child: Text(
                              'How to complete profile ',
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'IBM Plex Sans',
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF323232),
                              ),
                            ),
                          ),
                        ),
                      if (isUserResponsibilitySelected)
                        const Expanded(
                          child: SingleChildScrollView(
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            child: Text(
                              'How to donload records paragraph',
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'IBM Plex Sans',
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF323232),
                              ),
                            ),
                          ),
                        ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 310,
                          height: 47,
                          margin: const EdgeInsets.only(
                            top: 170,
                            left: 12,
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
                              'Contact Support',
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
