import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:instyl/screens/comments_screen.dart';
import 'package:instyl/screens/sell_item_screen.dart';
import 'package:instyl/screens/single_catagory_screen.dart';
import 'package:instyl/widgets/custom_text_field.dart';
import 'package:transparent_image/transparent_image.dart';
import '../constants.dart';

class InstylShopPageScreen extends StatefulWidget {
  const InstylShopPageScreen({Key? key}) : super(key: key);

  @override
  State<InstylShopPageScreen> createState() => _InstylShopPageScreenState();
}

class _InstylShopPageScreenState extends State<InstylShopPageScreen>
    with SingleTickerProviderStateMixin {
  List<String> tabNames = ['Mens', 'Womens', 'Kids', 'Accessories'];
  List<Map<String, dynamic>> mensList = [
    {
      'title': 'Shirts',
      'img':
          'https://s3-alpha-sig.figma.com/img/641f/e012/01f3b692ec92406effd3d9fb137a1f1c?Expires=1664150400&Signature=Ltk-Dp1oIGHyiVJdYO00vwQq9-mGPbcgHpa7j8pz9i8RnajBnRNQqjINqBJtgbTzKzXyz-lNFWIMOO4NJNgvubepnRxgOqSC~XQxzwlx8a8ZBYFpAsHOZIMunSwYqHL8hFduIxx13SRPLgb4egiWbvR1f72pDSA~rAYp~zFJDIxFd-0MObdtxUVuRZhI3qyY7gxTEF~D6OQepZV83hf1d9sikJJlBmaF-F2bnQwZObSkuPFjz0gnlEdYmAkSIk~P-uSkRYStlm~7hpORkhMKu1XN-aCjcRfuDk6POlrXddt-xBelnU8fw46x5wIF8at5iTYw1XMQUi6xYBIY2mZOOQ__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA'
    },
    {
      'title': 'Pants',
      'img':
          'https://s3-alpha-sig.figma.com/img/73fa/0e0a/474c0580746838f655829c079a0764b5?Expires=1664150400&Signature=Ph0sco1~nRj~-ILemnHw9f9dJr8cmrWerr5unuNIKmBuGbQWwoIZusAORkv1tp9qlc14UeuJU28fAlttUpzMfmZvmIXHBwoLImNztXpkBNSgQSgGLgjJ-EIohSbXegTgZSVgxLFjiCw442kdgFKn6DI5-nc4CfDcd6FLNKWxxQyEBKp7s54c7YEkYHYS6jEdnf1VBXRlMbzyi7AG8iKN-vX72ShuRZjNypqSLIQgSD6auoCqzAMpS-sf8eNchhYCx896miDCC9k6pCCi1FOfZsUA8PUUtPbqwZI9NH2aVIqowKmpwNZ7rMrnpVT0GpigtEgpxAa-gttTGIDnClFtnA__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA'
    },
    {
      'title': 'Accessories',
      'img':
          'https://s3-alpha-sig.figma.com/img/604d/1589/acc97e034bb5501d50de0e0d9acd5253?Expires=1664150400&Signature=Y3fRsEl7159xBklZ~XH0QT5VONJgHKtSA6H2xoR~jDf6fLyztyg9e1DBs4DpP6OZJVJBFw3D8lYTK3qKRMVFRi3KQAbFWuYU4ffi4YqwuzsRI1uPaN1vK5FqxaggSTZNzThvu92WbQwIPgRRqXTY04Y-hPul6rWXAG1DliNnqGRdxK38qWjVEOcKWFyfO27rPLUDHyYJTUZ0Fv-ZzmJga6wmeb6zU4iWcsmgqwYumKeapcurjqHGx4T9E5LD2gYOA8YBesMTA1hSqhJt-9lAQ~2uyK-nr95pX6TKCnAQjsavZqjRtVj1GiemwcGuFfHirosL2OyF6UPkF2gaiGguQA__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA'
    },
    {
      'title': 'Shoes',
      'img':
          'https://s3-alpha-sig.figma.com/img/84bd/77eb/4cda701570fb486d4e989c7b2be93b44?Expires=1664150400&Signature=MqJZTM-V9DiWOc4PhlbiufJfLWBbDFJokjW44Fa13fevhVCqgRndBR2X3lBtnRPT2umvRJDjwaKw8-X0ddSECj33pebmgrtrGBdrXTI0UdVTLcaxo9tbeoBRvnsrBeLBGgHW3bYQYdIhENJI-kpaI~QRHZUD8RX1~BVULfdn8C4vHZZvdbkVPDN7YOFCIkZzA4iAoBoNqPvars-tI1F4vNIreoHWwL7gmsX4gdiTFmT-I5ReBzDusmmYQLb2uPbM8koCDtr4BP3Xhb4OD9h5WyYI1bAaZ1h6QMnpYS1upqsjdQIV-VLPnrxL9h38sF32FtPms6gDAsb4bCWyAGWUYg__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA'
    },
    {
      'title': 'T-Shirts',
      'img':
          'https://s3-alpha-sig.figma.com/img/6168/b79f/fdeee6f62dee247ee2d3da467934898a?Expires=1664150400&Signature=J6ONIrQ4MJbhb6-Etq5TH2r6AyARoy8bIG8JwvYBbpBLsOPc-aajgve88h4pcIkjF6FqZs79F7hwDT9KvVXQ03lk4QXvDZX7ujSH5dkyqRV0PQjNDxQV5PFeXyz1XtW8~XE24UyiKR-YLACZ9FEqz~FxFp~JYOH29ISzapCK10ihmqsVJjV6YHT2cDgQxvDr6GVsWwwwG4926l2HsPVPrFYY15lo3U3ml0wJ9rvJ-pXYFJNTaf4iPHUqaar13kCIWe0rJhR7NoiwNc9qXLFGQ5-ur4WX59XgCxTT3F6xilEzb9ii4hMYEYyGN8jAT0TmBFO9lqvJRwGKH4lsKllHmQ__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA'
    },
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
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0.w),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
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
        ),
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
          child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.h),
        child: Container(
          margin: EdgeInsets.only(top: 4.h),
          padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 20.h),
          decoration: BoxDecoration(
              color: tabNames.indexOf(icon) == currentIndex
                  ? kBgColor
                  : const Color(0xFFC9C9C9),
              borderRadius: BorderRadius.circular(10.r)),
          child: Text(
            icon,
            style: kBodyStyle13,
          ),
        ),
      )),
    );
  }

  handleTabPages(BuildContext context, int index) {
    switch (index) {
      case 0:
        return ShowCategories(mensList: mensList);

      case 1:
        return ShowCategories(mensList: mensList);
      case 2:
        return ShowCategories(mensList: mensList);
      case 3:
        return ShowCategories(mensList: mensList);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: false,
      backgroundColor: kWhiteColor,
      floatingActionButton: Container(
        height: 180.h,
        alignment: Alignment.centerRight,
        child: FloatingActionButton(
          backgroundColor: const Color(0xff03dac6),
          foregroundColor: Colors.white,
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (_)=>SellItemScreen()));
          },
          child: Text('Sell'),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.35,
                  child: Image.asset(
                    'assets/shop_bg.png',
                    fit: BoxFit.fitWidth,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.35,
                  color: Color(0xFF050505).withOpacity(0.4),
                ),
                Positioned(
                    top: 40.h,
                    left: 20.h,
                    child: IconButton(
                      icon: Icon(
                        Icons.close_outlined,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    )),
                Positioned(
                    top: 40.h,
                    right: 20.h,
                    child: IconButton(
                      icon: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    )),
                Positioned(
                    bottom: 30.h,
                    left: 20.h,
                    child: Text(
                      'Welcome To \nInstyl Marketplace',
                      style: kHeadingStyle3,
                    ))
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            buildTabRow(context),
            SizedBox(
              height: 10.h,
            ),
            handleTabPages(context, currentIndex),
            SizedBox(
              height: 10.h,
            ),
            InkWell(onTap: () {}, child: Text('View All', style: kBodyStyle5)),
            SizedBox(
              height: 0100.h,
            ),
          ],
        ),
      ),
    );
  }
}

class ShowCategories extends StatelessWidget {
  const ShowCategories({
    Key? key,
    required this.mensList,
  }) : super(key: key);

  final List<Map<String, dynamic>> mensList;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CatagoryCard(
              title: mensList[0]['title'],
              img: mensList[0]['img'],
              onPress: () {},
            ),
            CatagoryCard(
                title: mensList[1]['title'],
                img: mensList[1]['img'],
                onPress: () {})
          ],
        ),
        CatagoryCard(
          title: mensList[2]['title'],
          img: mensList[2]['img'],
          onPress: () {},
          isLarge: true,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CatagoryCard(
              title: mensList[3]['title'],
              img: mensList[3]['img'],
              onPress: () {},
            ),
            CatagoryCard(
                title: mensList[4]['title'],
                img: mensList[4]['img'],
                onPress: () {})
          ],
        ),
      ],
    );
  }
}

class ProfileGridView extends StatelessWidget {
  const ProfileGridView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemCount: listImages.length,
        itemBuilder: (BuildContext ctx, index) {
          return FadeInImage.memoryNetwork(
              placeholder: kTransparentImage,
              image: listImages[index],
              fit: BoxFit.cover);
        });
  }
}

class CatagoryCard extends StatelessWidget {
  const CatagoryCard({
    Key? key,
    required this.title,
    required this.img,
    required this.onPress,
    this.isLarge = false,
  }) : super(key: key);

  final String title;
  final String img;
  final Function() onPress;
  final bool isLarge;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 5.h),
          child: Container(
            height: 167.h,
            width: isLarge ? size.width : size.width / 2 - 2.w,
            child: Image(
              image: NetworkImage(
                img,
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        InkWell(
          onTap: (){
            print('usmn');
            Navigator.push(context, MaterialPageRoute(builder: (_)=>SingleCatagoryScreen()));
          },
          child: Padding(
            padding: EdgeInsets.only(top: 5.h),
            child: InkWell(
              child: Container(
                height: 167.h,
                width: isLarge ? size.width : size.width / 2 - 2.w,
                color: Colors.black.withOpacity(0.5),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      title,
                      style: kBodyStyle4,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
