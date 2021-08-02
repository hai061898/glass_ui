import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignInController extends GetxController {
  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();
  bool isObscure = true;
  void setObscure() {
    isObscure = !isObscure;
    update();
  }

// final MyRepository repository;
// SignInController(this.repository);

//   final _obj = ''.obs;
//   set obj(value) => this._obj.value = value;
//   get obj => this._obj.value;
}
