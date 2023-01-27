import 'package:auto_route/auto_route.dart';
import 'package:trudyagi/screens/authScreens/firstPage.dart';
import 'package:trudyagi/screens/authScreens/signin.dart';

//adding part of the router.gr.dart 

// here is the list of all the routes that we have n the app 
const List <AutoRoute<dynamic>> routes = [
  AutoRoute(
    path: "/",
    page: FirstPage,
    initial: true,
    ),
  AutoRoute(
    path: "/Signin",
    page: Signin,
  ),
    
];

@MaterialAutoRouter(routes: routes)
class $AppRouter {
  
}