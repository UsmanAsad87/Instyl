import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:instyl/constants.dart';
import 'package:transparent_image/transparent_image.dart';


import 'single_feed_screen.dart';

class FeedsScreen extends StatefulWidget {
  static const routeName = '/feeds_screen';
  const FeedsScreen({Key? key}) : super(key: key);

  @override
  State<FeedsScreen> createState() => _FeedsScreenState();
}

class _FeedsScreenState extends State<FeedsScreen> {

  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.countBuilder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        mainAxisSpacing: 10,
        crossAxisSpacing: 8,
        crossAxisCount: 2,
        itemCount: listImages.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) => SingleFeedScreen(
                            imgUrl: listImages[index],
                          )));
              //FeedScreen();

              print(listImages[index]);
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                color: Colors.transparent,
              ),
              child: FadeInImage.memoryNetwork(
                  placeholder: kTransparentImage,
                  image: listImages[index],
                  fit: BoxFit.cover),
            ),
          );
        },
        staggeredTileBuilder: (index) {
          return StaggeredTile.count(
              1, index % 4 == 3 || index % 4 == 0 ? 1.4 : 1.9);
        });
  }
}
