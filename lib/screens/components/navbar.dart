

/*-------------------------- Navbar with just a Single Text--------------------*/
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
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          if(isBack == true) GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Padding(
              padding: const EdgeInsets.only(top:14.0),
              child: Icon(Icons.arrow_back,color: kBlackTextColor,size: isMobile(context) ? 19 : 23,),
            )),
          RotatedBox(quarterTurns: 1,child: mediumCustomSizedBox(context),),
          if(title != null)Text(
                 title ?? "",
                 overflow: TextOverflow.fade,
                 softWrap: true,
                 maxLines: 1,
                 style:largeTextStyle(context)
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


