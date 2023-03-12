import 'package:dclm_radio/core_widget.dart';
import 'package:dclm_radio/routes/route_path.dart';
import 'package:dclm_radio/utils/icons.dart';
import 'package:flutter/material.dart';

class PhoneSignUpFormScreen extends StatefulWidget {
  const PhoneSignUpFormScreen({super.key});

  @override
  State<PhoneSignUpFormScreen> createState() => _PhoneSignUpFormScreenState();
}

class _PhoneSignUpFormScreenState extends State<PhoneSignUpFormScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
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
                  'Just A few more things',
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 24),
                ),
                const SizedBox(height: 40),

                /* <---- First Name field ----> */
                CustomTextField(
                  text: 'First Name',
                  hintText: 'First Name',
                   prefixIcon: Image.asset(AppAssetsIcons.profile), 
                ),
                SizedBox(height: 30),
                /* <---- Surname text field ----> */
                CustomTextField(
                  text: 'Surname',
                  hintText: 'Surname',
                   prefixIcon: Image.asset(AppAssetsIcons.profile), 
                ),
                const SizedBox(height: 30),
                /* <---- Date of birth text field ----> */
                CustomTextField(
                  text: 'Date of Birth',
                  hintText: 'DD/MM/YY',
                   prefixIcon: Image.asset(AppAssetsIcons.calendar), 
                ),
                const SizedBox(height: 30),
                /* <---- Gender selector ----> */
                GenderSelector(
                  secondText: 'Female',
                  firstText: 'Male', 
                ),
                const SizedBox(height: 80),
                Center(
                  child: CustomElevatedButton(
                    text: 'Next',
                    icon: Image.asset(AppAssetsIcons.forwardArrow),
                    onPressed: _signUpScreen,
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  void _signUpScreen() {
    RoutePaths.signUpScreen();
  }
}
