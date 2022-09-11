import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instyl/constants.dart';
import 'package:instyl/widgets/custom_text_field.dart';

class FeedComments extends StatefulWidget {
  const FeedComments({Key? key}) : super(key: key);

  @override
  _FeedCommentsState createState() => _FeedCommentsState();
}

class _FeedCommentsState extends State<FeedComments> {
  int commentCount = 0;
  bool loading = true;
  bool updating = false;
  TextEditingController commentController = TextEditingController();
  GlobalKey<FormState> addCommentKey = GlobalKey<FormState>();
  List<String> commentList = [
    'Nice pic ;)',
    'Sick look brother! ',
    'Its nice to see someone showcasing smart casual attire and showing where to purchase the items. Thumbs up bro',
    'Its nice to see someone showcasing smart casual attire and showing where to purchase the items. Thumbs up bro',
    'Sick look brother! ',
    'Its nice to see someone showcasing smart casual attire and showing where to purchase the items. Thumbs up bro',
    'Its nice to see someone showcasing smart casual attire and showing where to purchase the items. Thumbs up bro',
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Form(
          key: addCommentKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // title & back
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 20.w,
                    ),
                    Text(
                      '    Comments',
                      style: kBodyStyle9,
                    ),
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.keyboard_arrow_down,
                          color: kBgColor,
                          size: 25,
                        ))
                  ],
                ),
              ),

              // comments
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 3,
                child: Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Scrollbar(
                    thickness: 8.w,
                    radius: Radius.circular(10.r),
                    child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: commentList.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            leading: const CircleAvatar(
                              radius: 20,
                              backgroundImage: NetworkImage(
                                  'https://s3-alpha-sig.figma.com/img/1ad5/dc70/f01e8b83c1656486b0741eb5b180640d?Expires=1663545600&Signature=hhwIiBzbGSQfUSVcu0a8OFccIGkRXn89-opIePJJu82lHohYdzBRr5jI0Qy96thOIxC7GPPSpWipIpHq9WDhs3tVmV0fLdrIulKT6C9WZeJeH~lF8kHSNNAWB5ZPo6ut-w0YgNYJYWIzJIp22HEK~hAf4wTfPyr~y9XwNQjBvyjF-aiViUf-4p9Yf1Qk7ddEYnu43wD377akYvxFrBkQTQHImipCz8y~ffxAzCLUYh2q27NZdU8CUCu-Wt7v3HGLrdRfnNFtuwHWizJINkK5bGJZj8VOFcDnQQtVYGRXZUTnHAU~CXTrKrZsFCEumBAhdFAirgikyEaG4ZIkruiYmg__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA'),
                            ),
                            title: Text(
                              commentList[index],
                              style: kBodyStyle7,
                            ),
                          );
                        }),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.all(kDefaultPadding),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CircleAvatar(
                      radius: 20,
                      backgroundImage: NetworkImage(
                          'https://s3-alpha-sig.figma.com/img/4ede/9519/934ce44eb01596d98bb323cd071ccdb1?Expires=1663545600&Signature=PCuwJ0XGiX-9LviAX6pvmhyObHvU~~Hz1S-GE9M6aGO7XoLB~nARTIGyJwZDDmWOTumCpEw~iBzM9eUtMc6MuaQuD~OtW9lg4gnJNCSFx3BbTv1p3Aefp6IbyNA3S35A1S8qoO~CPwFIfX99he2ACW2Sr7ntZbmFJqkw~opIYTUD2oVIva2pM7183gGIaTJIsc4ewqa0~7yEaCZefHkv~LKP3sSQ0TBs8EjFE6FPXPwjaQO~k5GpO0rxfdMvv2EcbZObUvBJw0qS6KI~uVKKF8YjSWJsHdMQDNeWIEUL5bSQrMhr7qumBtRTon0HOP5XwqYTAUHGjxcm2-mPx6CRYg__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA'),
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: CustomTextField2(
                            controller: commentController,
                            hintText: 'Add Comment...',
                            onChanged: (val) {},
                            onFieldSubmitted: (val) {}),
                      ),
                    ),
                  ],
                ),
              )

              // submit comment
            ],
          ),
        ),
      ),
    );
  }
}
