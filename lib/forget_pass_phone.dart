import 'package:dclm_radio/auth_Screen.dart';
import 'package:dclm_radio/core_widget.dart';
import 'package:dclm_radio/routes/route_path.dart';
import 'package:dclm_radio/utils/icons.dart';
import 'package:flutter/material.dart';

class ForgotPassPhoneScreen extends StatefulWidget {
  const ForgotPassPhoneScreen({super.key});

  @override
  State<ForgotPassPhoneScreen> createState() => _ForgotPassPhoneScreenState();
}

class _ForgotPassPhoneScreenState extends State<ForgotPassPhoneScreen> {
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
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              /* <--------  Back arrow icons --------> */
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Image.asset(AppAssetsIcons.backArrow)),
              const SizedBox(height: 10),
              /* <---- Forget  Password with phone number  ----> */
              const Text(
                'Forgot Password',
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 24),
              ),
              const SizedBox(height: 30),
              const Text(
                'A pin has been sent to your phone number ending with 0786. Kindly input it below',
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 16),
              ),
              const SizedBox(height: 30),

              /* <----Reset Pin field ----> */
              CustomTextField(
                text: 'Reset Pin',
                hintText: 'Reset Pin',
                prefixIcon: Image.asset(AppAssetsIcons.numeric),
              ),
              const SizedBox(height: 300),
              /* <---- Next Botton  ----> */
              Center(
                child: CustomElevatedButton(
                  text: 'Next',
                  icon: Image.asset(AppAssetsIcons.forwardArrow),
                  onPressed: _chooseNewPass,
                ),
              )
            ]),
          ),
        ));
  }

  void _chooseNewPass() {
    RoutePaths.chooseNewPass();
  }
}
