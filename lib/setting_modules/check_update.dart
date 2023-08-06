import 'package:flutter/material.dart';
import 'package:haba/account/setting_account.dart';
import 'package:haba/widgets/account_bottom_bar.dart';

class CheckUpdatesScreen extends StatefulWidget {
  const CheckUpdatesScreen({Key? key}) : super(key: key);

  @override
  CheckUpdatesScreenState createState() => CheckUpdatesScreenState();
}

class CheckUpdatesScreenState extends State<CheckUpdatesScreen> {
  bool isChecked = false;
  // Define a function to handle checkbox state change
  void toggleCheckbox(bool? value) {
    setState(() {
      isChecked = value ?? false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Colors.amber[50],
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
                          "Check for Updates",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              fontFamily: "IBM Plex Sans"),
                        ),
                        const SizedBox(height: 60),
                        Image.asset(
                          'assets/Vector (18).png',
                          height: 48,
                        ),
                        const SizedBox(height: 80),
                        const Center(
                          child: Text(
                            "We found some new features\nyou are missing out on",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontFamily: "IBM Plex Sans",
                              fontSize: 18,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(height: 160),
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
                                'Install Updates',
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
                        ),
                        Container(
                          child: Row(
                            children: [
                              Checkbox(
                                value: isChecked,
                                onChanged: toggleCheckbox,
                                tristate: false,
                                autofocus: false,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                'Automatically install updates',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'IBM Plex Sans',
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  height: 23 / 18,
                                  letterSpacing: 0,
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
