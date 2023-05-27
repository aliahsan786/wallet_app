// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wallet_app/Screen/Browser.dart';
import 'package:wallet_app/Screen/Discover.dart';
import 'package:wallet_app/Screen/HomeScreen.dart';
import 'package:wallet_app/Screen/Settings.dart';

class NavBar extends StatefulWidget {
  static String routeName = '/AppNavBar';
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int currentIndex = 0;
  final List _listOfScreens = ['Wallet', 'Discover', 'Browser', 'Setting'];
  final List _listOfAssets = const [
    Icons.wallet,
    Icons.discord,
    Icons.open_in_browser_rounded,
    Icons.settings_outlined,
  ];
  var pages = const [
    HomeScreen(),
    Discover(),
    Browser(),
    Settings(),
  ];
  final _appPageController = PageController();

  setBottomBarIndex(index) {
    setState(() {
      currentIndex = index;
    });
    _appPageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
        body: PageView(
          physics: const NeverScrollableScrollPhysics(),
          onPageChanged: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          controller: _appPageController,
          children: pages,
        ),
        bottomNavigationBar: Container(
          width: size.width,
          alignment: Alignment.center,
          height: 65,
          decoration:
              BoxDecoration(border: Border.all(width: 1, color: Colors.white)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              appBarIcon(0),
              appBarIcon(1),
              appBarIcon(2),
              appBarIcon(3),
            ],
          ),
        ));
  }

  GestureDetector appBarIcon(int currentIndexs) {
    return GestureDetector(
      onTap: () {
        setBottomBarIndex(currentIndexs);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            padding: const EdgeInsets.only(left: 8, right: 8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: currentIndex == currentIndexs
                    ? const Color.fromARGB(90, 215, 164, 224)
                    : null),
            child: Icon(
              _listOfAssets[currentIndexs],
              color: Colors.black,
            ),
          ),
          Text(
            _listOfScreens[currentIndexs],
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w400, fontSize: 11, color: Colors.black),
          )
        ],
      ),
    );
  }
}
