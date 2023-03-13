import 'package:dclm_radio/core_widget.dart';
import 'package:dclm_radio/routes/route_path.dart';
import 'package:dclm_radio/utils/icons.dart';
import 'package:flutter/material.dart';

class ResetSuccessPassScreen extends StatefulWidget {
  const ResetSuccessPassScreen({super.key});

  @override
  State<ResetSuccessPassScreen> createState() => _ResetSuccessPassScreenState();
}

class _ResetSuccessPassScreenState extends State<ResetSuccessPassScreen> {
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
                    const SizedBox(height: 30),
                    const Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Your Password has been reset successfully',
                        style: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 24),
                      ),
                    ),
                    const SizedBox(height: 450),
                     /* <---- LogIn Button  ----> */
                    Center(
                      child: CustomElevatedButton(
                        text: 'Log in',
                        icon: Image.asset(AppAssetsIcons.forwardArrow),
                        onPressed: _authScreen,
                      ),
                    )
                  ]),
            )));
  }

  void _authScreen() {
    RoutePaths.authScreen();
  }
}
