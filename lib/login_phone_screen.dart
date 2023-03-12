import 'package:dclm_radio/core_widget.dart';
import 'package:dclm_radio/routes/route_path.dart';
import 'package:dclm_radio/signUp_Phone.dart';
import 'package:dclm_radio/utils/icons.dart';
import 'package:flutter/material.dart';

class LoginPhoneScreen extends StatefulWidget {
  const LoginPhoneScreen({super.key});

  @override
  State<LoginPhoneScreen> createState() => _LoginPhoneScreenState();
}

class _LoginPhoneScreenState extends State<LoginPhoneScreen> {
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
                  onFirstButtonTap: _getEmail,
                  secondButtonText: 'Log in with Phone',
                  secondIcon: Image.asset(AppAssetsIcons.phone),
                ),
                const SizedBox(height: 40),

                /* <---- Phone Number field ----> */
                CustomTextField(
                  text: 'Phone Number',
                  hintText: 'Email',
                   prefixIcon:  Image.asset(AppAssetsIcons.message), 
                ),
                SizedBox(height: 30),
                /* <---- Password text field ----> */
                CustomTextField(
                  text: 'Password',
                  hintText: 'Password',
                  prefixIcon:  Image.asset(AppAssetsIcons.lock),suffixIcon: Image.asset(AppAssetsIcons.eyeView),
                ),
                const SizedBox(height: 30),
                /* <---- forgotten Password text field ----> */
                GestureDetector(
                  onTap: _forgotPassPhone,
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

  void _getEmail() {
    RoutePaths.loginEmailScreen();
  }

  void _signUpScreen() {
    RoutePaths.signUpScreen();
  }

  void _forgotPassPhone() {
    RoutePaths.forgotPassPhone();
  }
}
