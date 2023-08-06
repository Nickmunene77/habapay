import 'package:flutter/material.dart';
import 'package:haba/screens/verification_success.dart';

class VerificationScreen2 extends StatefulWidget {
  const VerificationScreen2({Key? key}) : super(key: key);

  @override
  VerificationScreen2State createState() => VerificationScreen2State();
}

class VerificationScreen2State extends State<VerificationScreen2> {
  final TextEditingController _codeController = TextEditingController();
  bool _isCodeValid = true;

  @override
  void dispose() {
    _codeController.dispose();
    super.dispose();
  }

  void _validateCode() {
    setState(() {
      final codeText = _codeController.text;
      _isCodeValid = codeText.length == 4;
    });
  }

  void _navigateToNextScreen() {
    if (_isCodeValid) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const VerificationSuccess()),
      );
    } else {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Validation Error'),
            content: const Text('Please enter a valid 4-digit code.'),
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
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
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
                height: 98,
                margin: const EdgeInsets.only(top: 10),
                padding: const EdgeInsets.only(bottom: 0, left: 3),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Code',
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
                      controller: _codeController,
                      onChanged: (_) => _validateCode(),
                      keyboardType: TextInputType.number,
                      maxLength: 4,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey, width: 1),
                        ),
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        fillColor: Colors.transparent,
                        counterText: '',
                        errorText: _isCodeValid
                            ? null
                            : 'Please enter a valid 4-digit code',
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 250),
              const Text(
                "A verification Code was sent\nto your sms",
                style: TextStyle(
                  color: Color.fromRGBO(137, 137, 137, 1),
                  fontSize: 18,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
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
                        'Verify',
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
      ),
    );
  }
}
