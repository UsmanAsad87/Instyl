import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final Function(String) onChanged;
  final Function(String) onFieldSubmitted;
  final TextInputType? inputType;
  final bool obscure;
  final String? Function(String?)? validatorFn;

  const CustomTextField({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.onChanged,
    required this.onFieldSubmitted,
    this.inputType,
    required this.obscure,
    this.validatorFn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 40.h, top: 5.h),
      padding: EdgeInsets.only(left: 20.w, right: 10.w),
      height: 55.h,
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Center(
        child: TextFormField(
          validator: validatorFn,
          obscureText: obscure,
          controller: controller,
          keyboardType: inputType,
          style: kBodyStyle1,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: kBodyStyle1a,
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
          ),
          onFieldSubmitted: onFieldSubmitted,
          onChanged: onChanged,
        ),
      ),
    );
  }
}

class CustomTextField2 extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final Function(String) onChanged;
  final Function(String) onFieldSubmitted;
  final TextInputType? inputType;
  const CustomTextField2(
      {Key? key,
      required this.controller,
      required this.hintText,
      required this.onChanged,
      required this.onFieldSubmitted,
      this.inputType})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.h, top: 5.h),
      padding: EdgeInsets.only(left: 20.w, right: 10.w),
      height: 40.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xFFEFEEEE),
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: TextFormField(
        controller: controller,
        keyboardType: inputType,
        style: kBodyStyle6a,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: kBodyStyle6,
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
        ),
        onFieldSubmitted: onFieldSubmitted,
        onChanged: onChanged,
      ),
    );
  }
}
class CustomTextField3 extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final Function(String) onChanged;
  final Function(String) onFieldSubmitted;
  final TextInputType? inputType;
  final int maxLines;
  const CustomTextField3(
      {Key? key,
        required this.controller,
        required this.hintText,
        required this.onChanged,
        required this.onFieldSubmitted,
        this.inputType, required this.maxLines})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.h, top: 5.h),
      padding: EdgeInsets.only(left: 20.w, right: 10.w),
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xFFF4F4F4),
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: TextFormField(
        controller: controller,
        keyboardType: inputType,
        style: kBodyStyle14,
        maxLines: maxLines>1?null:1,
        minLines: maxLines,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: kBodyStyle14b,
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
        ),
        onFieldSubmitted: onFieldSubmitted,
        onChanged: onChanged,
      ),
    );
  }
}
