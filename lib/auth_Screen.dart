import 'package:dclm_radio/core_widget.dart';
import 'package:dclm_radio/routes/route_path.dart';
import 'package:dclm_radio/utils/icons.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 0,
        ),
        body: Padding(
            padding: const EdgeInsets.all(8.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              /* <--------  Back arrow icons --------> */
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Image.asset(AppAssetsIcons.backArrow)),
              const SizedBox(height: 10),
              /* <---- Text Widgegt  ----> */
              const Text(
                'Log in/Sign up required',
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 24),
              ),
              const SizedBox(height: 30),
              const Text(
                'To access this feature, you need to sign up or log in to your account.',
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 16),
              ),
              const SizedBox(height: 60),
              /* <---- LogIn Button----> */
              const Center(
                child: Text(
                  ' Got an account already? Log in to continue',
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 16),
                ),
              ),
              const SizedBox(height: 14),
              Center(
                child: CustomElevatedButton(
                  text: 'Log in',
                  icon: Image.asset(AppAssetsIcons.forwardArrow),
                  onPressed: _loginScreen,
                ),
              ),
              const SizedBox(height: 60),
              /* <---- SignUp Button  ----> */
              const Center(
                child: Text(
                  ' New here? Create an account to continue',
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 16),
                ),
              ),
              const SizedBox(height: 14),
              Center(
                child: CustomElevatedButton(
                  text: 'Sign Up',
                  icon: Image.asset(AppAssetsIcons.forwardArrow),
                  onPressed: _signUpScreen,
                ),
              )
            ])));
  }

  void _loginScreen() {
    RoutePaths.loginEmailScreen();
  }

  void _signUpScreen() {
    RoutePaths.signUpScreen();
  }
}
