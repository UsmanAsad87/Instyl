import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:instyl/screens/signup_screen.dart';
import 'package:instyl/screens/topics_page.dart';
import 'package:instyl/widgets/custom_button.dart';
import '../constants.dart';
import '../utils/validator.dart';
import '../widgets/custom_text_field.dart';

class AddPostScreen2 extends StatefulWidget {
  final String imgUrl;
  const AddPostScreen2({
    Key? key,
    required this.imgUrl,
  }) : super(key: key);

  @override
  _AddPostScreen2State createState() => _AddPostScreen2State();
}

class _AddPostScreen2State extends State<AddPostScreen2> {
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
            Icons.close_outlined,
            color: kWhiteColor,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: kBgColor,
        elevation: 0,
        centerTitle: true,
      ),
      backgroundColor: kBgColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric( horizontal: 30.w),
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
            SizedBox(height: 20.h),
            SizedBox(
              height: 280.h,
              child: Padding(padding: EdgeInsets.all(30.h),
              child:TextField(
                keyboardType: TextInputType.multiline,
                maxLines: null,
                minLines: 4,
                style: kBodyStyle13,
                decoration: InputDecoration(
                  fillColor: Colors.transparent,
                  filled: true,
                  hintStyle: kBodyStyle6,
                  hintText: "Write Caption.....",
                  border: InputBorder.none,
                ),
              ),),
            ),

            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: RawMaterialButton(
                  elevation: 0,
                  fillColor: const Color(0xFF2A99FF),
                  onPressed: (){},
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.r),
                  ),
                  child: SizedBox(
                    height: 40.h,
                    width: 154.w,
                    child: Center(
                      child: Text('Post', style: kBodyStyle4
                      ),
                    ),
                  ),
                ),
              ),
            ),




          ],
        ),
      ),
    );
  }
}
