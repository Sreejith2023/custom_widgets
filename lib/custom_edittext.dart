library custom_edittext;

import 'package:flutter/material.dart';

class CustomEditText extends StatelessWidget{
  final TextEditingController? textEditController;
  final double? marginLeft,
      marginTop,
      marginRight,
      marginBottom,
      cornerRadius,
      borderWidth;
  final int? maxLines;
  final TextInputType? textInputType;
  final TextAlign? textAlign;
  final Color? borderColor,
      backgroundColor;
  final String? hintText;
  final bool? isBackgroundFilled;
  final bool isAnimatedHint;

  const CustomEditText({
    Key? key,
    this.textEditController,
    this.marginLeft,
    this.marginTop,
    this.marginRight,
    this.marginBottom,
    this.maxLines,
    this.textInputType,
    this.textAlign,
    this.cornerRadius,
    this.borderColor,
    this.borderWidth,
    this.hintText,
    this.isBackgroundFilled = true,
    this.backgroundColor = Colors.red,
    this.isAnimatedHint=false



  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: marginLeft??0,
        top: marginTop??0,
        right: marginRight??0,
        bottom: marginBottom??0,
      ),
      child: TextField(
        controller: textEditController,
        maxLines: maxLines,
        keyboardType: textInputType,
        textAlign: textAlign??TextAlign.left,
        decoration: borderWidth==null?null:setInputDecoration(),



      ),
    );
  }

  InputDecoration setInputDecoration(){
    return InputDecoration(
      filled: isBackgroundFilled,
      fillColor: backgroundColor,
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: borderColor ?? Colors.redAccent,
          width: borderWidth ?? 0,
        ),
        borderRadius: BorderRadius.circular(
          cornerRadius ?? 0,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: borderColor ?? Colors.redAccent,
          width: borderWidth ?? 0,
        ),
        borderRadius: BorderRadius.circular(
          cornerRadius ?? 0,
        ),
      ),
      hintText: isAnimatedHint?"":hintText??"",
      label:  isAnimatedHint?Text(hintText??""):null,
      //  contentPadding: EdgeInsets.only(left: 50)
    );
  }

}
