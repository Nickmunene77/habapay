import 'package:flutter/material.dart';
import 'package:haba/statement_module/all_statement.dart';
import 'package:haba/widgets/account_bottom_bar.dart';

class StatementAccount extends StatelessWidget {
  const StatementAccount({Key? key}) : super(key: key);

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.amber[50],
      body: Column(
        children: [
          SingleChildScrollView(
              child: Column(
            children: [
              Container(
                color: Colors.white,
                height: 80,
                padding:
                    const EdgeInsets.only(top: 40.0, left: 10.0, right: 10.0),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Handle back icon tap action
                      },
                      child: const Icon(
                        Icons.arrow_back_ios_new,
                      ),
                    ),
                    const SizedBox(width: 90),
                    const Text(
                      'Statement',
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
              Column(
                children: [
                  // Existing code...
                  const SizedBox(height: 5),
                  SizedBox(
                    width: 374,
                    height: 43,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const AllStatementScreen(),
                              ),
                            );
                          },
                          child: Container(
                            width: 97,
                            height: 23,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 3, vertical: 0),
                            decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Center(
                              child: Text(
                                'All',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 6),
              Container(
                width: 345,
                height: 555,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
                    // Adjusts the vertical spacing for center alignment
                    const Center(
                      child: Text(
                        'Transaction Details',
                        style: TextStyle(
                          fontFamily: 'IBM Plex Sans',
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/Vector (12).png',
                            height: 20,
                          ),
                          const SizedBox(width: 6),
                          const Text(
                            'Deposit',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 26),
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
                    const SizedBox(height: 4),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        '+254 712345678',
                        style: TextStyle(
                          fontFamily: 'IBM Plex Sans',
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(height: 26),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        'Recipient',
                        style: TextStyle(
                          fontFamily: 'IBM Plex Sans',
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(height: 4),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        'Brian Nakamoto',
                        style: TextStyle(
                          fontFamily: 'IBM Plex Sans',
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(height: 26),
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
                    const SizedBox(height: 4),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        '250',
                        style: TextStyle(
                          fontFamily: 'IBM Plex Sans',
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(height: 26),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        'Transaction ID',
                        style: TextStyle(
                          fontFamily: 'IBM Plex Sans',
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(height: 4),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        'BN12345678',
                        style: TextStyle(
                          fontFamily: 'IBM Plex Sans',
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(height: 140),
                    const Center(
                      child: Text(
                        '2 February 2921 01:30 AM',
                        style: TextStyle(
                          fontFamily: 'IBM Plex Sans',
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          )),
        ],
      ),
      bottomNavigationBar: const AccountBottomBar(),
    );
  }
}
