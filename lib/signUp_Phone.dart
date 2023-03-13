import 'package:dclm_radio/core_widget.dart';
import 'package:dclm_radio/routes/route_path.dart';
import 'package:dclm_radio/utils/icons.dart';
import 'package:flutter/material.dart';

class SignupWithPhone extends StatefulWidget {
  const SignupWithPhone({super.key});

  @override
  State<SignupWithPhone> createState() => _SignupWithPhoneState();
}

class _SignupWithPhoneState extends State<SignupWithPhone> {
  bool _isHidden = true;
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
                  onFirstButtonTap: _signUpScreen,
                  secondButtonText: 'Sign up with Phone',
                  secondIcon: Image.asset(AppAssetsIcons.phone),
                ),
                const SizedBox(height: 40),
                /* <---- Phone Number field ----> */
                CustomTextField(
                  text: 'Phone Number',
                  hintText: 'Email',
                  prefixIcon: Image.asset(AppAssetsIcons.message),
                ),
                const SizedBox(height: 30),
                /* <---- Password text field ----> */
                CustomTextField(
                  text: 'Password',
                  hintText: 'Password',
                  prefixIcon: Image.asset(AppAssetsIcons.lock),
                ),
                const SizedBox(height: 30),
                /* <---- Confirm Password text field ----> */
                CustomTextField(
                  text: 'Confirm Password',
                  hintText: 'Confirm Password',
                  prefixIcon: Image.asset(AppAssetsIcons.tickLock),
                  suffixIcon: IconButton(
                      padding: EdgeInsets.zero,
                      visualDensity: const VisualDensity(
                          horizontal: VisualDensity.minimumDensity,
                          vertical: VisualDensity.minimumDensity),
                      color: Colors.transparent,
                      /* <---- Hide  Password  ----> */
                      onPressed: _visiblePassword,
                      icon: Image.asset(AppAssetsIcons.eyeView,
                          color: _isHidden
                              ? Colors.white
                              : const Color(0xFFFF6687))),
                ),
                /* <---- Next Button  ----> */
                const SizedBox(height: 80),
                Center(
                  child: CustomElevatedButton(
                    text: 'Next',
                    icon: Image.asset(AppAssetsIcons.forwardArrow),
                    onPressed: _phoneForm,
                  ),
                ),
                /* <---- Skip button  ----> */
                const SizedBox(height: 40),
                const Center(
                  child: Text(
                    'Skip for now',
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 16,
                        color: Color(0xFFFF6687)),
                  ),
                )
              ],
            ),
          ),
        ));
  }

  void _visiblePassword() {
    setState(() {
      //refresh UI
      if (_isHidden) {
        //if passenable == true, make it false
        _isHidden = false;
      } else {
        _isHidden = true; //if passenable == false, make it true
      }
    });
  }

  void _phoneForm() {
    RoutePaths.phoneSignUpFormScreen();
  }

  void _signUpScreen() {
    RoutePaths.signUpScreen();
  }
}
