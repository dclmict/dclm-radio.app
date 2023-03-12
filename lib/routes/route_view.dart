// ignore_for_file: prefer_const_constructors

import 'package:dclm_radio/auth_Screen.dart';
import 'package:dclm_radio/choose_pass.dart';
import 'package:dclm_radio/email_vaildator.dart';
import 'package:dclm_radio/forget_pass_email.dart';
import 'package:dclm_radio/forget_pass_phone.dart';
import 'package:dclm_radio/loginEmailScreen.dart';
import 'package:dclm_radio/login_phone_screen.dart';
import 'package:dclm_radio/phone_Vaildator.dart';
import 'package:dclm_radio/phone_signup_form.dart';
import 'package:dclm_radio/reset_success.dart';
import 'package:dclm_radio/routes/route_base.dart';
import 'package:dclm_radio/signUp_Phone.dart';
import 'package:dclm_radio/signUp_screen.dart';
import 'package:get/get.dart';

class RouteView extends RoutesBase {
  static List<GetPage> pages = [
    GetPage(
      name: RoutesBase.emailValidatorScreen,
      page: () => EmailValidatorScreen(),
    ),
    GetPage(
      name: RoutesBase.signUpScreen,
      page: () => SignUpScreen(),
    ),
    GetPage(
      name: RoutesBase.signUpwithPhone,
      page: () => SignupWithPhone(),
    ),
    GetPage(
      name: RoutesBase.phoneValidator,
      page: () => PhoneVaildator(),
    ),
    GetPage(
      name: RoutesBase.authScreen,
      page: () => AuthScreen(),
    ),
    GetPage(
      name: RoutesBase.loginEmailScreen,
      page: () => LoginEmailScreen(),
    ),
    GetPage(
      name: RoutesBase.loginPhoneScreen,
      page: () => LoginPhoneScreen(),
    ),
    GetPage(
      name: RoutesBase.forgotPassPhone,
      page: () => ForgotPassPhoneScreen(),
    ),
    GetPage(
      name: RoutesBase.forgotPassEmail,
      page: () => ForgotPassEmailScreen(),
    ),
    GetPage(
      name: RoutesBase.resetSuccessPass,
      page: () => ResetSuccessPassScreen(),
    ),
    GetPage(
      name: RoutesBase.chooseNewPass,
      page: () => ChooseNewPassScreen(),
    ),
    GetPage(
      name: RoutesBase.phoneSignUpFormScreen,
      page: () => PhoneSignUpFormScreen(),
    )
  ];
}
