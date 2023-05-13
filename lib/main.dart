import 'package:techfest/helpers/headers.dart';
import 'package:techfest/screens/auth/loginpage.dart';
import 'package:techfest/screens/home/home.dart';



void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  
  @override
    void initState() {
      super.initState();
    }   

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Square Pay',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kPrimaryColor,
      ),
      home: const LoginPage(),
      routes: {
        LoginPage.routeName: (context) => const LoginPage(),
        HomePage.routeName: (context) => const HomePage(),
      },
    );
  }
}