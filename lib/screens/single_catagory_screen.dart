import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:instyl/screens/comments_screen.dart';
import 'package:instyl/screens/single_item_screen.dart';
import 'package:instyl/widgets/custom_text_field.dart';
import 'package:transparent_image/transparent_image.dart';
import '../constants.dart';

class SingleCatagoryScreen extends StatefulWidget {
  const SingleCatagoryScreen({Key? key}) : super(key: key);

  @override
  State<SingleCatagoryScreen> createState() => _SingleCatagoryScreenState();
}

class _SingleCatagoryScreenState extends State<SingleCatagoryScreen>
    with SingleTickerProviderStateMixin {
  List<String> tabNames = ['Formal', 'Casual', 'Sports'];
  List<Map<String, dynamic>> shoesList = [
    {
      'title': 'Red Snake Pattern Loafers',
      'price':'\$30.00',
      'img':'https://s3-alpha-sig.figma.com/img/888d/4c1f/d75ad2a85d2bdc8d95b8472b8c8a7134?Expires=1664150400&Signature=G6dwKoiGHxW9TGLXFby8jCJkS9ZVWVQX9Srv6mFKZpzETttVvtpZQ1Of0WMGuJ47Bydqyly7ufXZSxcXcwYxt7bBqEBJdWW17dOLvAa-j1v5WgfLwrCH-CtM6vrbJTKaZ4gcie7qJPdY0mb9bbyxkh29RNIAkrxGDQS2qBy8silscDyYXr~Zue~GyhO2FGO~wRvfpPlWGl1uH0a1shbrJ146FwRFvxCV1nWs3nwjqh3X2Xv9Y2wGWGjqTC4IbfBWi7-Wj4zaphb-g84SKSzF9-KCqDDYMQZqSPkDYyhSaohp~1vS5nzjR4GTK6YIBOnc3dtU3Jb5~-VxBJ8-3s4v-Q__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA'
    },
    {
      'title': 'Black Suede Loafers',
      'price':'\$25.00',
      'img':'https://s3-alpha-sig.figma.com/img/5f8b/78e8/bc3b76bbff07ceed83071472810e069e?Expires=1664150400&Signature=RZb2a4Ky-zxr7mVSEwfM6jG-D90Vik389b~p9OU6Wstxw5Kmuf-aMhFGo37WEAB~tPnQYwm8peQak~EKdfRyZqswNoty1Ug0mCNXbd5gxY0B5giYOMxkZEfTaS-arEg5sGKTCWCFepuiJ5Afa7DIoJ1ek3TLgjPL4dNhrXAXqKStGWf9hgd80b73UV0cxQbiRmF9Mb65Jno-2-CJBg60nDHGkYWiRxmD~JjUcq085qY-Pp0ehu9CjmrL5yslcUN8dEmaHWTqGymy1J4vfRlJUa8CnnytSHbh9~KGVCirOmxe7iRKm6r~3m-oqwlWn~lvP9guoHhpYvrMRf8DFiNflg__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA'
    },
    {
      'title': 'Brown Leather Tassel Loafers',
      'price':'\$45.00',
      'img':'https://s3-alpha-sig.figma.com/img/ba05/418a/e3069e4194b4f1c619ab22294fbf494a?Expires=1664150400&Signature=h2iFs~57AYS86XTue8R04-ndgYzuofQUJznyPgYb0NJJkzngnx4iKhMamH9ETbDohVUCVm3Pfw4CwC8qmf4MKNugHyvPZ5OCNifLpn0SAikicc3HqP7U3H~3K7bbuGU53dS50mxaEnt94d~O00F8QIWOeeSFGXV6vqAcmZfW-nhKTj2wpo5GYZ~S~lBa~MYF70rRMBzww0TIVdhPHkJxCyb170n6tyC4hqE7kv8yQS0xNKYNXvwJAYAVfZZr-inw~QCusk01iSqdq-bmD-vOha3oDCIVNerYd6VKJZUyvzP4WU2ur4Ak2gUW9kyv8cldhoaOYVS0YQ7jRm1O4aJUgw__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA'
    },
    {
      'title': 'Black Leather Strap Shoes',
      'price':'\$38.00',
      'img':'https://s3-alpha-sig.figma.com/img/1095/f0f6/409a988f9c252dbc5ccbccf231bd4112?Expires=1664150400&Signature=X~asRVcOVFKll3isXM2LgP-faxZ3DdpaQXLH9TMwS1DgLQADltiPLLMFBqQeOu5Eb4WYGSFZScogwBwT9bHruKPF127htvA3M-7gk8pJNwWtmAoVOUXiFOPUEUd7rL-K0r8aw6~-BIGc3dCvpFRw4heybtGwi6LOR~zLgZbGg5c1RP-IbleRVzi5RHRrVHMhltTOGHZ6KNOchJlgdiUGrbJxdI6xJZe9yxXGlecq0sw1mMjZWmU6Hj78BNIg0ZpFq3GJW30Rhox2Q5ujMTBxPz00bzO67i~Qkbs5zuojI1mWROBu1VhVmNMUdcZODCnkQhFfdICU0h6Ds8QIr44eVA__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA'
    },
    {
      'title': 'Snake Pattern Loafers',
      'price':'\$60.00',
      'img':'https://s3-alpha-sig.figma.com/img/914d/c0ff/449d2e71875b9cebae48e9aa22e3cba0?Expires=1664150400&Signature=R6laUtdtCtHdU5mx6f26o35m~QDnQsXcl4hUrWpIp2RHRFixvRCqHPqZIHE3fjb9Bd8yAlydBVLB~lRbYUzPFuNASBw7MfNZFFmbbyUXcldelaWHZyjdutk3yQAu8c84hnWNeJ6O3qDJjkw-cWVVuszdFErcM6Nc0SGlm3J3lomxaidUvyvEGyMgLkxRQfWEnw9XWkHPXwzw95yXHwIafAtuwkq4maTa-wpv2qFp1xpvHJXCzUZf4o1HNroxZkZwnNygjtsSuQWyDZmD9O6eYz6HTyzIhpTeroifvIaNciRz2ySNWyTcLyt5LUU1iBI3Nt41fzRXyjwRbvKgTjt1bQ__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA'
    },
    {
      'title': 'Black Loafers',
      'price':'\$40.00',
      'img':'https://s3-alpha-sig.figma.com/img/9697/d83a/812e8ba71f06790bcf57ce484b50c83e?Expires=1664150400&Signature=G9QiYShdDo2s4OzKPvrtIFTVKzuR-SyzXnDTlg3fXZ6rmacuR05TbG1jnzd9Nou3nJjxce75OtsCdQrYidDQRxijVclH~KbPo6XdugLq3FKuvXDO-7YJIwRJK8T4BydYCNvzGwGPvfP3cZttxLxulB4GCA-pZnlN1F6PRx080Xdy1c7lfd7aLobSXQpfqbFdrE7zBtQ68KJzEqWTCenDOfVsFOn3iCXuAGb26oh-gBjlECt-1EkRUfUL-sTBQQt5JObtghsqoDucSy0lBSV9Dn2K2Nw3hyOHibRXtfHClnuowJ-ub7JDXHFAnElIlRQwEq39vlZPRlTz7dZwvC6ERw__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA' },

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
                    title: i,
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
      required String title,
      required Function function,
      required int index}) {
    return GestureDetector(
      onTap: () {
        setState(() {
          currentIndex = tabNames.indexOf(title);
        });
      },
      child: Container(
          child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.h),
        child: Container(
          margin: EdgeInsets.only(top: 4.h),
          padding: EdgeInsets.symmetric(vertical: 7.h, horizontal: 28.h),
          decoration: BoxDecoration(
              color: tabNames.indexOf(title) == currentIndex
                  ? const Color(0xFF2A99FF)
                  : const Color(0xFFBABABA),
              borderRadius: BorderRadius.circular(10.r)),
          child: Text(
            title,
            style: kBodyStyle3,
          ),
        ),
      )),
    );
  }

  handleTabPages(BuildContext context, int index) {
    switch (index) {
      case 0:
        return GridView.builder(
            itemCount: shoesList.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.8,
              crossAxisSpacing: 5.0,
            ),
            itemBuilder: (context, index) {
              return ItemCard(title: shoesList[index]['title'],img: shoesList[index]['img'],price: shoesList[index]['price'],);

            });
      case 1:
        return GridView.builder(
            itemCount: shoesList.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.8,
              crossAxisSpacing: 5.0,
            ),
            itemBuilder: (context, index) {
              return ItemCard(title: shoesList[index]['title'],img: shoesList[index]['img'],price: shoesList[index]['price'],);

            });
      case 2:
        return GridView.builder(
            itemCount: shoesList.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.8,
              crossAxisSpacing: 5.0,
            ),
            itemBuilder: (context, index) {
              return ItemCard(title: shoesList[index]['title'],img: shoesList[index]['img'],price: shoesList[index]['price'],);

            });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: false,
      backgroundColor: kWhiteColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.23,
                  child: Image.asset(
                    'assets/shoes.png',
                    fit: BoxFit.fitHeight,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.23,
                  color: Color(0xFF171717).withOpacity(0.4),
                  child: Center(
                    child: Text(
                      'Shoes',
                      style: kHeadingStyle2,
                    ),
                  ),
                ),
                Positioned(
                    top: 40.h,
                    left: 20.h,
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    )),

              ],
            ),


            SizedBox(
              height: 10.h,
            ),
            buildTabRow(context),
            SizedBox(
              height: 10.h,
            ),
            InkWell(onTap: () {}, child: Text('View All', style: kBodyStyle5)),
            handleTabPages(context, currentIndex),
            SizedBox(
              height: 10.h,
            ),
            SizedBox(
              height: 0100.h,
            ),
          ],
        ),
      ),
    );
  }
}

class ItemCard extends StatelessWidget {
  final String img;
  final String title;
  final String price;
  const ItemCard({
    Key? key, required this.img, required this.title, required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: (){

            Navigator.of(context).push(MaterialPageRoute(builder: (_)=>SingleItemScreen(imgUrl: img,)));
          },
          child: SizedBox(
            width: MediaQuery.of(context).size.width/2 -10,
            height: MediaQuery.of(context).size.width/2 -10,
            child: FadeInImage.memoryNetwork(
                placeholder: kTransparentImage,
                image: img,
                fit: BoxFit.cover),
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width/2 -20,
          child: Row(
            children: [
              Expanded(child: Text(title,style: kBodyStyle14,)),
              Text(price,style: kBodyStyle5,)
            ],
          )
        ),

      ],
    );
  }
}

