import 'package:flutter/material.dart';
import 'package:haba/screens/confirm_pin.dart';

class LoginPin extends StatefulWidget {
  const LoginPin({Key? key}) : super(key: key);

  @override
  LoginPinState createState() => LoginPinState();
}

class LoginPinState extends State<LoginPin> {
  List<int> pinDigits = [];
  bool isPinComplete = false;
  bool showIncompletePinMessage = false;

  void _updatePin(int digit) {
    setState(() {
      if (digit == -1) {
        if (pinDigits.isNotEmpty) {
          pinDigits.removeLast();
        }
      } else if (pinDigits.length < 4) {
        pinDigits.add(digit);
      }

      isPinComplete = pinDigits.length == 4;
      showIncompletePinMessage = false;
    });
  }

  void _navigateToHomeScreen() {
    if (isPinComplete) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ConfirmPin(),
        ),
      );
    } else {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Validation Error'),
            content: const Text('Please enter a complete PIN.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 80),
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 300,
                  height: 10,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(253, 172, 21, 1),
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
                  child: const Icon(
                    Icons.check,
                    color: Colors.white,
                    size: 14,
                  ),
                ),
                Positioned(
                  right: 0,
                  child: Container(
                    width: 20,
                    height: 20,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromRGBO(222, 217, 217, 1),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            const Text(
              'Create a login PIN',
              style: TextStyle(
                fontFamily: 'IBM Plex Sans',
                fontSize: 18,
                fontWeight: FontWeight.w600,
                height: 1.3,
                letterSpacing: 0,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(width: 30),
                  for (int i = 0; i < 4; i++)
                    Container(
                      width: 40,
                      height: 40,
                      margin: const EdgeInsets.symmetric(horizontal: 14),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: i < pinDigits.length
                            ? Colors.amber
                            : const Color.fromARGB(91, 158, 158, 158),
                      ),
                      child: const SizedBox.shrink(),
                    ),
                  const SizedBox(width: 30),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              width: 244,
              height: 382,
              margin: const EdgeInsets.only(top: 7),
              padding: const EdgeInsets.all(8),
              decoration: const BoxDecoration(),
              child: GridView.count(
                crossAxisCount: 3,
                crossAxisSpacing: 50,
                mainAxisSpacing: 50,
                children: [
                  for (int i = 1; i <= 9; i++)
                    GestureDetector(
                      onTap: () => _updatePin(i),
                      child: CircleAvatar(
                        radius: 24,
                        backgroundColor: Color.fromRGBO(253, 172, 21, 0.142),
                        child: Text(
                          '$i',
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  const SizedBox.shrink(),
                  GestureDetector(
                    onTap: () => _updatePin(0),
                    child: CircleAvatar(
                      radius: 24,
                      backgroundColor: Color.fromRGBO(253, 172, 21, 0.142),
                      child: const Text(
                        '0',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => _updatePin(-1),
                    child: CircleAvatar(
                      radius: 24,
                      backgroundColor: Color.fromRGBO(253, 172, 21, 0.142),
                      child: const Icon(
                        Icons.close_outlined,
                        color: Colors.black,
                        size: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            GestureDetector(
              onTap: _navigateToHomeScreen,
              child: Container(
                width: 310,
                height: 47,
                padding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 30),
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(253, 172, 21, 1),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text(
                  'Finish',
                  style: TextStyle(
                    fontFamily: 'IBM Plex Sans',
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    height: 1.3,
                    letterSpacing: 0,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
