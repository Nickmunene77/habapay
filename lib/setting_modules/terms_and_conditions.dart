import 'package:flutter/material.dart';
import 'package:haba/account/setting_account.dart';
import 'package:haba/widgets/account_bottom_bar.dart';

class TermsAndConditionsScreen extends StatefulWidget {
  const TermsAndConditionsScreen({Key? key}) : super(key: key);

  @override
  TermsAndConditionsScreenState createState() =>
      TermsAndConditionsScreenState();
}

class TermsAndConditionsScreenState extends State<TermsAndConditionsScreen> {
  bool isMoreInfoSelected = false;
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
                        "Terms and conditions",
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
                                'Terms of use',
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
                                'Data privacy',
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
                                'Cookies policy',
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
                                'User responsibility',
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
                              'Terms of Use Paragraph',
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
                              "This Privacy Policy explains how HabaPay collects, uses, discloses, and safeguards your information when you visit our mobile application. We will not use or share your information with anyone except as described in this Privacy Policy. We use your Personal Information for providing and improving the Service. By using the Service, you agree to the collection and use of information in accordance with this policy.\n\nInformation Collection And Use\nWhile using our Service, we may ask you to provide us with certain personally identifiable information that can be used to contact or identify you. Personally identifiable information may include, but is not limited to, your name, phone number, and postal address (\"Personal Information\").\n\nLog Data\nWe collect information that your browser sends whenever you visit our Service (\"Log Data\"). This Log Data may include information such as your computer's Internet Protocol (\"IP\") address, browser type, browser version, the pages of our Service that you visit, the time and date of your visit, the time spent on those pages and other statistics.\n\nService Providers\nWe may employ third party companies and individuals to facilitate our Service, to provide the Service on our behalf, to perform Service-related services or to assist us in analyzing how our Service is used. These third parties have access to your Personal Information only to perform these tasks on our behalf and are obligated not to disclose or use it for any other purpose.\n\nSecurity\nWe value your trust in providing us your Personal Information, thus we are striving to use commercially acceptable means of protecting it. But remember that no method of transmission over the internet, or method of electronic storage is 100% secure and reliable, and we cannot guarantee its absolute security.",
                              style: TextStyle(
                                fontSize: 14,
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
                              'Cookies Policy Paragraph',
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
                              'User Responsibility Paragraph',
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'IBM Plex Sans',
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF323232),
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
