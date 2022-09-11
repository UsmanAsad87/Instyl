import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instyl/widgets/video_player_item.dart';

import '../constants.dart';

import 'package:flutter/foundation.dart' show kIsWeb;

import '../utils/loader.dart';

class SingleReelScreen extends StatefulWidget {
  final String reelUrl;
  const SingleReelScreen({Key? key, required this.reelUrl}) : super(key: key);

  @override
  State<SingleReelScreen> createState() => _SingleReelScreenState();
}

class _SingleReelScreenState extends State<SingleReelScreen> {
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
                VideoPlayerItem(videoUrl: widget.reelUrl),
                Positioned(
                  bottom: 100.h,
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
          ],
        ),
      ),
    );
  }
}
