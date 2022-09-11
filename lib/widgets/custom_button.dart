import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instyl/constants.dart';
import 'package:instyl/utils/loader.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    required this.onPressed,
    required this.buttonText,
    this.isLoading = false,
  });
  final Function()? onPressed;
  final String buttonText;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.h),
      child: RawMaterialButton(
        elevation: 2,
        fillColor: const Color(0xFF0F0F0F),
        onPressed: onPressed,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: SizedBox(
          height: 50.h,
          width: double.infinity,
          child: Center(
            child: isLoading
                ? spinKit(color: kButtonTextColor)
                : Text(buttonText, style: kBodyStyle3),
          ),
        ),
      ),
    );
  }
}
