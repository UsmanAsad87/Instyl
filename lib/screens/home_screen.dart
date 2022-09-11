import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instyl/screens/feeds_screen.dart';
import 'package:instyl/screens/reels_screen.dart';
import '../constants.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home_screen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  List<String> tabNames = [
    'assets/feed_icon.png',
    'assets/video_icon.png',
    'assets/icon3.png'
  ];
  late TabController _tabController;

  int currentIndex = 0;

  @override
  void initState() {
    _tabController = TabController(length: tabNames.length, vsync: this);
    super.initState();
  }

  buildTabRow(context) {
    return Container(
      height: 70.h,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: kBgColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          for (var i in tabNames)
            buildTabButton(
                context: context,
                icon: i,
                index: tabNames.indexOf(i),
                function: () {}),
        ],
      ),
    );
  }

  buildTabButton(
      {required BuildContext context,
      required String icon,
      required Function function,
      required int index}) {
    return GestureDetector(
      onTap: () {
        setState(() {
          currentIndex = tabNames.indexOf(icon);
        });
      },
      child: Container(
          width:
              100, //kIsWeb?MediaQuery.of(context).size.width / 2 - 80.w:MediaQuery.of(context).size.width / 2 - 40.w,
          // decoration: BoxDecoration(
          //   color: tabNames.indexOf(icon) == currentIndex
          //       ? kPrimaryColor
          //       : Colors.transparent,
          //   borderRadius: BorderRadius.circular(10.r),
          //   boxShadow: [
          //     tabNames.indexOf(icon) == currentIndex
          //         ? BoxShadow(
          //             offset: Offset(3.w, 3.h),
          //             blurRadius: 4.r,
          //             color: Colors.black.withOpacity(0.25),
          //           )
          //         : BoxShadow(
          //             offset: Offset(0, 0),
          //             blurRadius: 0.r,
          //             color: Colors.transparent,
          //           )
          //   ],
          // ),
          child: Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Center(
                child: Column(
              children: [
                ImageIcon(
                  AssetImage(
                    icon,
                  ),
                  color: kWhiteFontColor,
                  size: tabNames.indexOf(icon) == 2 ? 40.h : 50.h,
                  //color: Color(0xFF7BA7D7)
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: tabNames.indexOf(icon) == 2 ? 15.h : 5.h),
                  width: 33.w,
                  height: 3.h,
                  color: tabNames.indexOf(icon) == currentIndex
                      ? const Color(0xFF7BA7D7)
                      : Colors.transparent,
                )
              ],
            )),
          )),
    );
  }

  handleTabPages(BuildContext context, int index) {
    switch (index) {
      case 0:
        return const FeedsScreen(); //Text('11',style: kHeadingStyle2,);
      case 1:
        return ReelsScreen();
//Text('12',style: kHeadingStyle2,);
      case 2:
        return Text(
          '13',
          style: kHeadingStyle2,
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgColor,
      appBar: AppBar(
        backgroundColor: kBgColor,
        title: Text(
          'Instyl',
          style: kHeadingStyle4,
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.search,
            size: 35.h,
          ),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: ImageIcon(
                const AssetImage(
                  'assets/shop_icon.png',
                ),
                size: 35.h,
                color: const Color(0xFF7BA7D7)),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
          padding: EdgeInsets.only(
              top: kDefaultPadding,
              left: kDefaultPadding / 2,
              right: kDefaultPadding / 2),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildTabRow(context),
                SizedBox(
                  height: 10.h,
                ),
                handleTabPages(context, currentIndex),
              ],
            ),
          )),
    );
  }
}
