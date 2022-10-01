import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instyl/screens/add_post_screen.dart';
import 'package:instyl/screens/home_screen.dart';
import 'package:instyl/screens/inbox_page.dart';
import 'package:instyl/screens/instyl_shop_page.dart';
import 'package:instyl/screens/profile_screen.dart';

import '../constants.dart';

class MainMenu extends StatefulWidget {
  const MainMenu({Key? key}) : super(key: key);

  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  int _page = 0;
  late PageController pageController;

  @override
  void initState() {
    //addData();
    pageController = PageController();
    super.initState();
  }
  // addData() async {
  //   UserProvider userProvider = Provider.of(context, listen: false);
  //   await userProvider.refreshUser();
  // }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  void navigationTapped(int page) {
    pageController.jumpToPage(page);
  }

  void onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        onPageChanged: onPageChanged,
        children: const [
          HomeScreen(),
          InboxPageScreen(),
          AddPostScreen(),
          InstylShopPageScreen(),
          ProfileScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _page,
        elevation: 0,
        backgroundColor: Color(0xFF242424).withOpacity(0.5),
        items: [
          BottomNavigationBarItem(
            icon: ImageIcon(
              const AssetImage(
                'assets/home_icon.png',
              ),
              size: 30,
              color: _page == 0 ? kWhiteColor : kWhiteColor.withOpacity(0.7),
            ),
            label: '',
            backgroundColor: Colors.transparent, //kBackgroundColor
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              const AssetImage(
                'assets/msg_icon.png',
              ),
              size: 30,
              color: _page == 1 ? kWhiteColor : kWhiteColor.withOpacity(0.7),
            ),
            label: '',
            backgroundColor: Colors.transparent, //kBackgroundColor
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              const AssetImage(
                'assets/add_icon.png',
              ),
              size: 40,
              color: _page == 2 ? Colors.blue : Colors.blue,
            ),
            label: '',
            backgroundColor: Colors.transparent, //kBackgroundColor
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              const AssetImage(
                'assets/shop_icon.png',
              ),
              size: 25,
              color: _page == 3 ? kWhiteColor : kWhiteColor.withOpacity(0.7),
            ),
            label: '',
            backgroundColor: Colors.transparent, //kBackgroundColor
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              const AssetImage(
                'assets/profile_icon.png',
              ),
              size: 25,
              color: _page == 4 ? kWhiteColor : kWhiteColor.withOpacity(0.7),
            ),
            label: '',
            backgroundColor: Colors.transparent, //kBackgroundColor
          ),
        ],
        selectedLabelStyle: kBodyStyle44,
        unselectedLabelStyle: kBodyStyle44,
        onTap: navigationTapped,
      ),
    );
  }
}
