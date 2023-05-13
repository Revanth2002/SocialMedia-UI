/*---------------- This file contains the custom animation routes -------------------*/


//Custom PAge ROute which swipes from right
import 'package:techfest/helpers/headers.dart';

class CustomRightPageRoute extends PageRouteBuilder {
  final Widget page;

  CustomRightPageRoute({required this.page,required String routeName})
      : super(
          settings: RouteSettings(name: routeName), // route name here
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              page,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) {
            const begin = Offset(1.0, 0.0); //Offset 1.0,0.0 indicate from right to left
            const end = Offset.zero;
            const curve = Curves.ease;
            var tween =
                Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

            return SlideTransition(
              position: animation.drive(tween),
              // opacity: animation,
              child: child,
            );
          },
          transitionDuration: const Duration(milliseconds: 500),
        );
}

//Custom Page Route has no animation
class CustomSimplePageRoute extends PageRouteBuilder {
  final Widget page;

  CustomSimplePageRoute({required this.page,required String routeName})
      : super(
          settings: RouteSettings(name: routeName), // set name here
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              page,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) {
            const begin = Offset(0.0, 0.0);
            const end = Offset.zero;
            const curve = Curves.ease;
            var tween =
                Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

            return SlideTransition(
              position: animation.drive(tween),
              // opacity: animation,
              child: child,
            );
          },
          transitionDuration: const Duration(milliseconds: 500),
        );
}


//Custom PAge ROute which swipes from bottom
Route customBottomPageRoute(Widget child) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin =
          Offset(0.0, 1.0); //Offset 0.0,1.0 indicate from top to bottom
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}