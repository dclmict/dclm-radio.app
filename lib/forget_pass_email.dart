import 'package:dclm_radio/core_widget.dart';
import 'package:dclm_radio/routes/route_path.dart';
import 'package:dclm_radio/utils/icons.dart';
import 'package:flutter/material.dart';

class ForgotPassEmailScreen extends StatefulWidget {
  const ForgotPassEmailScreen({super.key});

  @override
  State<ForgotPassEmailScreen> createState() => _ForgotPassEmailScreenState();
}

class _ForgotPassEmailScreenState extends State<ForgotPassEmailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 0,
        ),
        body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
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
                      'Forgot Password',
                      style: TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 24),
                    ),
                    const SizedBox(height: 30),
                    const Text(
                      'A pin has been sent to your email address, must*****our1@gmail.com Kindly input it below',
                      style: TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 16),
                    ),
                    SizedBox(height: 30),

                    /* <---- Reset Pin field ----> */
                    CustomTextField(
                      text: 'Reset Pin',
                      hintText: 'Reset Pin',
                     prefixIcon:  Image.asset(AppAssetsIcons.numeric), 
                    ),
                    SizedBox(height: 300),
                    Center(
                      child: CustomElevatedButton(
                        text: 'Next',
                        icon: Image.asset(AppAssetsIcons.forwardArrow),
                        onPressed: _chooseNewPass,
                      ),
                    )
                  ]),
            )));
  }

  void _chooseNewPass() {
    RoutePaths.chooseNewPass();
  }
}
