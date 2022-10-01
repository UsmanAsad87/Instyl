import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:instyl/screens/chat_screem.dart';
import 'package:instyl/screens/signup_screen.dart';
import 'package:instyl/screens/topics_page.dart';
import 'package:instyl/widgets/custom_button.dart';
import '../constants.dart';
import '../utils/validator.dart';
import '../widgets/custom_text_field.dart';

class InboxPageScreen extends StatefulWidget {
  static const routeName = '/inbox_screen';
  const InboxPageScreen({
    Key? key,
  }) : super(key: key);

  @override
  _InboxPageScreenState createState() => _InboxPageScreenState();
}

class _InboxPageScreenState extends State<InboxPageScreen> {
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
        backgroundColor: kBgColor,
        automaticallyImplyLeading: false,
        centerTitle: false,
        title: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Text('Inbox',style: kHeadingStyle4,),
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search,color: Colors.white,size: 30.w,))
        ],
      ),
      backgroundColor: kBgColor,
      body: Stack(
        children: [
          Positioned(
            right: 0,
            left: 0,
            child: Container(
              padding: EdgeInsets.only(top: 10.h,left: 30.h),
              width: double.infinity,
              height: 340.h,
              //alignment: Alignment.bottomCenter,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Friends',style: kBodyStyle11,),
                  SizedBox(height: 20.h,),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ChatCard(name: 'Dave',),
                        ChatCard(name: 'Tristen',),
                        ChatCard(name: 'Alyeesha',),
                        ChatCard(name: 'Olga',),
                        ChatCard(name: 'Dave',),
                        ChatCard(name: 'Tristen',),
                        ChatCard(name: 'Alyeesha',),
                        ChatCard(name: 'Olga',),


                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: (size.height * 0.21),
            child: Container(
              height: size.height - (size.height * 0.21),
              padding: EdgeInsets.only(left: 20.w, right: 20.w),
              decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(50.r),topRight: Radius.circular(50.r)),
              ),
              child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 80.h,
                      ),
                      ChatTile(name: 'Dave Boss', lastMsg: 'It’s a great idea!', imageUrl: imgUrl),
                      ChatTile(name: 'Abdul Aleem', lastMsg: 'We should arrnage a....!', imageUrl: imgUrl),
                      ChatTile(name: 'Tom Wicks', lastMsg: 'Hi, Do you still have th...', imageUrl: imgUrl),
                      ChatTile(name: 'Rowan Row', lastMsg: 'No issues budd', imageUrl: imgUrl),
                      ChatTile(name: 'Dave Boss', lastMsg: 'It’s a great idea!', imageUrl: imgUrl),
                      ChatTile(name: 'Dave Boss', lastMsg: 'It’s a great idea!', imageUrl: imgUrl),
                      ChatTile(name: 'Abdul Aleem', lastMsg: 'We should arrnage a....!', imageUrl: imgUrl),
                      ChatTile(name: 'Tom Wicks', lastMsg: 'Hi, Do you still have th...', imageUrl: imgUrl),
                      ChatTile(name: 'Rowan Row', lastMsg: 'No issues budd', imageUrl: imgUrl),
                      ChatTile(name: 'Dave Boss', lastMsg: 'It’s a great idea!', imageUrl: imgUrl),

                    ],
                  )),
            ),
          ),
        ],
      ),
    );
  }
}

class ChatTile extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String lastMsg;
  const ChatTile({
    Key? key, required this.name, required this.lastMsg, required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (_)=>ChatScreen()));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: ListTile(
          leading: CircleAvatar(
            radius: 27.r,
            backgroundImage: NetworkImage(
              imageUrl
            ),
          ),
          title: Text(name,style: kBodyStyle14,),
          subtitle: Text(lastMsg,style: kBodyStyle15,),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('8:12pm',style: kBodyStyle16,),
              SizedBox(height: 5.h,),
              CircleAvatar(
                radius: 12.r,
                backgroundColor: Color(0xFF2A99FF),
                child: Text('1',style: kBodyStyle12,),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ChatCard extends StatelessWidget {
  final String name;
  const ChatCard({
    Key? key, required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 30.0.w),
      child: Column(
        children: [
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (_)=>ChatScreen()));
            },
            child: CircleAvatar(
              radius: 27.r,
              backgroundImage:NetworkImage('https://s3-alpha-sig.figma.com/img/cf07/91ad/709e37412bd3987bc78ea8b4dbc48e60?Expires=1664150400&Signature=R8uSaXiIe4XwAGR6weUudSCi9VScAdsbgenMoN2SkgWrF-dpkC6w7cf5LAbyfv3vpqV9aYob0KNZQRnwut~o~SgpJ3lQa05aFST1Cm1Be5nJzX~LZ9frpm8YLOIA1AUAPjgxy-D4kiJZJtnhaI4A6pMqSXOVKqamvAqjaQnHY9D6aPoveOUX-1KJg1yhkIHPzC3lLMpX69uFt6xepAZ0LF1ujhM7O7G2qlcI4C1IXHrp8JuMCP-NUOhBSpahIBdsl-Jxj2ySmV6TiCjnbAcvHjUHA~6Bfpn8SmpJTbkzjEgtiNWPd2CXaI3Ar9UmSOe8tvvZZh8c7dwyl7OZzwRCag__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA'),
            ),
          ),
          SizedBox(height: 5.h,),
          Text(name,style: kBodyStyle13,),
        ],
      ),
    );
  }
}
