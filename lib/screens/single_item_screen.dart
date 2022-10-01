import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:instyl/screens/signup_screen.dart';
import 'package:instyl/screens/topics_page.dart';
import 'package:instyl/widgets/custom_button.dart';
import '../constants.dart';
import '../utils/validator.dart';
import '../widgets/custom_text_field.dart';

class SingleItemScreen extends StatefulWidget {
  final String imgUrl;
  const SingleItemScreen({
    Key? key,
    required this.imgUrl,
  }) : super(key: key);

  @override
  _SingleItemScreenState createState() => _SingleItemScreenState();
}

class _SingleItemScreenState extends State<SingleItemScreen> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            CupertinoIcons.back,
            color: kBgColor,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: ImageIcon(
                const AssetImage(
                  'assets/like.png',
                ),
                size: 35.h,
                color: kBgColor),
            onPressed: () {},
          ),
        ],
        backgroundColor: kWhiteColor,
        elevation: 0,
        centerTitle: true,
      ),
      backgroundColor: kWhiteColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20.h),
            Center(
                child: Text(
              'Red Faux Snake Leather Loafers',
              style: kHeadingStyle5,
            )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.location_on_rounded),
                SizedBox(
                  width: 10.w,
                ),
                Text(
                  'Miami, USA',
                  style: kBodyStyle14,
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
              child: AspectRatio(
                aspectRatio: 1,
                child: SizedBox(
                  width: double.infinity,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image(
                      image: NetworkImage(
                        widget.imgUrl,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('\$30.00',style: kHeadingStyle6,),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text('Description',style: kHeadingStyle7,),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text('Brand new red leather loaers. Delivery or Pick up available in South Miami area.\nSize is US11',style: kBodyStyle14,)
                ],
              )
            ),

            SizedBox(height: 20.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomButton2(onPressed: (){}, buttonText:'Make Offer', fillColor: Color(0xFF1F1F1F)),
                  CustomButton2(onPressed: (){}, buttonText:'Message Seller', fillColor: Color(0xFF2FC1EF)),
                ],
              ),
            ),

            Column(
              children: [
                SizedBox(
                  height: 20.h,
                ),
                SizedBox(
                  height: 20.h,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
