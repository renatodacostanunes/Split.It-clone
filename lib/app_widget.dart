import 'package:flutter/material.dart';
import 'package:split_it/modules/create_split/create_split_page.dart';
import 'package:split_it/modules/error/error_page.dart';
import 'package:split_it/modules/home/home_page.dart';
import 'package:split_it/modules/login/login_page.dart';
import 'package:split_it/modules/splash/splash_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Split.it',
      initialRoute: "/splash",
      debugShowCheckedModeBanner: false,
      routes: {
        "/splash": (BuildContext context) => const SplashPage(),
        "/login": (BuildContext context) => const LoginPage(),
        "/error": (BuildContext context) => const ErrorPage(),
        "/home": (BuildContext context) => const HomePage(),
        "/create_split": (BuildContext context) => const CreateSplitPage(),
      },
    );
  }
}
//teste
