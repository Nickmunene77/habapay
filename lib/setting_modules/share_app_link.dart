import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:haba/account/setting_account.dart';
import 'package:haba/setting_modules/link_copied_splash.dart';
import 'package:haba/widgets/account_bottom_bar.dart';
import 'package:share/share.dart';

class ShareLinkScreen extends StatefulWidget {
  const ShareLinkScreen({Key? key}) : super(key: key);

  @override
  ShareLinkScreenState createState() => ShareLinkScreenState();
}

class ShareLinkScreenState extends State<ShareLinkScreen> {
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
                          "Share this app",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              fontFamily: "IBM Plex Sans"),
                        ),
                        const SizedBox(height: 80),
                        const Center(
                          child: Text(
                            "HabaPay",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontFamily: "IBM Plex Sans",
                              color: Colors.amber,
                              fontSize: 22,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 288,
                          height: 154,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 16),
                                child: Text(
                                  'Download link',
                                  style: TextStyle(
                                    fontFamily: 'IBM Plex Sans',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Clipboard.setData(const ClipboardData(
                                          text: 'https://bit.ly/Hapay'));
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const LinkCopiedSplash(),
                                        ),
                                      );
                                    },
                                    child: Container(
                                      width: 180,
                                      height: 47,
                                      decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                            22, 253, 172, 21),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: const Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding: EdgeInsets.only(left: 10),
                                          child: Text(
                                            'https://bit.ly/Hapay',
                                            style: TextStyle(
                                              color: Colors.amber,
                                              fontFamily: 'IBM Plex Sans',
                                              fontSize: 18,
                                              fontWeight: FontWeight.w400,
                                              height: 23 / 18,
                                              letterSpacing: 0,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Clipboard.setData(const ClipboardData(
                                          text: 'https://bit.ly/Hapay'));
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const LinkCopiedSplash(),
                                        ),
                                      );
                                    },
                                    child: Container(
                                      width: 80,
                                      height: 47,
                                      decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                            22, 253, 172, 21),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: const Image(
                                        image: AssetImage(
                                            'assets/Group 40 (1).png'),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 160),
                        GestureDetector(
                          onTap: () {
                            const String text = 'https://bit.ly/Hapay';
                            Share.share(text);
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
                                'Share',
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
