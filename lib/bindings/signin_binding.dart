import 'package:get/get.dart';
import 'package:glass/controllers/signIn_controller.dart';

class SignInBinding implements Bindings {
@override
void dependencies() {
  Get.lazyPut<SignInController>(() => SignInController());
  }
}