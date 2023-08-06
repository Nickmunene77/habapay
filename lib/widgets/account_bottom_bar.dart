import 'package:flutter/material.dart';
import 'package:haba/account/home_account.dart';
import 'package:haba/account/setting_account.dart';
import 'package:haba/account/statement_account.dart';

class AccountBottomBar extends StatefulWidget {
  const AccountBottomBar({Key? key}) : super(key: key);

  @override
  AccountBottomBarState createState() => AccountBottomBarState();
}

class AccountBottomBarState extends State<AccountBottomBar> {
  int selectedIndex = 1;

  void navigateToScreen(int index) {
    setState(() {
      selectedIndex = index;
    });
    // Navigate to the respective screen based on the selected index
    switch (index) {
      case 0:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => StatementAccount()),
        );
        break;
      case 1:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => HomeAccount()),
        );
        break;
      case 2:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => SettingAccount()),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 91, // Adjust the height as desired
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.grey,
        currentIndex: selectedIndex,
        onTap: navigateToScreen,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.file_download_sharp,
              size: 24,
            ),
            label: 'Statement',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 24,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              size: 24,
            ),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
