import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:instyl/screens/signup_screen.dart';
import 'package:instyl/screens/topics_page.dart';
import 'package:instyl/widgets/custom_button.dart';
import '../constants.dart';
import '../utils/validator.dart';
import '../widgets/custom_text_field.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({
    Key? key,
  }) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();
  GlobalKey<FormState> loginInKey = GlobalKey<FormState>();

  bool _isLoading = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passController.dispose();
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
        backgroundColor: kWhiteColor,
        elevation: 0,
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Text(
            'Dave Jones',
            style: kBodyStyle4b,
          ),
        ),
      ),
      backgroundColor: kBgColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: size.height - (size.height * 0.35),
              padding: EdgeInsets.only(left: 20.w, right: 20.w, bottom: 10.h),
              decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50.r),
                    bottomRight: Radius.circular(50.r)),
              ),
              child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: const [
                      MessageCard(
                        msg:
                            'Hi Dave, Are you still available on tuesday to go over the project in more detail?',
                        isSender: false,
                      ),
                      MessageCard(
                        msg:
                            'Yes absolutely. Where do you prefer to meet? Or will it be online via zoom?',
                        isSender: true,
                      ),
                      MessageCard(
                        msg:
                            'If you like i can come over to your side and ill also bring wayne so he can stay in the loop. What do you think?',
                        isSender: true,
                      ),
                      MessageCard(
                        msg:
                            'Okay perfect. Lets meet at  starbucks on marine road at 12pm. I have the notes so no need to bring your laptop.',
                        isSender: false,
                      ),
                      MessageCard(
                        msg:
                            'Hi Dave, Are you still available on tuesday to go over the project in more detail?',
                        isSender: false,
                      ),
                      MessageCard(
                        msg:
                            'Yes absolutely. Where do you prefer to meet? Or will it be online via zoom?',
                        isSender: true,
                      ),
                      MessageCard(
                        msg:
                            'If you like i can come over to your side and ill also bring wayne so he can stay in the loop. What do you think?',
                        isSender: true,
                      ),
                      MessageCard(
                        msg:
                            'Okay perfect. Lets meet at  starbucks on marine road at 12pm. I have the notes so no need to bring your laptop.',
                        isSender: false,
                      )
                    ],
                  )),
            ),
            Column(
              children: [
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.attach_file,
                            color: Colors.white,
                            size: 20,
                          )),
                    ),
                    Expanded(
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        style: kBodyStyle11,
                        decoration: InputDecoration(
                          hintText: 'Attachments',
                          hintStyle: kBodyStyle11a,
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                        ),
                        onChanged: (val) {},
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  //width: double.infinity,
                  height: 100.h,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      physics: BouncingScrollPhysics(),
                      itemCount: listImages.length,
                      itemBuilder: (context, index) {
                        return AttachmentCard(imageUrl: listImages[index]);
                      }),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class AttachmentCard extends StatelessWidget {
  final String imageUrl;
  const AttachmentCard({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h,horizontal: 5.w),
      child: Container(
        height: 81.h,
        width: 104.w,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image(
            image: NetworkImage(
              imageUrl,
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

class MessageCard extends StatelessWidget {
  final String msg;
  final bool isSender;
  const MessageCard({
    Key? key,
    required this.msg,
    required this.isSender,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: Column(
        crossAxisAlignment:
            isSender ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment:
                isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
            children: [
              if (!isSender)
                CircleAvatar(
                  radius: 20.r,
                  backgroundImage: NetworkImage(
                      'https://s3-alpha-sig.figma.com/img/cf07/91ad/709e37412bd3987bc78ea8b4dbc48e60?Expires=1664150400&Signature=R8uSaXiIe4XwAGR6weUudSCi9VScAdsbgenMoN2SkgWrF-dpkC6w7cf5LAbyfv3vpqV9aYob0KNZQRnwut~o~SgpJ3lQa05aFST1Cm1Be5nJzX~LZ9frpm8YLOIA1AUAPjgxy-D4kiJZJtnhaI4A6pMqSXOVKqamvAqjaQnHY9D6aPoveOUX-1KJg1yhkIHPzC3lLMpX69uFt6xepAZ0LF1ujhM7O7G2qlcI4C1IXHrp8JuMCP-NUOhBSpahIBdsl-Jxj2ySmV6TiCjnbAcvHjUHA~6Bfpn8SmpJTbkzjEgtiNWPd2CXaI3Ar9UmSOe8tvvZZh8c7dwyl7OZzwRCag__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA'),
                ),
              SizedBox(
                width: 10.w,
              ),
              Container(
                alignment:
                    isSender ? Alignment.centerRight : Alignment.centerLeft,
                width: MediaQuery.of(context).size.width * 0.45,
                padding: EdgeInsets.all(16.h),
                decoration: BoxDecoration(
                  color: isSender
                      ? const Color(0xFF71BBFF)
                      : const Color(0xFFEEEEEE),
                  borderRadius: isSender
                      ? BorderRadius.only(
                          bottomLeft: Radius.circular(10.r),
                          topLeft: Radius.circular(10.r),
                          topRight: Radius.circular(10.r))
                      : BorderRadius.only(
                          bottomRight: Radius.circular(10.r),
                          topLeft: Radius.circular(10.r),
                          topRight: Radius.circular(10.r)),
                ),
                child: Text(
                  msg,
                  style: isSender ? kBodyStyle17b : kBodyStyle17,
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 5.0.h, left: 50.w, right: 10.w),
            child: Text(
              '5.22 PM',
              style: kBodyStyle17,
            ),
          ),
        ],
      ),
    );
  }
}
