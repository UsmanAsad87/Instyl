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

class CustomButton2 extends StatelessWidget {
  CustomButton2({
    required this.onPressed,
    required this.buttonText,
    this.isLoading = false,
    required this.fillColor,
  });
  final Function()? onPressed;
  final String buttonText;
  final bool isLoading;
  final Color fillColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.h),
      child: RawMaterialButton(
        elevation: 2,
        fillColor: fillColor,
        onPressed: onPressed,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: SizedBox(
          height: 50.h,
          width: 183.w,
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

class CustomButton3 extends StatelessWidget {
  CustomButton3({
    required this.onPressed,
    required this.buttonText,
    this.isLoading = false,
    this.icon,
  });
  final Function()? onPressed;
  final String buttonText;
  final bool isLoading;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.h),
      child: RawMaterialButton(
        elevation: 0,
        fillColor: const Color(0xFFF4F4F4),
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
                : Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (icon != null) ...[
                        Icon(
                          icon,
                          color: Colors.black,
                          size: 20,
                        ),
                        SizedBox(
                          width: 20.w,
                        ),
                      ],
                      Text(buttonText, style: kBodyStyle14),
                    ],
                  ),
          ),
        ),
      ),
    );
  }
}
