import 'package:flutter/material.dart';
import 'package:haba/screens/login_pin.dart';

class VerificationSuccess extends StatelessWidget {
  const VerificationSuccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 80,
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 300,
                  height: 10,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromRGBO(253, 172, 21, 1),
                        Color.fromRGBO(102, 100, 95, 0.169)
                      ],
                      stops: [0.5, 0.5],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  child: Container(
                    width: 20,
                    height: 20,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromRGBO(253, 172, 21, 1),
                    ),
                    child: const Icon(
                      Icons.check,
                      color: Colors.white,
                      size: 14,
                    ),
                  ),
                ),
                Container(
                  width: 20,
                  height: 20,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(253, 172, 21, 1),
                  ),
                ),
                Positioned(
                  right: 0,
                  child: Container(
                    width: 20,
                    height: 20,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromRGBO(102, 100, 95, 0.381),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            const Text(
              'Verification successful',
              style: TextStyle(
                fontFamily: 'IBM Plex Sans',
                fontSize: 18,
                fontWeight: FontWeight.w600,
                height: 1.3,
                letterSpacing: 0,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 70),
            Container(
              width: 48,
              height: 48,
              margin: const EdgeInsets.only(top: 10),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: const Center(
                child: Icon(
                  Icons.emoji_emotions_outlined,
                  color: Color.fromRGBO(253, 172, 21, 1),
                  size: 54,
                ),
              ),
            ),
            const SizedBox(height: 350),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginPin(),
                  ),
                );
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
                      'Proceed',
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
          ],
        ),
      ),
    );
  }
}
