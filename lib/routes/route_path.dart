import 'package:dclm_radio/routes/route_base.dart';
import 'package:get/get.dart';

class RoutePaths extends RoutesBase {
  static goTo(String route) => Get.toNamed(route);
  static signUpScreen() => Get.toNamed(RoutesBase.signUpScreen);
  static emailValidatorScreen() => Get.toNamed(RoutesBase.emailValidatorScreen);
  static signUpwithPhone() => Get.toNamed(RoutesBase.signUpwithPhone);
  static phoneValidator() => Get.toNamed(RoutesBase.phoneValidator);
  static authScreen() => Get.toNamed(RoutesBase.authScreen);
  static loginEmailScreen() => Get.toNamed(RoutesBase.loginEmailScreen);
  static loginPhoneScreen() => Get.toNamed(RoutesBase.loginPhoneScreen);
  static forgotPassPhone() => Get.toNamed(RoutesBase.forgotPassPhone);
  static forgotPassEmail() => Get.toNamed(RoutesBase.forgotPassEmail);
  static chooseNewPass() => Get.toNamed(RoutesBase.chooseNewPass);
  static resetSuccessPass() => Get.toNamed(RoutesBase.resetSuccessPass);
  static phoneSignUpFormScreen() =>
      Get.toNamed(RoutesBase.phoneSignUpFormScreen);
}
