import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const networkImageUrl =
    'https://i.pinimg.com/originals/06/81/39/068139bff0b22024e775bfcbb42ed3b4.jpg';
const imgUrl =
    'https://s3-alpha-sig.figma.com/img/abcc/10b1/a9256cc76fd4787ef2f4fffd7662d601?Expires=1663545600&Signature=a1oDnZZkdRb4H-1WMBMW5hEDM-2kFA-jlC9k-XU4ZVOp3lK2TtyhE8dcJvTd-osEz74ce5gmofhuDe4pW0PYK9h6CQ4La3x1K43tjYzUZK8xflPtR2eUoZeOU92WiJAMar1Qt0a67LG4Pd-~qxnvNI~Jt0AgyeJYZo4MWl47sLBPyVeHvUXEXs9WXVQp7BZXCI3Ow1dj3ObzRi7U9MUQQmw8QabPsDgzFpGuRFZyf~-yxvuGPSAjbiipitOrXD8U7YD9Vag2AorCfLHgZt7ifXiIXoi1ZVKWBIhGuHdOb~gctaiwTE1JuYg5vZ15lHdJLCWZNP6PUAO3Jqf5MUCHQw__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA';

const kPrimaryColor = Colors.white;
const kBgColor = Color(0xFF000000);
const kSecondaryColor = Color(0xFFF1F1F1);

const kWhiteColor = Color(0xFFFFFFFF);
const kWhiteFontColor = Color(0xFFFFFFFF);
const kBlackFontColor = Color(0xFF000000);

const kButtonTextColor = Color(0xFF06E96D);
const kProfileTextColor = Color(0xFF04D162);
const kEditButtonColor = Color(0xFF252525);

final kLogoStyle = GoogleFonts.poppins(
    color: kWhiteColor, fontSize: 65.sp, fontWeight: FontWeight.w600);

final kHeadingStyle1 = GoogleFonts.poppins(
    color: kBlackFontColor, fontSize: 30.sp, fontWeight: FontWeight.w500);
final kHeadingStyle2 = GoogleFonts.poppins(
    color: kWhiteFontColor, fontSize: 30.sp, fontWeight: FontWeight.w500);
final kHeadingStyle3 = GoogleFonts.poppins(
    color: kWhiteFontColor, fontSize: 24.sp, fontWeight: FontWeight.w600);
final kHeadingStyle3b = GoogleFonts.poppins(
    color: kBlackFontColor, fontSize: 24.sp, fontWeight: FontWeight.w600);
final kHeadingStyle4 = GoogleFonts.poppins(
    color: kWhiteFontColor, fontSize: 20.sp, fontWeight: FontWeight.w600);
final kHeadingStyle5 = GoogleFonts.poppins(
    color: kBlackFontColor, fontSize: 20.sp, fontWeight: FontWeight.w600);
final kHeadingStyle6 = GoogleFonts.poppins(
    color:  const Color(0xFF5C5C5C), fontSize: 20.sp, fontWeight: FontWeight.w500);
final kHeadingStyle7 = GoogleFonts.poppins(
    color: kBlackFontColor, fontSize: 18.sp, fontWeight: FontWeight.w600);

final kBodyStyle1 = GoogleFonts.poppins(
    color: kBlackFontColor, fontSize: 15.sp, fontWeight: FontWeight.w500);
final kBodyStyle1a = GoogleFonts.poppins(
    color: const Color(0xFF828282),
    fontSize: 15.sp,
    fontWeight: FontWeight.w500);
final kBodyStyle2 = GoogleFonts.poppins(
    color: const Color(0xFF232323),
    fontSize: 15.sp,
    fontWeight: FontWeight.w500);
final kBodyStyle2a = GoogleFonts.poppins(
    color: const Color(0xFF232323),
    fontSize: 15.sp,
    fontWeight: FontWeight.w600);
final kBodyStyle3 = GoogleFonts.poppins(
    color: kWhiteFontColor, fontSize: 15.sp, fontWeight: FontWeight.w500);
final kBodyStyle4 = GoogleFonts.poppins(
    color: kWhiteFontColor, fontSize: 16.sp, fontWeight: FontWeight.w600);
final kBodyStyle4b = GoogleFonts.poppins(
    color: kBlackFontColor, fontSize: 16.sp, fontWeight: FontWeight.w600);
final kBodyStyle5 = GoogleFonts.poppins(
    color: const Color(0xFF9B9B9B),
    fontSize: 14.sp,
    fontWeight: FontWeight.w500);
final kBodyStyle6 = GoogleFonts.poppins(
    color: const Color(0xFF8E8E8E),
    fontSize: 12.sp,
    fontWeight: FontWeight.w500);
final kBodyStyle6a = GoogleFonts.poppins(
    color: kBlackFontColor, fontSize: 12.sp, fontWeight: FontWeight.w500);
final kBodyStyle7 = GoogleFonts.poppins(
    color: const Color(0xFF2E2E2E),
    fontSize: 12.sp,
    fontWeight: FontWeight.w500);
final kBodyStyle9 = GoogleFonts.poppins(
    color: const Color(0xFF424242),
    fontSize: 15.sp,
    fontWeight: FontWeight.w500);
final kBodyStyle8 = GoogleFonts.poppins(
    color: kWhiteFontColor, fontSize: 11.sp, fontWeight: FontWeight.w500);
final kBodyStyle10 = GoogleFonts.poppins(
    color: kWhiteFontColor, fontSize: 9.sp, fontWeight: FontWeight.w600);
final kBodyStyle11 = GoogleFonts.poppins(
    color: kWhiteColor, fontSize: 14.sp, fontWeight: FontWeight.w400);
final kBodyStyle11a = GoogleFonts.poppins(
    color: kWhiteColor.withOpacity(0.7), fontSize: 14.sp, fontWeight: FontWeight.w400);
final kBodyStyle12 = GoogleFonts.poppins(
    color: kWhiteFontColor, fontSize: 12.sp, fontWeight: FontWeight.w600);
final kBodyStyle13 = GoogleFonts.poppins(
    color: kWhiteFontColor, fontSize: 12.sp, fontWeight: FontWeight.w400);
final kBodyStyle14 = GoogleFonts.poppins(
    color: kBlackFontColor, fontSize: 14.sp, fontWeight: FontWeight.w500);
final kBodyStyle14b = GoogleFonts.poppins(
    color: const Color(0xFF939393),
    fontSize: 14.sp,
    fontWeight: FontWeight.w500);
final kBodyStyle15 = GoogleFonts.poppins(
    color: const Color(0xFF6C6C6C), fontSize: 14.sp, fontWeight: FontWeight.w500);
final kBodyStyle16 = GoogleFonts.poppins(
    color: kBlackFontColor, fontSize: 12.sp, fontWeight: FontWeight.w600);
final kBodyStyle17 = GoogleFonts.poppins(
    color:  const Color(0xFF6A6A6A), fontSize: 10.sp, fontWeight: FontWeight.w600);
final kBodyStyle17b = GoogleFonts.poppins(
    color: kWhiteColor, fontSize: 10.sp, fontWeight: FontWeight.w600);

final kBodyStyle44 = GoogleFonts.poppins(
    color: kWhiteFontColor, fontSize: 2.sp, fontWeight: FontWeight.w600);

final kDefaultPadding = 20.0.h;

List<String> listImages = [
  'https://images.unsplash.com/photo-1572537165377-627a37043464?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8cGl4ZWx8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1572204292164-b35ba943fca7?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8cGl4ZWx8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1590254553792-7e91903c5357?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fHBpeGVsfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1548586196-aa5803b77379?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fHBpeGVsfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1572447454458-e68d82f828b3?ixid=MnwxMjA3fDB8MHxzZWFyY2h8ODd8fHBpeGVsfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1572204304559-b5f5380482c5?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTA4fHxwaXhlbHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=6',
  'https://images.unsplash.com/photo-1554516829-a3fce6ddbc6e?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTQzfHxwaXhlbHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1563642421748-5047b6585a4a?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTY2fHxwaXhlbHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1593439147804-c6c7656530ae?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzUzfHxwaXhlbHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1572537165377-627a37043464?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8cGl4ZWx8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1572204292164-b35ba943fca7?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8cGl4ZWx8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1590254553792-7e91903c5357?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fHBpeGVsfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1548586196-aa5803b77379?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fHBpeGVsfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1572447454458-e68d82f828b3?ixid=MnwxMjA3fDB8MHxzZWFyY2h8ODd8fHBpeGVsfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1572204304559-b5f5380482c5?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTA4fHxwaXhlbHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=6',
  'https://images.unsplash.com/photo-1554516829-a3fce6ddbc6e?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTQzfHxwaXhlbHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1563642421748-5047b6585a4a?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTY2fHxwaXhlbHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1593439147804-c6c7656530ae?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzUzfHxwaXhlbHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',

];
