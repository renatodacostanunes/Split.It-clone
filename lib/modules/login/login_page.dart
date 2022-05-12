import 'package:flutter/material.dart';
import 'package:split_it/modules/login/login_controller.dart';
import 'package:split_it/modules/login/login_service.dart';
import 'package:split_it/modules/login/login_state.dart';
import 'package:split_it/modules/login/widgets/social_button.dart';
import 'package:split_it/shared/theme/app_theme.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late LoginController controller;

  @override
  void initState() {
    controller = LoginController(
        service: LoginServiceImpl(),
        onUpdate: () {
          if (controller.state is LoginStateSuccess) {
            final user = (controller.state as LoginStateSuccess).user;
            Navigator.pushReplacementNamed(context, "/home", arguments: user);
          } else {
            setState(() {});
          }
        });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 40),
              child: SizedBox(
                width: 236,
                child: Text(
                  'Divida suas contas com seus amigos',
                  style: AppTheme.textStyles.title,
                ),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: ListTile(
                  leading: Image.asset('assets/images/Emoji.png'),
                  title: Text(
                    'Faça seu login com umas das contas abaixo',
                    style: AppTheme.textStyles.button,
                  ),
                ),
              ),
              const SizedBox(height: 32),
              if (controller.state is LoginStateLoading) ...[
                const CircularProgressIndicator(),
              ] else if (controller.state is LoginStateFailure) ...[
                Text((controller.state as LoginStateFailure).message)
              ] else
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: SocialButtonWidget(
                    imagePath: "assets/images/google.png",
                    label: 'Entrar com Google',
                    onTap: () {
                      controller.googleSignIn();
                    },
                  ),
                ),
              const SizedBox(height: 12),
              // Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: 32),
              //   child: SocialButtonWidget(
              //     imagePath: "assets/images/apple.png",
              //     label: 'Entrar com Apple',
              //     onTap: () async {
              //       try {
              //         final credential =
              //             await SignInWithApple.getAppleIDCredential(
              //           scopes: [
              //             AppleIDAuthorizationScopes.email,
              //             AppleIDAuthorizationScopes.fullName,
              //           ],
              //         );
              //       } catch (e) {
              //         print(e);
              //       }
              //     },
              //   ),
              // ),
            ],
          )
        ],
      ),
    );
  }
}
