import 'package:cached_video_preview/cached_video_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instyl/screens/single_reel_screen.dart';

import '../constants.dart';

import 'package:flutter/foundation.dart' show kIsWeb;

import 'feed_screen.dart';

class ReelsScreen extends StatefulWidget {
  static const routeName = '/feeds_screen';
  const ReelsScreen({Key? key}) : super(key: key);

  @override
  State<ReelsScreen> createState() => _ReelsScreenState();
}

class _ReelsScreenState extends State<ReelsScreen> {
  List<String> listVideos = [
    'https://www.youtube.com/shorts/XdnO8iiOfOM',
    'https://www.youtube.com/shorts/JxvCYm17eOU',
    'https://www.youtube.com/shorts/hS1LNpuhslI',
    'https://www.youtube.com/shorts/Qr1NSC86R0E',
    'https://firebasestorage.googleapis.com/v0/b/whatsapp-clone-dfd1d.appspot.com/o/chat%2Fvideo%2FtEYJdopUWGRfbqDwHTAghXK1j1j1%2FU6CuyUWHTPMcZH6KPuCGtng1aAM2%2F7d397af0-16c9-11ed-9707-1d7794cdbbec?alt=media&token=d238d8be-81c0-470f-b0fe-b55eb4335036',
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: listVideos.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0.w),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => SingleReelScreen(
                              reelUrl: listVideos[index],
                            )));
              },
              child: Stack(
                children: [
                  AspectRatio(
                    aspectRatio: index.isOdd ? 0.94 : 0.71,
                    child: CachedVideoPreviewWidget(
                      path: listVideos[index],
                      type: SourceType.remote,
                      remoteImageBuilder: (BuildContext context, url) =>
                          Image.network(
                        url,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 80.h,
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
            ),
          );
        });
  }
}
