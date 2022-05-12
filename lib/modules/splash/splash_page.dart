import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:split_it/firebase_options.dart';
import 'package:split_it/shared/theme/app_theme.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  void initializeFirebase() async {
    try {
      await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      );
      await Future.delayed(const Duration(seconds: 2));
      Navigator.pushReplacementNamed(context, "/login");
    } catch (e) {
      Navigator.pushReplacementNamed(context, "/error");
    }
  }

  @override
  void initState() {
    initializeFirebase();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      bottom: true,
      child: Scaffold(
        backgroundColor: AppTheme.colors.background,
        body: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          decoration: BoxDecoration(
            gradient: AppTheme.gradients.background,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  const SizedBox(
                    height: 24,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Opacity(
                      opacity: 0.3,
                      child: Image.asset('assets/images/retangulo-esquerdo.png',
                          width: 198, height: 98),
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Opacity(
                      opacity: 0.3,
                      child: Image.asset('assets/images/retangulo-esquerdo.png',
                          width: 114, height: 58),
                    ),
                  ),
                ],
              ),
              Center(
                child: Image.asset(
                  'assets/images/Logo.png',
                  width: 120,
                  height: 100,
                ),
              ),
              Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Opacity(
                      opacity: 0.3,
                      child: Image.asset('assets/images/retangulo-direito.png',
                          width: 114, height: 58),
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Opacity(
                      opacity: 0.3,
                      child: Image.asset('assets/images/retangulo-direito.png',
                          width: 198, height: 98),
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
