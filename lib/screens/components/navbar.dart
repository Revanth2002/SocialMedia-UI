

/*-------------------------- Navbar with just a Single Text--------------------*/
import 'package:flutter/cupertino.dart';
import 'package:techfest/helpers/headers.dart';

class CommonNavbar extends StatelessWidget {
  final bool isBack;
  final String? title;
  const CommonNavbar({Key? key,required this.isBack,this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = sizeMedia(context);
    
    double cartNavHeight = smallMobile(context)
        ? 75
        : largeMobile(context)
            ? 75
            : isBetweenMT2(context)
                ? 80
                : isBetweenMT1(context)
                    ? 90
                    : largeTablet(context)
                        ? 80
                        : ultraLargeTablet(context) 
                        ? 80
                        : 80; 

    return Container(
      width: size.width,
      height: cartNavHeight,
      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if(isBack == true) GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Padding(
              padding: const EdgeInsets.only(top:8.0),
              child: Icon(Icons.arrow_back_ios,color: kBlackTextColor,size: isMobile(context) ? 19 : 23,),
            )),
          // RotatedBox(quarterTurns: 1,child: mediumCustomSizedBox(context),),
          if(title != null)Center(
            child: Text(
                   title ?? "",
                   overflow: TextOverflow.fade,
                   softWrap: true,
                   maxLines: 1,
                   style:mediumLargeTextStyle(context)
                 ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.insights,color: kBlackTextColor,size: isMobile(context) ? 19 : 23,),
              RotatedBox(quarterTurns: 1,child: smallCustomSizedBox(context),),
              Icon(CupertinoIcons.bell,color: kBlackTextColor,size: isMobile(context) ? 19 : 23,),
              RotatedBox(quarterTurns: 1,child: smallCustomSizedBox(context),),
              Icon(Icons.more_horiz_sharp,color: kBlackTextColor,size: isMobile(context) ? 19 : 23,),
              
            ],
          )
        ],
      ),
    );
  }
}

commonNavbar({required BuildContext context,required bool isBack,String? title}) {
  return PreferredSize(
        child: CommonNavbar(isBack: isBack,title: title,),
        preferredSize: Size.fromHeight(isMobile(context) ? 50 : largeTablet(context) ? 55 :  60
        ));
}


