import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:instyl/screens/signup_screen.dart';
import 'package:instyl/screens/topics_page.dart';
import 'package:instyl/widgets/custom_button.dart';
import '../constants.dart';
import '../utils/validator.dart';
import '../widgets/custom_text_field.dart';

class SellItemScreen extends StatefulWidget {
  const SellItemScreen({
    Key? key,
  }) : super(key: key);

  @override
  _SellItemScreenState createState() => _SellItemScreenState();
}

class _SellItemScreenState extends State<SellItemScreen> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  final TextEditingController _descController = TextEditingController();
  GlobalKey<FormState> signUpKey = GlobalKey<FormState>();
  bool _isLoading = false;

  @override
  void dispose() {
    _titleController.dispose();
    _priceController.dispose();
    _descController.dispose();
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
            color: kBgColor,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: kWhiteColor,
        elevation: 0,
      ),
      backgroundColor: kWhiteColor,
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.all(kDefaultPadding),
          child: Column(
            children: [
              Center(
                  child: Text(
                'Sell Item',
                style: kHeadingStyle3b,
              )),
              SizedBox(height: 40.h),

              CustomTextField3(controller:_titleController, hintText: 'Title', onChanged: (val){}, onFieldSubmitted: (val){},maxLines: 1,),
              CustomButton3(onPressed: (){}, buttonText: 'Select Category'),
              Align(alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text('Mens > Shoes > Smart',style: kBodyStyle14b,),
                  )),

              CustomButton3(onPressed: (){}, buttonText: 'Add pictures', icon: Icons.camera_alt),

              SizedBox(height: 30.h),
              CustomTextField3(controller:_priceController, hintText: 'Price', onChanged: (val){}, onFieldSubmitted: (val){},maxLines: 1,),

              SizedBox(height: 20.h),

              CustomTextField3(controller:_descController, hintText: 'Description', onChanged: (val){}, onFieldSubmitted: (val){},maxLines: 6,inputType: TextInputType.multiline,),
              SizedBox(height: 10.h),
              CustomButton3(onPressed: (){}, buttonText: 'Add Location', icon: Icons.location_on),
              SizedBox(height: 20.h),


              RawMaterialButton(
                elevation: 2,
                fillColor: const Color(0xFF2A99FF),
                onPressed: (){},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.r),
                ),
                child: SizedBox(
                  height: 38.h,
                  width: 184.w,
                  child: Center(
                    child: Text('List Item', style: kBodyStyle4
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
