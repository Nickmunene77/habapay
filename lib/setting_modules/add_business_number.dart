import 'package:flutter/material.dart';
import 'package:haba/account/setting_account.dart';
import 'package:haba/setting_modules/next_add_business.dart';
import 'package:haba/widgets/account_bottom_bar.dart';

class AddBusinessNumberFirst extends StatefulWidget {
  const AddBusinessNumberFirst({Key? key}) : super(key: key);

  @override
  AddBusinessNumberFirstState createState() => AddBusinessNumberFirstState();
}

class AddBusinessNumberFirstState extends State<AddBusinessNumberFirst> {
  bool isDropdownOpen = false;
  bool isFilterOpen = false;
  bool isDownloadMethod = false;

  List<String> items = ['Item 1', 'Item 2', 'Item 3', 'Item 4'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.amber[50],
      body: Column(
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
                SizedBox(
                    width: 345,
                    height: 485,
                    child: ListView(
                      children: <Widget>[
                        Column(children: [
                          const SizedBox(
                              height: 70), // Add spacing between sections
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            child: Text(
                              'Add your business',
                              style: TextStyle(
                                fontFamily: 'IBM Plex Sans',
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),

                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            child: Text(
                              'Adding your business allows us to\ncustomize your experience',
                              style: TextStyle(
                                fontFamily: 'IBM Plex Sans',
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),

                          const SizedBox(height: 40),

                          Container(
                            width: 288,
                            height: 334,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.white,
                            ),
                            child: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Business name *',
                                    style: TextStyle(
                                      fontFamily: 'IBM Plex Sans',
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        isDropdownOpen = !isDropdownOpen;
                                      });
                                    },
                                    child: Container(
                                      height: 40,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.grey,
                                          width: 1.0,
                                        ),
                                      ),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 16),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text(
                                            'Select',
                                            style: TextStyle(
                                              fontFamily: 'IBM Plex Sans',
                                              fontSize: 18,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.black,
                                            ),
                                          ),
                                          Icon(
                                            isDropdownOpen
                                                ? Icons.arrow_drop_up
                                                : Icons.arrow_drop_down,
                                            color: Colors.black,
                                            size: 24,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Visibility(
                                    visible: isDropdownOpen,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.grey,
                                          width: 1.0,
                                        ),
                                      ),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 16, vertical: 8),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: items.map((item) {
                                          return Text(
                                            item,
                                            style: const TextStyle(
                                              fontFamily: 'IBM Plex Sans',
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.black,
                                            ),
                                          );
                                        }).toList(),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  const Text(
                                    'Category',
                                    style: TextStyle(
                                      fontFamily: 'IBM Plex Sans',
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        isFilterOpen = !isFilterOpen;
                                      });
                                    },
                                    child: Row(
                                      children: [
                                        Container(
                                          width: 238,
                                          height: 40,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.grey,
                                              width: 1.0,
                                            ),
                                          ),
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 16),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              const Text(
                                                'Select',
                                                style: TextStyle(
                                                  fontFamily: 'IBM Plex Sans',
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w300,
                                                  color: Colors.black,
                                                ),
                                              ),
                                              Icon(
                                                isFilterOpen
                                                    ? Icons.arrow_drop_up
                                                    : Icons.arrow_drop_down,
                                                color: Colors.black,
                                                size: 24,
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(width: 10),
                                        Container(
                                          width: 40,
                                          height: 40,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.grey,
                                              width: 1.0,
                                            ),
                                          ),
                                          child: Image.asset(
                                            'assets/Vector (22).png',
                                            color: isFilterOpen
                                                ? Colors.amber
                                                : Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  const SizedBox(height: 10),
                                  Visibility(
                                    visible: isFilterOpen,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.grey,
                                          width: 1.0,
                                        ),
                                      ),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 16, vertical: 8),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: items.map((item) {
                                          return Text(
                                            item,
                                            style: const TextStyle(
                                              fontFamily: 'IBM Plex Sans',
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.black,
                                            ),
                                          );
                                        }).toList(),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  const Text(
                                    'Location',
                                    style: TextStyle(
                                      fontFamily: 'IBM Plex Sans',
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        isDownloadMethod = !isDownloadMethod;
                                      });
                                    },
                                    child: Container(
                                      height: 40,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.grey,
                                          width: 1.0,
                                        ),
                                      ),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 16),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text(
                                            'Select',
                                            style: TextStyle(
                                              fontFamily: 'IBM Plex Sans',
                                              fontSize: 18,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.black,
                                            ),
                                          ),
                                          Icon(
                                            isDropdownOpen
                                                ? Icons.arrow_drop_up
                                                : Icons.arrow_drop_down,
                                            color: Colors.black,
                                            size: 24,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  Visibility(
                                    visible: isDownloadMethod,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.grey,
                                          width: 1.0,
                                        ),
                                      ),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 16, vertical: 8),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: items.map((item) {
                                          return Text(
                                            item,
                                            style: const TextStyle(
                                              fontFamily: 'IBM Plex Sans',
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.black,
                                            ),
                                          );
                                        }).toList(),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ]),
                      ],
                    )),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const NextAddBusinessNumber(),
                          ),
                        );
                      },
                      child: Container(
                        width: 310,
                        height: 47,
                        margin: const EdgeInsets.only(
                          top: 20,
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
      bottomNavigationBar: const AccountBottomBar(),
    );
  }
}
