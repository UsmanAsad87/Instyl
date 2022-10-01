import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instyl/screens/comments_screen.dart';
import 'package:instyl/widgets/custom_text_field.dart';
import 'package:transparent_image/transparent_image.dart';
import '../constants.dart';

class ProfileScreen extends StatefulWidget {
  static const routeName = '/profile_screen';

  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> with SingleTickerProviderStateMixin{
  List<String> tabNames = [
    'Photos',
    'Videos',
    'Tagged'
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
      height: 30.h,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: kBgColor,
      ),
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 20.0.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            for (var i in tabNames)
              buildTabButton(
                  context: context,
                  icon: i,
                  index: tabNames.indexOf(i),
                  function: () {}),
          ],
        ),
      ),
    );
  }

  buildTabButton(
      {required BuildContext context,
        required String icon,
        required Function function,
        required int index}) {
    return GestureDetector(
      onTap: () {
        setState(() {
          currentIndex = tabNames.indexOf(icon);
        });
      },
      child: Container(
          width:
          100,
          child: Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Center(
                child: Column(
                  children: [
                    Text(icon,style: kBodyStyle13,),
                    Container(
                      margin: EdgeInsets.only(
                          top: 4.h),
                      width: 40.w,
                      height: 1.h,
                      color: tabNames.indexOf(icon) == currentIndex
                          ? kWhiteColor
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
        return  ProfileGridView();
      case 1:
        return ProfileGridView();
      case 2:
        return ProfileGridView();
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.34,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: FadeInImage.memoryNetwork(
                      placeholder: kTransparentImage,
                      image:
                          'https://s3-alpha-sig.figma.com/img/7a89/7e08/8af4a910e6dddb9acafd32cbf6aa48ec?Expires=1664150400&Signature=Lu4w~4L9-lu75jutfVAxsQMhfbJT8mEvzdgnjbQAOim43C-S3m5eY5w3edqEjj4oI1Z-tBpnP~MjtT8tbMWMJDeEY4G3bELLsYt6E4UTZwsf1BPAOs7xYBrv11Bgnnp2u~8UV-R5MK88wr-6vpNdgWtaBejBmbBJzmpdXTEl5KvDYpYV6JfD9fNukpYTosE9YYrdjiCaYUPrpaWLImnZfD3kbQHWx6xxNAD46ajX-vxxJYE~jhkx~MqWsGFsYT9IMAqe2yTjL5vB5CmApTYih~8I0acDAZgziEeY5uloJhWe0wSU5XyaToLXjSGXSnoHCYKmWxIkmk6ijIF0k1~zhw__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
                      fit: BoxFit.fitWidth),
                ),
                Positioned(
                  left: MediaQuery.of(context).size.width/2 - 45.w,
                    bottom: 0,
                    child: CircleAvatar(
                      radius: 47.r,
                      backgroundColor: kWhiteColor,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://s3-alpha-sig.figma.com/img/c26c/4d0d/32c58129607c387be3d87865534980dd?Expires=1664150400&Signature=JXn6FzzH9qFe3yPBovjNa9wiKPyaSx7VSbGXnCdGfo7Jc-f-MmXcG6juGmSVrEwuHzcnN3slHwKlTGqmzv3vtxqvFWA2ZMS87CKw~l-R0VOcCHCRM~5o4vPoa3TP6VC0AzErGYWnPla2f44sUYkdFyO6ilxCPW3YJ0wxisFSmfkCAXfrcWFuNaOn72CcWI6CWn5RkwoL6wfYI55OgAYTK4kp3PZ6TdBGHrhiWkqYfulF0Mwnbl8rO1zxyEfjbboYY3y0L70FODYijWUX-allEu-GrTG6-b9rEsbDPCfv-6u5AcEBMYCzymDYcH9tfYiRgpFL5qYXnlMkzOm3mDNQoA__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA'),
                        radius: 45.r,
                      ),
                    )),
                Positioned(
                  top: 40.h,
                  left: 20.h,
                  child: InkWell(
                    onTap: (){
                      
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 3.h,horizontal: 8.w ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: Color(0xFF464646).withOpacity(0.4)
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.edit,color: Colors.white,size: 12.h,),
                          SizedBox(width: 5.w,),
                          Text('Edit',style: kBodyStyle10 ,)
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 20.h,),
            Center(child: Text('Jack Jones',style: kBodyStyle4,)),
            SizedBox(height: 20.h,),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 30.0.w),
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 3.h,horizontal: 30.w ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                    color: const Color(0xFF333333)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text('Following',style: kBodyStyle11,),
                        Text('983',style: kBodyStyle12,),
                      ],
                    ),
                   Container(
                     height: 25.h,
                     width: 1.w,
                     color: kWhiteColor.withOpacity(0.5),
                   ),
                    Column(
                      children: [
                        Text('Followers',style: kBodyStyle11,),
                        Text('10.5k',style: kBodyStyle12,),
                      ],
                    ),Container(
                      height: 25.h,
                      width: 1.w,
                      color: kWhiteColor.withOpacity(0.5),
                    ),
                    Column(
                      children: [
                        Text('Posts',style: kBodyStyle11,),
                        Text('116',style: kBodyStyle12,),
                      ],
                    ),

                  ],
                ),
              ),
            ),

            IconButton(
              icon: ImageIcon(
                  const AssetImage('assets/edit_prop.png'),
                  size: 20.h,
                  color: kWhiteColor),
              onPressed: () {},
            ),
            //SizedBox(height: 10.h,),
            Center(
              child: Text(
                'Fashion connisuer and style consultant. DM for services',
                style: kBodyStyle13,
              ),
            ),

            SizedBox(
              height: 30.h,
            ),
            buildTabRow(context),
            SizedBox(
              height: 10.h,
            ),
            handleTabPages(context, currentIndex),



          ],
        ),
      ),
    );
  }
}

class ProfileGridView extends StatelessWidget {
  const ProfileGridView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount( crossAxisCount: 3),
        itemCount: listImages.length,
        itemBuilder: (BuildContext ctx, index) {
          return FadeInImage.memoryNetwork(
              placeholder: kTransparentImage,
              image:listImages[index],
             fit: BoxFit.cover);
        });
  }
}
