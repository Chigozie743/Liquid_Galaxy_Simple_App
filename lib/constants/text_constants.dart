import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:liquid_galaxy/constants/color_constants.dart';

class TextBody extends StatelessWidget {
  final String? text;
  final double? fontSize;
  final Color? textColor;
  final TextAlign? textAlign;
  final int? maxLines;
  final FontWeight? fontWeight;
  final TextDecoration? textDecoration;

  const TextBody({
    Key? key,
    required this.text,
    this.fontSize,
    this.textColor,
    this.textAlign,
    this.maxLines,
    this.fontWeight,
    this.textDecoration,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      maxLines: maxLines ?? 3,
      overflow: TextOverflow.ellipsis,
      textAlign: textAlign ?? TextAlign.start,
      //softWrap: true,
      style: GoogleFonts.manrope(
        textStyle: TextStyle(
          fontSize: 16.sp,
          height: 2.0.sp,
          fontWeight: FontWeight.w500,
          color: whiteText,
          letterSpacing: 0.3.sp,
        ),
      ),
    );
  }
}