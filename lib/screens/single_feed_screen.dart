import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instyl/screens/comments_screen.dart';
import 'package:instyl/widgets/custom_text_field.dart';
import 'package:transparent_image/transparent_image.dart';
import '../constants.dart';

class SingleFeedScreen extends StatefulWidget {
  static const routeName = '/feed_screen';
  final String imgUrl;
  const SingleFeedScreen({Key? key, required this.imgUrl}) : super(key: key);

  @override
  State<SingleFeedScreen> createState() => _SingleFeedScreenState();
}

class _SingleFeedScreenState extends State<SingleFeedScreen> {
  final TextEditingController _commentController = TextEditingController();

  @override
  void dispose() {
    _commentController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.65,
                  child: FadeInImage.memoryNetwork(
                      placeholder: kTransparentImage,
                      image: widget.imgUrl,
                      fit: BoxFit.fitWidth),
                ),
                Positioned(
                  bottom: 20.h,
                  right: 20.h,
                  child: Container(
                    height: 274.h,
                    width: 55.w,
                    decoration: BoxDecoration(
                        color: Color(0xFF696868).withOpacity(0.6),
                        borderRadius: BorderRadius.circular(40.r)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            IconButton(
                              icon: ImageIcon(
                                  const AssetImage('assets/like.png'),
                                  size: 40.h,
                                  color: kWhiteColor),
                              onPressed: () {},
                            ),
                            //Image.asset('assets/like.png',height: 36,width: 27,),
                            Text(
                              '2323',
                              style: kBodyStyle8,
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            IconButton(
                              icon: ImageIcon(
                                  const AssetImage('assets/msg_icon.png'),
                                  size: 40.h,
                                  color: kWhiteColor),
                              onPressed: () {},
                            ),
                            Text(
                              '323',
                              style: kBodyStyle8,
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            IconButton(
                              icon: Icon(
                                Icons.share,
                                color: kWhiteColor,
                                size: 25,
                              ),
                              onPressed: () {},
                            ),
                            Text(
                              'Share',
                              style: kBodyStyle8,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: kDefaultPadding, vertical: kDefaultPadding * 2),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Checkout my weekend style. What do you guys think? \nComment below 🔥',
                    style: kBodyStyle7,
                  ),
                  SizedBox(
                    height: 90.h,
                  ),
                  CustomTextField2(
                      controller: _commentController,
                      hintText: 'Add Comment...',
                      onChanged: (val) {},
                      onFieldSubmitted: (val) {}),
                  InkWell(
                      onTap: () {
                        showFeedComments(
                          context,
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text(
                          'View 171 Comments',
                          style: kBodyStyle5,
                        ),
                      )),
                  SizedBox(
                    height: 20.h,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

showFeedComments(context) {
  showModalBottomSheet(
    context: context,
    backgroundColor: kWhiteColor,
    useRootNavigator: true,
    isScrollControlled: true,
    isDismissible: false,
    barrierColor: Colors.black45.withOpacity(0.8),
    elevation: 10,
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
      topRight: Radius.circular(40),
      topLeft: Radius.circular(40),
    )),
    builder: (context) {
      return FeedComments();
    },
  );
}
