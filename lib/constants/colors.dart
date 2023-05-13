import 'package:techfest/helpers/headers.dart';


//Primary font

const kMuktaRegular = 'MuktaRegular';
const kMuktaBold = 'MuktaBold';
const kQuickSandRegular = 'QuickSandRegular';
const kQuickSandBold = 'QuickSandBold';


//Screen background color
const kScreenBackground = Colors.white;
// Colors
const kPrimaryColor = Color(0xff357EFF); // Color(0xff242c78);
 // Color(0xff0041c4)
  //Color(0xff2b91bf);
    //Color(0xff242c78); 
    //Color(0xff06919d); 
    //Color(0xff5E56BF);
const kSecondaryColor =Color(0xffafcfed);
    //Color(0xffafcfed); 
    //Color(0xffbbe2e5);
    //Color(0xffF3EFFD); 
const kTertiaryColor = Color(0xff1b94c5);

const kBorderColor = Color(0xff585858);
const kMenuColor = Color(0xffF7F8FC);
const kLavenderGrayColor = Color(0xffe2e7f3);
const kLightLavengerGrayColor = Color(0xffF7F8FC);
const kBlackTextColor = Color(0xff000000);

///Yellow color
const kYellowColor = Color(0xffFDC500);

///Orange color
const kOrangeColor = Color(0xfffa8112);


///Blue color
const klightblue = Color(0xFFfafbff);
const kAliceBlueColor = Color(0xfff3f6fb);
const kIndigocolor = Color(0xff431C77);
const kSteelBlue = Color(0xff4671c6);

/// Green 
const kSeaGreenColor = Color(0xff0a9c59);
const kMediumSeaGreen = Color(0xff27aa69);
const kGreenColor = Color(0xff03C04A);


//Gray Color Type
const kDarkGray = Color(0xff535356);
const kLightGrayColor = Color(0xffD2D2D2);
const kDimGray = Color(0xff707070);
const kGraycolor = Color(0xff807979);
const kSlateGray = Color(0xffEDF0F4);
const kWhiteSmoke = Color(0xfff2f2f8);
const kTitleColor = Color(0xff383d3e);

//Rating Star
const kStarColor = Color(0xffFDC903);

//Red
const kPinkRedishColor = Color(0xffFF486A);
const kLightRedColor = Color(0xffFEE9EC);

///Material Color
MaterialColor kPrimaryMaterialColor = const MaterialColor(
  0xff00296B,
  <int, Color>{
    50: Color(0xff5E56BF),
    100: Color(0xff5E56BF),
    200: Color(0xff5E56BF),
    300: Color(0xff5E56BF),
    400: Color(0xff5E56BF),
    500: Color(0xff5E56BF),
    600: Color(0xff5E56BF),
    700: Color(0xff5E56BF),
    800: Color(0xff5E56BF),
    900: Color(0xff5E56BF),
  },
);


final otpInputDecoration = InputDecoration(
    contentPadding: const EdgeInsets.symmetric(vertical: 15),
    enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: const BorderSide(color: kSecondaryColor)),
    focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: const BorderSide(color: kSecondaryColor)));