import 'package:flutter/material.dart';
import 'package:haba/account/setting_account.dart';
import 'package:haba/setting_modules/add_newnumber_second.dart';
import 'package:haba/widgets/account_bottom_bar.dart';

class AddNewnumberFirst extends StatefulWidget {
  const AddNewnumberFirst({Key? key}) : super(key: key);

  @override
  _AddNewnumberFirstState createState() => _AddNewnumberFirstState();
}

class _AddNewnumberFirstState extends State<AddNewnumberFirst> {
  final _phoneController = TextEditingController();
  bool _isButtonEnabled = false;

  @override
  void dispose() {
    _phoneController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _phoneController.addListener(_validateInput);
  }

  void _validateInput() {
    final phoneNumber = _phoneController.text;
    setState(() {
      _isButtonEnabled = phoneNumber.length >= 10;
    });
  }

  void _navigateToAddNewnumberSecondScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const AddNewnumberSecond(),
      ),
    );
  }

  void _showErrorDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Invalid Input'),
          content: const Text(
              'Please enter a phone number with at least 10 digits.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                  height: 595,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                          height: 70), // Add spacing between sections
                      const Text(
                        'Add phone number',
                        style: TextStyle(
                          fontFamily: 'IBM Plex Sans',
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 40),
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
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
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: _isButtonEnabled
                                ? _navigateToAddNewnumberSecondScreen
                                : _showErrorDialog,
                            child: Container(
                              width: 310,
                              height: 47,
                              margin: const EdgeInsets.only(
                                top: 220,
                              ),
                              padding: const EdgeInsets.symmetric(
                                vertical: 12,
                                horizontal: 30,
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: const Color.fromRGBO(253, 172, 21, 1)),
                              child: const Center(
                                child: Text(
                                  'Add',
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
                      )
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
