import 'package:get/get.dart';
import 'package:glass/controllers/signup_controller.dart';

class SignUpBinding implements Bindings {
@override
void dependencies() {
  Get.lazyPut<SignUpController>(() => SignUpController());
  }
}