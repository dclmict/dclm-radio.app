import 'package:dclm_radio/core_widget.dart';
import 'package:dclm_radio/routes/route_path.dart';
import 'package:dclm_radio/utils/icons.dart';
import 'package:flutter/material.dart';

class ChooseNewPassScreen extends StatefulWidget {
  const ChooseNewPassScreen({super.key});

  @override
  State<ChooseNewPassScreen> createState() => _ChooseNewPassScreenState();
}

class _ChooseNewPassScreenState extends State<ChooseNewPassScreen> {
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
                  'Choose New Password',
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 24),
                ),
                const SizedBox(height: 30),
                const Text(
                  'Kindly choose a new password and type it in below.',
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 16),
                ),
                const SizedBox(height: 60),
                /* <---- Password text field ----> */
                CustomTextField(
                  text: 'New Password',
                  hintText: 'New Password',
                  prefixIcon: Image.asset(AppAssetsIcons.lock),
                  suffixIcon: Image.asset(AppAssetsIcons.eyeView),
                ),
                const SizedBox(height: 30),
                /* <---- Confirm Password text field ----> */
                CustomTextField(
                  text: 'Confirm Password',
                  hintText: 'Confirm Password',
                  prefixIcon: Image.asset(AppAssetsIcons.lock),
                  suffixIcon: Image.asset(AppAssetsIcons.eyeView),
                ),
                const SizedBox(height: 150),
                Center(
                  child: CustomElevatedButton(
                    text: 'Reset Password',
                    icon: Image.asset(AppAssetsIcons.forwardArrow),
                    onPressed: _successScreen,
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  void _successScreen() {
    RoutePaths.resetSuccessPass();
  }
}
