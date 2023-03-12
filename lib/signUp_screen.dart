import 'package:dclm_radio/core_widget.dart';
import 'package:dclm_radio/routes/route_path.dart';
import 'package:dclm_radio/utils/icons.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
                  'Create Account',
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 40),
                ),
                const SizedBox(height: 30),
                /* <---- Custom Twin button widget ----> */
                CustomTwinButtonWidget(
                  firstButtonText: 'Sign up with Email',
                  firstIcon: Image.asset(AppAssetsIcons.message),
                  onFirstButtonTap: _signinEmail,
                  secondButtonText: 'Sign up with Phone',
                  secondIcon: Image.asset(AppAssetsIcons.phone),
                  onSecondButtonTap: _siginPhone,
                ),
                const SizedBox(height: 40),

                /* <---- Email text field ----> */
                CustomTextField(
                  text: 'Email',
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
                SizedBox(height: 30),
                /* <---- Confirm Password text field ----> */
                CustomTextField(
                  text: 'Confirm Password',
                  hintText: 'Confirm Password',
                  prefixIcon: Image.asset(AppAssetsIcons.tickLock),
                  suffixIcon: Image.asset(AppAssetsIcons.eyeView),
                ),
                const SizedBox(height: 80),
                Center(
                  child: CustomElevatedButton(
                    text: 'Next',
                    icon: Image.asset(AppAssetsIcons.forwardArrow),
                    onPressed: _authScreen,
                  ),
                ),
                const SizedBox(height: 40),
                GestureDetector(
                  onTap: _authScreen,
                  child: const Center(
                    child: Text(
                      'Skip for now',
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

  void _signinEmail() {
    RoutePaths.signUpScreen();
  }

  void _siginPhone() {
    RoutePaths.signUpwithPhone();
  }

  void _authScreen() {
    RoutePaths.authScreen();
  }
}
