import 'package:flutter/material.dart';
import 'package:haba/screens/verification_screen.dart';

class ChooseAccount extends StatelessWidget {
  const ChooseAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[50],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 80),
            const SizedBox(
              width: 276,
              height: 39,
              child: Center(
                child: Text(
                  'Create new account',
                  style: TextStyle(
                    fontFamily: 'IBM Plex Sans',
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    height: 1.3,
                    letterSpacing: 0,
                    color: Color.fromRGBO(50, 50, 50, 1),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              width: 345,
              height: 390,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 40,
                  left: 30,
                  right: 30,
                  bottom: 0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 39,
                      child: Text(
                        'HabaPay',
                        style: TextStyle(
                          fontFamily: 'IBM Plex Sans',
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                          height: 1.3,
                          letterSpacing: 0,
                          color: Color.fromRGBO(253, 172, 21, 1),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const SizedBox(
                      height: 39,
                      child: Text(
                        'Choose an account',
                        style: TextStyle(
                          fontFamily: 'IBM Plex Sans',
                          fontSize: 30,
                          fontWeight: FontWeight.w400,
                          height: 1.3,
                          letterSpacing: 0,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const SizedBox(
                      height: 23,
                      child: Text(
                        'to continue to HabaPay',
                        style: TextStyle(
                          fontFamily: 'IBM Plex Sans',
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          height: 1.3,
                          letterSpacing: 0,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(height: 40),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 54,
                                  height: 54,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color.fromARGB(53, 161, 168, 20),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      'BN',
                                      style: TextStyle(
                                        fontFamily: 'IBM Plex Sans',
                                        fontSize: 20,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const VerificationScreen()),
                                      );
                                    },
                                    child: const SizedBox(
                                      width: double.infinity,
                                      child: Padding(
                                        padding: EdgeInsets.all(10),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Brian Nakamoto',
                                              style: TextStyle(
                                                fontFamily: 'IBM Plex Sans',
                                                fontSize: 18,
                                                fontWeight: FontWeight.w600,
                                                height: 1.3,
                                                letterSpacing: 0,
                                                color: Colors.black,
                                              ),
                                            ),
                                            Text(
                                              'briannakamoto@gmail.com',
                                              style: TextStyle(
                                                fontFamily: 'IBM Plex Sans',
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                height: 1.3,
                                                letterSpacing: 0,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Container(
                              height: 40,
                              decoration: const BoxDecoration(
                                border: Border(
                                  top: BorderSide(
                                    color: Colors.grey,
                                    width: 1.0,
                                  ),
                                  bottom: BorderSide(
                                    color: Colors.grey,
                                    width: 1.0,
                                  ),
                                ),
                              ),
                              child: Row(
                                children: [
                                  const Icon(Icons.person_add_outlined),
                                  const SizedBox(
                                    width: 19,
                                  ),
                                  // ignore: avoid_unnecessary_containers
                                  Container(
                                    child: const Text(
                                      'Add another account',
                                      style: TextStyle(
                                        fontFamily: 'IBM Plex Sans',
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        height: 1.4,
                                        letterSpacing: 0,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 7),
                        const Text(
                          'To continue, Google will share your name, email\n address and profile picture with Glorify. Before using this app, review its privacy policy and terms of service',
                          style: TextStyle(
                            fontFamily: 'IBM Plex Sans',
                            fontSize: 12.5,
                            fontWeight: FontWeight.w400,
                            height: 1.1,
                            letterSpacing: 0,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Welcome to the convenience of payment.\nBy continuing, you agree with our',
              style: TextStyle(
                fontFamily: 'IBM Plex Sans',
                fontSize: 14,
                fontWeight: FontWeight.w400,
                height: 1.3,
                letterSpacing: 0,
                color: Color.fromRGBO(50, 50, 50, 1),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 5),
            const Text(
              'terms & conditions',
              style: TextStyle(
                fontFamily: 'IBM Plex Sans',
                fontSize: 14,
                fontWeight: FontWeight.w400,
                height: 1.3,
                letterSpacing: 0,
                color: Color.fromRGBO(253, 172, 21, 1),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                // Handle button click
              },
              child: Container(
                width: 310,
                height: 47,
                padding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 30),
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(253, 172, 21, 1),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "G",
                      style: TextStyle(
                        fontFamily: 'IBM Plex Sans',
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Continue with Google',
                      style: TextStyle(
                        fontFamily: 'IBM Plex Sans',
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        height: 1.3,
                        letterSpacing: 0,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Already have an account, ',
                  style: TextStyle(
                    fontFamily: 'IBM Plex Sans',
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    height: 1.3,
                    letterSpacing: 0,
                    color: Colors.grey,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Handle sign-in click
                  },
                  child: const Text(
                    'sign in',
                    style: TextStyle(
                      fontFamily: 'IBM Plex Sans',
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      height: 1.3,
                      letterSpacing: 0,
                      color: Colors.amber,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
