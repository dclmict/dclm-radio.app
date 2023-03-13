import 'package:dclm_radio/auth_Screen.dart';
import 'package:dclm_radio/core_widget.dart';
import 'package:dclm_radio/utils/icons.dart';
import 'package:flutter/material.dart';

class PhoneVaildator extends StatefulWidget {
  const PhoneVaildator({super.key});

  @override
  State<PhoneVaildator> createState() => _PhoneVaildatorState();
}

class _PhoneVaildatorState extends State<PhoneVaildator> {
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
              /* <---- Phone number verification screen  ----> */
              const Text(
                'Verify Phone Number',
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 24),
              ),
              const SizedBox(height: 30),
              const Text(
                'An OTP has been sent to your phone number, Kindly input it below',
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 16),
              ),
              const SizedBox(height: 30),

              /* <---- Phone number field ----> */
              CustomTextField(
                text: 'Phone Number',
                hintText: 'Phone Number',
                prefixIcon: Image.asset(AppAssetsIcons.numeric),
              ),
              const SizedBox(height: 300),
              /* <---- Next button ----> */
              Center(
                child: CustomElevatedButton(
                  text: 'Next',
                  icon: Image.asset(AppAssetsIcons.forwardArrow),
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AuthScreen()),
                  ),
                ),
              )
            ])));
  }
}
