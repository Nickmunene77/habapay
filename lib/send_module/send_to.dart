import 'package:flutter/material.dart';
import 'package:haba/account/home_account.dart';
import 'package:haba/send_module/confirm_send.dart';
import 'package:haba/widgets/account_bottom_bar.dart';

class SendToScreen extends StatefulWidget {
  const SendToScreen({Key? key}) : super(key: key);

  @override
  SendToScreenState createState() => SendToScreenState();
}

class SendToScreenState extends State<SendToScreen> {
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _amountController = TextEditingController();

  String _validatePhone(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a phone number';
    }
    if (value.length < 10) {
      return 'Phone number should be at least 10 digits';
    }
    return '';
  }

  String _validateAmount(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter an amount';
    }
    if (int.parse(value) > 1200) {
      return 'Amount should be less than 1200';
    }
    return '';
  }

  void _handleSendButton() {
    final phoneError = _validatePhone(_phoneController.text);
    final amountError = _validateAmount(_amountController.text);

    if (phoneError.isEmpty && amountError.isEmpty) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const ConfirmSendScreen(),
        ),
      );
    } else {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Validation Error'),
          content: Text(phoneError.isNotEmpty ? phoneError : amountError),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('OK'),
            ),
          ],
        ),
      );
    }
  }

  @override
  void dispose() {
    _phoneController.dispose();
    _amountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[50],
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
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
                          builder: (context) => const HomeAccount(),
                        ),
                      );
                    },
                    child: const Icon(
                      Icons.arrow_back_ios_new,
                    ),
                  ),
                  const SizedBox(width: 70),
                  const Text(
                    'Send Money',
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
              height: 595,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Container(
                    width: 288,
                    height: 75,
                    margin: const EdgeInsets.only(top: 10, left: 29),
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 26),
                        const Text(
                          'Balance',
                          style: TextStyle(
                            fontFamily: 'IBM Plex Sans',
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey,
                          ),
                        ),
                        const SizedBox(height: 1),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Ksh. 1200',
                              style: TextStyle(
                                fontFamily: 'IBM Plex Sans',
                                fontSize: 23,
                                fontWeight: FontWeight.w600,
                                color: Color.fromARGB(187, 0, 0, 0),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                // Handle the eye icon tap action
                              },
                              child: const Icon(
                                Icons.remove_red_eye_outlined,
                                color: Colors.grey,
                                size: 20.53,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 40),
                  const Text(
                    'Send to',
                    style: TextStyle(
                      fontFamily: 'IBM Plex Sans',
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 26),
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
                            'Phone',
                            style: TextStyle(
                              fontFamily: 'IBM Plex Sans',
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        const SizedBox(height: 6),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: SizedBox(
                            height: 40,
                            child: TextFormField(
                              controller: _phoneController,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.grey,
                                    width: 1.0,
                                  ),
                                ),
                              ),
                              style: const TextStyle(
                                fontFamily: 'IBM Plex Sans',
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: Text(
                            'Amount',
                            style: TextStyle(
                              fontFamily: 'IBM Plex Sans',
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        const SizedBox(height: 6),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: SizedBox(
                            height: 40,
                            child: TextFormField(
                              controller: _amountController,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.grey,
                                    width: 1.0,
                                  ),
                                ),
                              ),
                              style: const TextStyle(
                                fontFamily: 'IBM Plex Sans',
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  GestureDetector(
                    onTap: _handleSendButton,
                    child: Container(
                      width: 310,
                      height: 47,
                      margin: const EdgeInsets.only(
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
                          'Send',
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
            const SizedBox(height: 20),
          ],
        ),
      ),
      bottomNavigationBar: const AccountBottomBar(),
    );
  }
}
