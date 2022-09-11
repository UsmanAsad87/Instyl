import 'package:cached_video_player/cached_video_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instyl/constants.dart';

class VideoPlayerItem extends StatefulWidget {
  final String videoUrl;
  const VideoPlayerItem({Key? key, required this.videoUrl}) : super(key: key);

  @override
  State<VideoPlayerItem> createState() => _VideoPlayerItemState();
}

class _VideoPlayerItemState extends State<VideoPlayerItem> {
  late CachedVideoPlayerController videoPlayerController;
  bool isPlay = false;

  @override
  void initState() {
    super.initState();
    videoPlayerController = CachedVideoPlayerController.network(
      'https://firebasestorage.googleapis.com/v0/b/whatsapp-clone-dfd1d.appspot.com/o/chat%2Fvideo%2FtEYJdopUWGRfbqDwHTAghXK1j1j1%2FU6CuyUWHTPMcZH6KPuCGtng1aAM2%2F7d397af0-16c9-11ed-9707-1d7794cdbbec?alt=media&token=d238d8be-81c0-470f-b0fe-b55eb4335036',
    )..initialize().then((value) {
        videoPlayerController.setVolume(1);
      });
  }

  @override
  void dispose() {
    videoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return AspectRatio(
      aspectRatio: size.width / size.height,
      child: Stack(
        children: [
          CachedVideoPlayer(videoPlayerController),
          Align(
              alignment: Alignment.center,
              child: IconButton(
                  onPressed: () {
                    if (isPlay) {
                      videoPlayerController.pause();
                    } else {
                      videoPlayerController.play();
                    }
                    setState(() {
                      isPlay = !isPlay;
                    });
                  },
                  icon: isPlay
                      ? Icon(
                          Icons.pause_circle,
                          color: kWhiteColor,
                          size: 50.h,
                        )
                      : Icon(
                          Icons.play_circle,
                          color: kWhiteColor,
                          size: 50.h,
                        ))),
        ],
      ),
    );
  }
}
