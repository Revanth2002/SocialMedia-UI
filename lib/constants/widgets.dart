/*---------------- Custom Widgets which is common for whole app -------------------*/

import 'package:techfest/helpers/headers.dart';

/* ------------------------ INR Symbols -------------------------*/
// ignore: constant_identifier_names
const String INRSymbol = "\u{20B9}";

/* ---------------MediaQuery--------------------------------*/
sizeMedia(BuildContext context) {
  return MediaQuery.of(context).size;
}

/* ---------------Default Padding and Margin--------------------------------*/
const kDefaultPadding = 30.0;

/* ---------------Default Screen Margin--------------------------------*/
//Used in Authentication Pages
kScreenMarginHorizontal(context) {
  return isMobile(context) ? kDefaultPadding - 15.0 : kDefaultPadding * 1.5;
}

/* ---------------Default Screen Padding--------------------------------*/
//Used in Main Screen Pages
kDefaultScreenPaddingHorizontal(context) {
  return isMobile(context) ? 14.0 : 17.0;
}

kDefaultScreenPaddingVertical(context) {
  return isMobile(context) ? 10.0 : 14.0;
}

screenPads(context) {
  return EdgeInsets.symmetric(
      horizontal: kDefaultScreenPaddingHorizontal(context),
      vertical: kDefaultScreenPaddingVertical(context));
}

/* -------------- Text Style --------------*/
ultraProLargeTextStyle(context) {
  return TextStyle(
    color: kBlackTextColor,
    fontFamily: kMuktaBold,
    fontSize: isMobile(context) ? 26.0 : 29.0,
  );
}

ultraLargeTextStyle(context) {
  return TextStyle(
    color: kBlackTextColor,
    fontFamily: kMuktaBold,
    fontSize: isMobile(context) ? 24.0 : 27.0,
  );
}

largeTextStyle(context) {
  return TextStyle(
    color: kBlackTextColor,
    fontFamily: kMuktaBold,
    height: 1.2,
    fontSize: isMobile(context) ? 23.0 : 25.0,
  );
}

mediumLargeTextStyle(context) {
  return TextStyle(
    fontFamily: kMuktaRegular,
    fontSize: isMobile(context) ? 17.0 : 19.0,
    color: kBlackTextColor,
  );
}

mediumTextStyle(context) {
  return TextStyle(
    fontFamily: kMuktaRegular,
    fontSize: isMobile(context) ? 15.0 : 17.0,
    color: kBlackTextColor,
  );
}

smallTextStyle(context) {
  return TextStyle(
      fontFamily: kQuickSandRegular,
      fontSize: isMobile(context) ? 13.0 : 15.0,
      color: kGraycolor);
}

/* ---------------Custom Divider Gray Box--------------------------------*/
kLargeDivider(context, {Color? dividerClr}) {
  return Container(
      decoration: BoxDecoration(color: dividerClr ?? kLavenderGrayColor),
      height: isMobile(context) ? 11.0 : 13.0);
}

kMediumDivider(context, {Color? dividerClr}) {
  return Container(
      decoration: BoxDecoration(color: dividerClr ?? kLavenderGrayColor),
      height: isMobile(context) ? 6.0 : 9.0);
}

kSmallDivider(context, {Color? lineColor}) {
  return Container(
      decoration: BoxDecoration(color: lineColor ?? kLavenderGrayColor),
      height: isMobile(context) ? 1.5 : 3.0);
}

/* ---------------Custom Line Divider--------------------------------*/
lineDivider(context, {double? thickness, Color? color}) {
  return Divider(
    color: color ?? kLavenderGrayColor,
    thickness: thickness ?? (isMobile(context) ? 0.1 : 0.25),
    endIndent: 2.0,
    indent: 2.0,
    height: 1.0,
  );
}

/* ---------------Custom Sized Box Divider--------------------------------*/
Widget mediumCustomSizedBox(context) {
  return SizedBox(height: isMobile(context) ? 15.0 : 22.0);
}

Widget smallCustomSizedBox(context) {
  return SizedBox(height: isMobile(context) ? 6.0 : 9.0);
}

/* ---------------To check if the value is null or empty--------------------------------*/
isEmptyOrNull(var x) {
  if ((x.toString().isEmpty) ||
      (x == null) ||
      (x.toString() == "null") ||
      (x.toString() == "None")) {
    return true;
  } else {
    return false;
  }
}



