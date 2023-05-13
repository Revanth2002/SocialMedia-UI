/*---------------- Responsive bool statements -------------------*/

import 'package:techfest/helpers/headers.dart';

//responsive media query bools

/// Less than 650 px
bool isMobile(BuildContext context) => MediaQuery.of(context).size.width < 650;

/// Greater than or equal to 650 px  and less than 1300
bool isTab(BuildContext context) =>
    MediaQuery.of(context).size.width < 1300 &&
    MediaQuery.of(context).size.width >= 650;
bool isDesktop(BuildContext context) =>
    MediaQuery.of(context).size.width >= 1300;

bool isBetweenTD1(BuildContext context) =>
    MediaQuery.of(context).size.width < 1300 &&
    MediaQuery.of(context).size.width >= 900;
bool isBetweenTD2(BuildContext context) =>
    MediaQuery.of(context).size.width > 650 &&
    MediaQuery.of(context).size.width < 900;
bool isBetweenTD3(BuildContext context) =>
    MediaQuery.of(context).size.width < 1100 &&
    MediaQuery.of(context).size.width >= 900;

bool isBetweenMT1(BuildContext context) =>
    MediaQuery.of(context).size.width > 500 &&
    MediaQuery.of(context).size.width <= 650;

/// Greater than 450 and Less than equal to 500
bool isBetweenMT2(BuildContext context) =>
    MediaQuery.of(context).size.width <= 500 &&
    MediaQuery.of(context).size.width > 450;

bool smallMobile(BuildContext context) =>
    MediaQuery.of(context).size.width <= 370;
bool largeMobile(BuildContext context) =>
    MediaQuery.of(context).size.width <= 450 &&
    MediaQuery.of(context).size.width > 370;

bool largeTablet(BuildContext context) =>
    MediaQuery.of(context).size.width > 650 &&
    MediaQuery.of(context).size.width <= 768;
bool ultraLargeTablet(BuildContext context) =>
    MediaQuery.of(context).size.width > 768 &&
    MediaQuery.of(context).size.width < 900;
