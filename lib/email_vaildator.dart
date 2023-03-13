import 'package:dclm_radio/core_widget.dart';
import 'package:dclm_radio/routes/route_path.dart';
import 'package:dclm_radio/utils/icons.dart';
import 'package:flutter/material.dart';

class EmailValidatorScreen extends StatefulWidget {
  const EmailValidatorScreen({super.key});

  @override
  State<EmailValidatorScreen> createState() => _EmailValidatorScreenState();
}

class _EmailValidatorScreenState extends State<EmailValidatorScreen> {
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
              const Text(
                'Verify Email Address',
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 24),
              ),
              const SizedBox(height: 30),
              const Text(
                'An OTP has been sent to your email address. Kindly input it below',
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 16),
              ),
              const SizedBox(height: 30),

              /* <---- Email Address text field ----> */
              CustomTextField(
                text: 'Email Address',
                hintText: 'Email Address',
                prefixIcon: Image.asset(AppAssetsIcons.numeric),
              ),
              const SizedBox(height: 300),
              /* <---- Next Button  ----> */
              Center(
                child: CustomElevatedButton(
                  text: 'Next',
                  icon: Image.asset(AppAssetsIcons.forwardArrow),
                  onPressed: _authScreen,
                ),
              )
            ])));
  }

  void _authScreen() {
    RoutePaths.authScreen();
  }
}
