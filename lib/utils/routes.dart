import 'package:flutter/material.dart';
import 'package:nssd/pages/Personalinfo_page.dart';
import 'package:nssd/pages/login_page2.dart';
import 'package:nssd/pages/signup_page.dart';


import '../errors/exceptions.dart';

class RouteGenerator {
  static const String splash = '/';
  static const String login = 'login';
   static const String profile = 'profile';
  RouteGenerator._();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case login:
        return MaterialPageRoute(builder: (_) => const LoginPage());
      case profile:
        return MaterialPageRoute(builder: (_) => const PersonalinfoPage());
       
       
      default:
        throw RouteException('Route not found');
    }
  }
}
