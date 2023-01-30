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
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../screens/authScreens/firstPage.dart' as _i1;
import '../screens/authScreens/signin.dart' as _i2;
import '../screens/loadingScreens/mainLoading.dart' as _i4;
import '../screens/userScreens/userMainScreen.dart' as _i3;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    FirstPageRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.FirstPage(),
      );
    },
    SigninRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.Signin(),
      );
    },
    UserMainScreenRoute.name: (routeData) {
      final args = routeData.argsAs<UserMainScreenRouteArgs>(
          orElse: () => const UserMainScreenRouteArgs());
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i3.UserMainScreen(key: args.key),
      );
    },
    MainLoadingScreenRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.MainLoadingScreen(),
      );
    },
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(
          FirstPageRoute.name,
          path: '/',
        ),
        _i5.RouteConfig(
          SigninRoute.name,
          path: '/Signin',
        ),
        _i5.RouteConfig(
          UserMainScreenRoute.name,
          path: '/userMainScreen',
        ),
        _i5.RouteConfig(
          MainLoadingScreenRoute.name,
          path: '/loading',
        ),
      ];
}

/// generated route for
/// [_i1.FirstPage]
class FirstPageRoute extends _i5.PageRouteInfo<void> {
  const FirstPageRoute()
      : super(
          FirstPageRoute.name,
          path: '/',
        );

  static const String name = 'FirstPageRoute';
}

/// generated route for
/// [_i2.Signin]
class SigninRoute extends _i5.PageRouteInfo<void> {
  const SigninRoute()
      : super(
          SigninRoute.name,
          path: '/Signin',
        );

  static const String name = 'SigninRoute';
}

/// generated route for
/// [_i3.UserMainScreen]
class UserMainScreenRoute extends _i5.PageRouteInfo<UserMainScreenRouteArgs> {
  UserMainScreenRoute({_i6.Key? key})
      : super(
          UserMainScreenRoute.name,
          path: '/userMainScreen',
          args: UserMainScreenRouteArgs(key: key),
        );

  static const String name = 'UserMainScreenRoute';
}

class UserMainScreenRouteArgs {
  const UserMainScreenRouteArgs({this.key});

  final _i6.Key? key;

  @override
  String toString() {
    return 'UserMainScreenRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i4.MainLoadingScreen]
class MainLoadingScreenRoute extends _i5.PageRouteInfo<void> {
  const MainLoadingScreenRoute()
      : super(
          MainLoadingScreenRoute.name,
          path: '/loading',
        );

  static const String name = 'MainLoadingScreenRoute';
}
