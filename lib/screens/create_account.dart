import 'package:flutter/material.dart';
import 'package:haba/screens/login_page.dart';
import 'package:haba/screens/verification_screen.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({Key? key}) : super(key: key);

  void _showDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Material(
          color: Colors.transparent,
          child: Center(
            child: Container(
              width: 340,
              height: 372,
              padding: const EdgeInsets.only(
                  top: 40, bottom: 0, left: 15, right: 15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
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
                  const SizedBox(height: 20),
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
                                            const VerificationScreen(),
                                      ),
                                    );
                                  },
                                  child: SizedBox(
                                    width: double.infinity,
                                    child: Padding(
                                      padding: const EdgeInsets.all(10),
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
                        'To continue, Google will share your name, email\naddress and profile picture with Glorify. Before using this app, review its privacy policy and terms of service',
                        style: TextStyle(
                          fontFamily: 'IBM Plex Sans',
                          fontSize: 13.5,
                          fontWeight: FontWeight.w400,
                          height: 1.3,
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
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 85),
            Container(
              width: 276,
              height: 39,
              margin: const EdgeInsets.only(top: 20),
              child: const Center(
                child: Text(
                  'Sign in to account',
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
            const SizedBox(height: 20),
            const Image(
              image: NetworkImage(
                  'https://media.istockphoto.com/id/658883590/vector/beautiful-african-american-woman-with-bags-attractive-cartoon-girl-in-beautiful-yellow-dress.jpg?s=1024x1024&w=is&k=20&c=vPun-ColKsfLTXX47d-3G1Q-Y9EjZHLFDWQw5ddFmmE='),
              width: 350,
              height: 288.2,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 60),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
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
                SizedBox(height: 5),
                Text(
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
              ],
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                _showDialog(context);
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "G",
                      style: TextStyle(
                        fontFamily: 'IBM Plex Sans',
                        fontSize: 23,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 6),
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
                  'Or ',
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginPage(),
                      ),
                    );
                  },
                  child: const Text(
                    'Create new Account',
                    style: TextStyle(
                      fontFamily: 'IBM Plex Sans',
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      height: 1.3,
                      letterSpacing: 0,
                      color: Color.fromRGBO(253, 172, 21, 1),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
