import 'package:dclm_radio/core_widget.dart';
import 'package:dclm_radio/routes/route_path.dart';
import 'package:dclm_radio/signUp_Phone.dart';
import 'package:dclm_radio/utils/icons.dart';
import 'package:flutter/material.dart';

class LoginEmailScreen extends StatefulWidget {
  const LoginEmailScreen({super.key});

  @override
  State<LoginEmailScreen> createState() => _LoginEmailScreenState();
}

class _LoginEmailScreenState extends State<LoginEmailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /* <--------  Back arrow icons --------> */
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Image.asset(AppAssetsIcons.backArrow)),
                const SizedBox(height: 10),
                const Text(
                  'Log in',
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 40),
                ),
                const SizedBox(height: 30),
                /* <---- Custom Twin button widget ----> */
                CustomTwinButtonWidget(
                  firstButtonText: 'Log in with Email',
                  firstIcon: Image.asset(AppAssetsIcons.message),
                  onFirstButtonTap: _loginEmail,
                  secondButtonText: 'Log in with Phone',
                  secondIcon: Image.asset(AppAssetsIcons.phone),
                  onSecondButtonTap: _loginPhone,
                ),
                const SizedBox(height: 40),

                /* <---- Email text field ----> */
                CustomTextField(
                  text: 'Email Address',
                  hintText: 'Email',
                  prefixIcon: Image.asset(AppAssetsIcons.message),
                
                ),
                SizedBox(height: 30),
                /* <---- Password text field ----> */
                CustomTextField(
                  text: 'Password',
                  hintText: 'Password',
                  prefixIcon: Image.asset(AppAssetsIcons.lock),
                  suffixIcon: Image.asset(AppAssetsIcons.eyeView),
                ),
                const SizedBox(height: 30),
                /* <---- forgotten Password text field ----> */
                GestureDetector(
                  onTap: _forgotPassEmail,
                  child: const Text(
                    'Forget password ?',
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 16,
                        color: Color(0xFFFF6687)),
                  ),
                ),
                const SizedBox(height: 80),
                Center(
                  child: CustomElevatedButton(
                    text: 'Log in',
                    icon: Image.asset(AppAssetsIcons.forwardArrow),
                    onPressed: _signUpScreen,
                  ),
                ),
                const SizedBox(height: 40),
                GestureDetector(
                  onTap: _signUpScreen,
                  child: const Center(
                    child: Text(
                      'Sign up instead',
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 16,
                          color: Color(0xFFFF6687)),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }

  void _loginEmail() {
    RoutePaths.loginEmailScreen();
  }

  void _loginPhone() {
    RoutePaths.loginPhoneScreen();
  }

  void _signUpScreen() {
    RoutePaths.signUpScreen();
  }

  void _forgotPassEmail() {
    RoutePaths.forgotPassEmail();
  }
}
