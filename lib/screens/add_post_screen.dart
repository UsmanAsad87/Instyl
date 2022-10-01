import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:instyl/screens/add_post_screen_2.dart';
import 'package:instyl/utils/validator.dart';
import 'package:instyl/widgets/custom_text_field.dart';
import 'package:transparent_image/transparent_image.dart';

import '../constants.dart';
import '../utils/toast.dart';
import '../widgets/custom_button.dart';
import 'login_screen.dart';

class AddPostScreen extends StatefulWidget {
  const AddPostScreen({
    Key? key,
  }) : super(key: key);

  @override
  _AddPostScreenState createState() => _AddPostScreenState();
}

class _AddPostScreenState extends State<AddPostScreen>   with SingleTickerProviderStateMixin  {

  List<String> tabNames = [
    'View All',
    'Videos',
    'Photos'
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
      decoration: const BoxDecoration(
        color: kWhiteColor,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
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
          width: 100,
          child: Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Center(
                child: Column(
                  children: [
                    Text(title,style: tabNames.indexOf(title) == currentIndex
                        ? kBodyStyle14:kBodyStyle14b,),
                    SizedBox(height: 5.h,),
                    Container(
                      margin: EdgeInsets.only(top:5.h),
                      width: double.infinity,
                      height: 3.h,
                      color: tabNames.indexOf(title) == currentIndex
                          ? kBlackFontColor
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
        return GridView.builder(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount( crossAxisCount: 3,mainAxisSpacing: 3,crossAxisSpacing: 3),
            itemCount: listImages.length,
            itemBuilder: (BuildContext ctx, index) {
             return InkWell(
               onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder: (_)=>AddPostScreen2(imgUrl: listImages[index],)));
               },
                child: FadeInImage.memoryNetwork(
                    placeholder: kTransparentImage,
                    image:listImages[index],
                    fit: BoxFit.cover),
              );
            });
      case 1:
        return GridView.builder(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount( crossAxisCount: 3,mainAxisSpacing: 3,crossAxisSpacing: 3),
            itemCount: listImages.length,
            itemBuilder: (BuildContext ctx, index) {
              return InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>AddPostScreen2(imgUrl: listImages[index],)));
                },
                child: FadeInImage.memoryNetwork(
                    placeholder: kTransparentImage,
                    image:listImages[index],
                    fit: BoxFit.cover),
              );
            });
//Text('12',style: kHeadingStyle2,);
      case 2:
        return GridView.builder(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount( crossAxisCount: 3,mainAxisSpacing: 3,crossAxisSpacing: 3),
            itemCount: listImages.length,
            itemBuilder: (BuildContext ctx, index) {
              return InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>AddPostScreen2(imgUrl: listImages[index],)));
                },
                child: FadeInImage.memoryNetwork(
                    placeholder: kTransparentImage,
                    image:listImages[index],
                    fit: BoxFit.cover),
              );
            });
    }
  }


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kBgColor,
      body: Stack(
        children: [

          Positioned(
            left: 0,
            right: 0,
            top: (size.height * 0.18),
            child: Container(
              height: size.height - (size.height * 0.18),
              decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30.r),topRight: Radius.circular(30.r)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  buildTabRow(context),
                  Expanded(
                    child: SingleChildScrollView(
                      child:handleTabPages(context, currentIndex), 
                    ),
                  )
                  //handleTabPages(context, currentIndex),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
