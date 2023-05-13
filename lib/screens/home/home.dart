import 'package:techfest/helpers/headers.dart';
import 'package:techfest/screens/components/navbar.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  static const String routeName = homepage;
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List _storiesImg = [
    {
      "title": "Live guests",
      "img":
          "https://wallpaperforu.com/wp-content/uploads/2020/09/sad-aesthetic-wallpaper-20090815210331.jpg"
    },
    {
      "title": "Giveaway ",
      "img":
          "https://e0.pxfuel.com/wallpapers/889/641/desktop-wallpaper-aesthetic-tiktok-aesthetic-profile-pic.jpg"
    },
    {
      "title": "About",
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfpuD7L7s3cuPdWkf12Ya5CNl_KZCt9qwUzw&usqp=CAU"
    },
    {
      "title": "Projects",
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfpuD7L7s3cuPdWkf12Ya5CNl_KZCt9qwUzw&usqp=CAU"
    },
    {
      "title": "Filter",
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfpuD7L7s3cuPdWkf12Ya5CNl_KZCt9qwUzw&usqp=CAU"
    },
  ];

  final List _imgs = [
    {
      "title": "Live guests",
      "img":"https://picsum.photos/250?image=1"
    },
    {
      "title": "Live guests",
      "img":"https://picsum.photos/250?image=2"
    },
    {
      "title": "Live guests",
      "img":"https://picsum.photos/250?image=3"
    },
    {
      "title": "Live guests",
      "img":"https://picsum.photos/250?image=4"
    },
    {
      "title": "Live guests",
      "img":"https://picsum.photos/250?image=5"
    },
    {
      "title": "Live guests",
      "img":"https://picsum.photos/250?image=6"
    },
  ];

  Future<void> _launchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar:
            commonNavbar(context: context, isBack: true, title: "estefanniegg"),
        body: SafeArea(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                //Profile Pics and followers
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: kDefaultScreenPaddingHorizontal(context),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: isMobile(context) ? 40 : 50,
                        // backgroundImage: const NetworkImage("https://images.unsplash.com/photo-1541101767792-f9b2b1c4f127?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8&w=1000&q=80"),
                        backgroundImage: const AssetImage(
                          "assets/images/profile.png",
                        ),
                        backgroundColor: Colors.white,
                      ),
                      Expanded(
                        flex: 1,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "1,272",
                                  style: mediumLargeTextStyle(context),
                                ),
                                Text(
                                  "Posts",
                                  style: smallTextStyle(context),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "65.6K",
                                  style: mediumLargeTextStyle(context),
                                ),
                                Text(
                                  "Followers",
                                  style: smallTextStyle(context),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "789",
                                  style: mediumLargeTextStyle(context),
                                ),
                                Text(
                                  "Following",
                                  style: smallTextStyle(context),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                smallCustomSizedBox(context),
                //Instagram Bio and Edit Profile
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: kDefaultScreenPaddingHorizontal(context),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      //Profile Name
                      Text(
                        "Estefannie",
                        style: mediumLargeTextStyle(context),
                      ),
                      Text(
                        "Self-proclaimed Imagineer",
                        style: smallTextStyle(context)
                            .copyWith(color: kBlackTextColor),
                      ),
                      Text(
                        "programming, electronics & cats",
                        style: smallTextStyle(context)
                            .copyWith(color: kBlackTextColor),
                      ),
                      Text("Live-streams + giveaways almost every week",
                          style: smallTextStyle(context)
                              .copyWith(color: kBlackTextColor)),
                      GestureDetector(
                        onTap: () {
                          _launchInBrowser(
                              Uri.parse("https://www.estefannie.com/"));
                          // launchUrl("https://www.estefannie.com/");
                        },
                        child: Text("www.estefannia.com",
                            style: smallTextStyle(context).copyWith(
                                color: kSteelBlue,
                                fontWeight: FontWeight.w600)),
                      ),
                      mediumCustomSizedBox(context),
                      //Following, Message and Email Button
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          //Add following button
                          Expanded(
                            flex: 1,
                            child: Container(
                                height: 25,
                                margin: EdgeInsets.only(right: 5),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 6, vertical: 2),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: kLavenderGrayColor, width: 1.2),
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(3),
                                ),
                                child: Center(
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Following",
                                        style: smallTextStyle(context).copyWith(
                                          color: kBlackTextColor,
                                          fontSize:
                                              isMobile(context) ? 12.0 : 15.0,
                                          fontFamily: kMuktaRegular,
                                        ),
                                      ),
                                      Icon(
                                        Icons.keyboard_arrow_down_rounded,
                                        color: kBlackTextColor,
                                        size: 10,
                                      )
                                    ],
                                  ),
                                )),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              height: 25,
                              margin: EdgeInsets.only(right: 5),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 6, vertical: 2),
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: kLavenderGrayColor, width: 1.2),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(3),
                              ),
                              child: Center(
                                child: Text(
                                  "Message",
                                  style: smallTextStyle(context).copyWith(
                                    color: kBlackTextColor,
                                    fontSize: isMobile(context) ? 12.0 : 15.0,
                                    fontFamily: kMuktaRegular,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              height: 25,
                              margin: EdgeInsets.only(right: 5),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 6, vertical: 2),
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: kLavenderGrayColor, width: 1.2),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(3),
                              ),
                              child: Center(
                                child: Text(
                                  "Email",
                                  style: smallTextStyle(context).copyWith(
                                    color: kBlackTextColor,
                                    fontSize: isMobile(context) ? 12.0 : 15.0,
                                    fontFamily: kMuktaRegular,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                              height: 25,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 6, vertical: 2),
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: kLavenderGrayColor, width: 1.2),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(3),
                              ),
                              child: Center(
                                  child: Icon(
                                Icons.keyboard_arrow_down_outlined,
                                color: kBlackTextColor,
                                size: 20,
                              ))),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 120,
                  child: ListView.builder(
                    physics: AlwaysScrollableScrollPhysics(),
                    addAutomaticKeepAlives: true,
                    itemCount: _storiesImg.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int i) {
                      return Container(
                        margin: EdgeInsets.only(left: 1, right: 1),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                  left:
                                      kDefaultScreenPaddingHorizontal(context),
                                  right: 5),
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                // borderRadius: BorderRadius.circular(5),
                                image: DecorationImage(
                                  image: NetworkImage(_storiesImg[i]['img']),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            smallCustomSizedBox(context),
                            Text(
                              //Slice string and add ...
                              _storiesImg[i]['title'].toString().length > 10
                                  ? _storiesImg[i]['title']
                                          .toString()
                                          .substring(0, 10) +
                                      "..."
                                  : _storiesImg[i]['title'].toString(),
                              overflow: TextOverflow.ellipsis,
                              softWrap: true,
                              maxLines: 1,
                              style: smallTextStyle(context),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.grid_on_sharp, color: kBlackTextColor),
                    Image.asset("assets/images/video.png", height: 20, width: 20),
                    Image.asset("assets/images/igtv.png", height: 20, width: 20),
                    Icon(Icons.filter, color: kBlackTextColor),
                    Image.asset("assets/images/tagicon.png", height: 20, width: 20),
                  ],
                ),
                //Implement a divider
                Divider(
                  color: kLavenderGrayColor.withOpacity(0.3),
                  thickness: 1.2,
                ),
                //3 Grid Images View
                GridView(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  addAutomaticKeepAlives: true,
                  
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3, mainAxisSpacing: 0),
                    children: [
                      Image.network('https://picsum.photos/250?image=1'),
                      Image.network('https://picsum.photos/250?image=2'),
                      Image.network('https://picsum.photos/250?image=3'),
                      Image.network('https://picsum.photos/250?image=4'),
                      Image.network('https://picsum.photos/250?image=5'),
                      Image.network('https://picsum.photos/250?image=6'),
                      Image.network('https://picsum.photos/250?image=7'),
                      Image.network('https://picsum.photos/250?image=8'),
                      Image.network('https://picsum.photos/250?image=9'),
                    ])
              ],
            ),
          ),
        ));
  }
}
