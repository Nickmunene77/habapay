import 'package:flutter/material.dart';
import 'package:haba/screens/verification_screen2.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  VerificationScreenState createState() => VerificationScreenState();
}

class VerificationScreenState extends State<VerificationScreen> {
  final TextEditingController _phoneController = TextEditingController();

  void _navigateToNextScreen() {
    final phoneText = _phoneController.text;
    if (phoneText.length >= 10) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const VerificationScreen2()),
      );
    } else {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Validation Error'),
            content: const Text(
                'Please enter a valid phone number with 10 or more digits.'),
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
  void dispose() {
    _phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 80),
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 300,
                    height: 10,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(102, 100, 95, 0.169),
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
                    ),
                  ),
                  Container(
                    width: 20,
                    height: 20,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromRGBO(102, 100, 95, 0.381),
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
                'Add Phone Number',
                style: TextStyle(
                  fontFamily: 'IBM Plex Sans',
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  height: 1.3,
                  letterSpacing: 0,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 30),
              Container(
                width: 288,
                height: 88,
                margin: const EdgeInsets.only(top: 10),
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Phone',
                      style: TextStyle(
                        fontFamily: 'IBM Plex Sans',
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        height: 1.3,
                        letterSpacing: 0,
                        color: Colors.black,
                      ),
                    ),
                    TextField(
                      controller: _phoneController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black, width: 1),
                        ),
                        contentPadding: EdgeInsets.only(bottom: -10, left: 2),
                        fillColor: Colors.transparent,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 300),
              GestureDetector(
                onTap: _navigateToNextScreen,
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
                        'Add',
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
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
