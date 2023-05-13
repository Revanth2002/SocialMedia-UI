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

/* ---------------Single Promotions Box-------------------------------*/
class SinglePromotionBox extends StatelessWidget {
  final String imgUrl;
  const SinglePromotionBox({Key? key, required this.imgUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = sizeMedia(context);
    return Container(
      width: size.width,
      height: isMobile(context) ? size.height / 4 : size.height / 3.5,
      margin: EdgeInsets.symmetric(
          horizontal: kDefaultScreenPaddingHorizontal(context),
          vertical: kDefaultScreenPaddingVertical(context)),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          image:
              DecorationImage(fit: BoxFit.cover, image: NetworkImage(imgUrl))),
    );
  }
}

/* -------------------Text Highlighter----------------------------*/
Widget titleText(
    {required BuildContext context,
    required String text,
    required Color color}) {
  return Text(text,
      softWrap: true,
      style: mediumLargeTextStyle(context).copyWith(
        color: color,
        fontSize: isMobile(context) ? 18.0 : 21.0,
      ));
}

Widget mediumTitleText(
    {required BuildContext context,
    required String text,
    required Color color}) {
  return Text(text,
      softWrap: true,
      style: mediumTextStyle(context).copyWith(
        color: color,
        fontSize: isMobile(context) ? 18.0 : 21.0,
      ));
}

/*------------------Title Text with View all Btn-------------------*/
Widget rowTitleText(
    {required BuildContext context,
    required String text,
    required bool isViewAll,
    required bool isCapitalFont,
    required Function() onTap}) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Expanded(
        flex: 3,
        child: isCapitalFont == true
            ? Text(
                text.toUpperCase(),
                style: mediumLargeTextStyle(context).copyWith(
                    letterSpacing: 0.15,
                    fontWeight: FontWeight.w500,
                    color: Colors.black.withOpacity(0.9),
                    fontFamily: kMuktaBold),
              )
            : titleText(
                context: context,
                text: text,
                color: Colors.black.withOpacity(0.7)),
      ),
      if (isViewAll == true)
        Expanded(
          child: Align(
            alignment: Alignment.centerRight,
            child: GestureDetector(
              onTap: onTap,
              child: Text(
                "View all",
                style: mediumTextStyle(context).copyWith(color: kPrimaryColor),
              ),
            ),
          ),
        )
    ],
  );
}

/* ------------------ Bottom Dialog Pop Up --------------------------------*/
/// This Widgets pops up from bottom with contents inside
Future bottomDialog(
    {required context, double? height, required Widget widget}) {
  var size = sizeMedia(context);
  return showGeneralDialog(
    barrierDismissible: false,
    barrierColor: Colors.black.withOpacity(0.5),
    transitionDuration: const Duration(milliseconds: 100),
    context: context,
    pageBuilder: (context, anim1, anim2) {
      return Scaffold(
        backgroundColor: Colors.black.withOpacity(0.1),
        body: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: height ?? 200,
            width: size.width,
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 35,
                      padding: const EdgeInsets.only(top: 8, right: 10),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: GestureDetector(
                            onTap: () => Navigator.pop(context),
                            child: const Icon(
                              Icons.cancel,
                              color: kPrimaryColor,
                              size: 22,
                            )),
                      ),
                    ),
                    Expanded(child: widget)
                  ],
                ),
              ],
            ),
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
          ),
        ),
      );
    },
    transitionBuilder: (context, anim1, anim2, child) {
      return SlideTransition(
        position: Tween(begin: const Offset(0, 1), end: const Offset(0, 0))
            .animate(anim1),
        child: child,
      );
    },
  );
}

/*-------------------------Doctor Tile Content------------------------------*/
Widget doctorTileContent(
    {required BuildContext context,
    required IconData icon,
    required String title,
    required Color bgColor,
    required Color iconColor}) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Container(
        height: isMobile(context) ? 20 : 25,
        width: isMobile(context) ? 20 : 25,
        decoration: BoxDecoration(shape: BoxShape.circle, color: bgColor),
        child: Icon(
          icon,
          color: iconColor,
          size: 14,
        ),
      ),
      RotatedBox(
        quarterTurns: 1,
        child: smallCustomSizedBox(context),
      ),
      Text(title,
          style: smallTextStyle(context).copyWith(fontFamily: kMuktaBold)),
    ],
  );
}

/* --------------Editable Text Field Custom ------------*/
Widget personalInfoDynamicTitle({
  required BuildContext context,
  required String title,
  required String hintTextField,
  required TextEditingController controller,
  required TextInputType textInputType,
  int? maxLength,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      mediumCustomSizedBox(context),
      Text(
        title,
        style: mediumTextStyle(context).copyWith(letterSpacing: 0.2),
      ),
      smallCustomSizedBox(context),
      Container(
        height: 45,
        decoration: BoxDecoration(
          color: kLightLavengerGrayColor,
          // border: Border.all(color: kPrimaryColor, width: 1),
          borderRadius: BorderRadius.circular(9),
        ),
        child: TextFormField(
          controller: controller,
          style: const TextStyle(color: kBlackTextColor, fontSize: 17),
          keyboardType: textInputType,
          cursorColor: kPrimaryColor,
          maxLength: maxLength ?? 4,
          inputFormatters: <TextInputFormatter>[
            FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
          ],
          obscureText: true,
          decoration: InputDecoration(
            hintText: hintTextField,
            hintStyle: mediumTextStyle(context).copyWith(color: kDarkGray),
            border: InputBorder.none,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 6, horizontal: 8),
          ),
        ),
      )
    ],
  );
}

/* -------------- Primary Btn --------------*/
Widget primaryBtn(
    {required BuildContext context,
    required Function() onTap,
    required String btnText,
    double? vertical,
    Color? btnColor,
    required bool isOutline}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      height: 45,
      margin: EdgeInsets.symmetric(vertical: vertical ?? 50),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: isOutline ? Colors.white : (btnColor ?? kPrimaryColor),
        border: Border.all(
            color: isOutline ? (btnColor ?? kPrimaryColor) : Colors.white,
            width: isOutline ? 1 : 0.0),
      ),
      child: Center(
        child: Text(
          btnText,
          style: mediumTextStyle(context).copyWith(
              fontFamily: kQuickSandBold,
              color: isOutline ? (btnColor ?? kPrimaryColor) : Colors.white,
              letterSpacing: 0.3),
        ),
      ),
    ),
  );
}

/* --------------Custom AlertDialog -------------- */
customInfoAlertDialog(
    {required BuildContext context,
    required String title,
    required String message,
    Function()? onTapBtn,
    String btnName = "",
    double alertBoxHgt = 200,
    double alertBtnWidth = 320}) {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4.0)), //this right here
          child: Container(
            height: alertBoxHgt,
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 8, right: 8, top: 5, bottom: 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  mediumCustomSizedBox(context),
                  Text(
                    "$title",
                    style: largeTextStyle(context)
                        .copyWith(color: kBlackTextColor),
                  ),
                  smallCustomSizedBox(context),
                  Text(
                    "$message",
                    textAlign: TextAlign.center,
                    style: mediumTextStyle(context).copyWith(color: kDimGray),
                  ),
                  mediumCustomSizedBox(context),
                  if (btnName != "")
                    SizedBox(
                      width: alertBtnWidth,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(kSecondaryColor),
                        ),
                        onPressed: onTapBtn ?? () {},
                        child: Text(
                          "$btnName",
                          style: mediumTextStyle(context)
                              .copyWith(color: Colors.white),
                        ),
                      ),
                    )
                ],
              ),
            ),
          ),
        );
      });
}

defaultErrordialog(
    {required BuildContext context,
    required String errorCode,
    Function()? onTapBtn,
    String message =
        "Oops ! An unknown error occurred.Please try again later"}) {
  return customInfoAlertDialog(
      context: context,
      title: "Error $errorCode",
      message: message,
      btnName: "Close",
      alertBtnWidth: 120,
      onTapBtn: onTapBtn ?? () => Navigator.pop(context));
}

/* --------------Circular Progress Indicator -------------- */
customCircularProgress() {
  return CircularProgressIndicator(
    //backgroundColor: kPrimaryColor,
    color: kPrimaryColor,
    strokeWidth: 3,
  );
}

customsnackErrorBar(BuildContext context, String message) {
  return SnackBar(
    content: Row(
      children: [
        Icon(
          Icons.error_outline,
          color: Colors.white,
        ),
        const SizedBox(width: 10),
        Expanded(child: Text("$message", maxLines: 2)),
      ],
    ),
    behavior: SnackBarBehavior.floating,
    backgroundColor: Colors.redAccent,
    padding: const EdgeInsets.all(15),
  );
}

customSnackSuccessBar(BuildContext context, String message) {
  return SnackBar(
    content: Text("$message"),
    behavior: SnackBarBehavior.floating,
    backgroundColor: kGreenColor,
    padding: const EdgeInsets.all(15),
  );
}

/*--------------Overlay loader --------------*/

overlayLoader(BuildContext context) {
  return Loader.show(
    context,
    isAppbarOverlay: true,
    isBottomBarOverlay: true,
    overlayColor: Colors.black38,
    progressIndicator: customCircularProgress(),
  );
}

//Progress Indicators
linearLoader() {
  return Padding(
    padding: const EdgeInsets.only(top: 12.0),
    child: Center(
      child: LinearProgressIndicator(
        valueColor: AlwaysStoppedAnimation(kSecondaryColor),
        backgroundColor: Colors.white,
        minHeight: 1,
      ),
    ),
  );
}

// is null show icon text

Widget isNullIcon(
    {required BuildContext context,
    required String text,
    required IconData icon}) {
  return Center(
    child: Column(children: [
      Text(text,
          style: mediumLargeTextStyle(context)
              .copyWith(fontWeight: FontWeight.w700)),
      mediumCustomSizedBox(context),
      Icon(
        icon,
        size: 25.0,
        color: kPrimaryColor,
      )
    ]),
  );
}

Widget defaultDivider() {
  return Container(
    height: 5,
    width: 50,
    decoration: BoxDecoration(
        color: kPrimaryColor, borderRadius: BorderRadius.circular(10)),
  );
}

class BorderPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double sh = size.height; // for convenient shortage
    double sw = size.width; // for convenient shortage
    double cornerSide = sh * 0.1; // desirable value for corners side

    Paint paint = Paint()
      ..color = kPrimaryColor
      ..strokeWidth = 2.5
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.square;

    Path path = Path()
      ..moveTo(cornerSide, 0)
      ..quadraticBezierTo(0, 0, 0, cornerSide)
      ..moveTo(0, sh - cornerSide)
      ..quadraticBezierTo(0, sh, cornerSide, sh)
      ..moveTo(sw - cornerSide, sh)
      ..quadraticBezierTo(sw, sh, sw, sh - cornerSide)
      ..moveTo(sw, cornerSide)
      ..quadraticBezierTo(sw, 0, sw - cornerSide, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(BorderPainter oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(BorderPainter oldDelegate) => false;
}

Widget profileTiles(
    {required BuildContext context,
    required String title,
    required IconData icon,
    required Function() onTap}) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: kScreenMarginHorizontal(context)),
    child: Column(
      children: [
        ListTile(
          onTap: onTap,
          leading: CircleAvatar(
              maxRadius: isMobile(context) ? 16 : 18,
              backgroundColor: kSecondaryColor,
              child: Center(
                  child: Icon(
                icon,
                color: kPrimaryColor,
                size: 16,
              ))),
          title: Text(
            title,
            style: const TextStyle(
              fontFamily: kMuktaRegular,
            ),
          ),
          trailing: const Icon(
            Icons.arrow_right_rounded,
            color: kPrimaryColor,
          ),
        ),
        smallCustomSizedBox(context),
      ],
    ),
  );
}
