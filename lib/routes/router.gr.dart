// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../screens/authScreens/firstPage.dart' as _i1;
import '../screens/authScreens/signin.dart' as _i2;
import '../screens/userScreens/userMainScreen.dart' as _i3;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    FirstPageRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.FirstPage(),
      );
    },
    SigninRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.Signin(),
      );
    },
    UserMainScreenRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.UserMainScreen(),
      );
    },
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(
          FirstPageRoute.name,
          path: '/',
        ),
        _i4.RouteConfig(
          SigninRoute.name,
          path: '/Signin',
        ),
        _i4.RouteConfig(
          UserMainScreenRoute.name,
          path: '/userMainScreen',
        ),
      ];
}

/// generated route for
/// [_i1.FirstPage]
class FirstPageRoute extends _i4.PageRouteInfo<void> {
  const FirstPageRoute()
      : super(
          FirstPageRoute.name,
          path: '/',
        );

  static const String name = 'FirstPageRoute';
}

/// generated route for
/// [_i2.Signin]
class SigninRoute extends _i4.PageRouteInfo<void> {
  const SigninRoute()
      : super(
          SigninRoute.name,
          path: '/Signin',
        );

  static const String name = 'SigninRoute';
}

/// generated route for
/// [_i3.UserMainScreen]
class UserMainScreenRoute extends _i4.PageRouteInfo<void> {
  const UserMainScreenRoute()
      : super(
          UserMainScreenRoute.name,
          path: '/userMainScreen',
        );

  static const String name = 'UserMainScreenRoute';
}
