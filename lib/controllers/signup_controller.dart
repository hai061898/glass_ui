import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  TextEditingController name = new TextEditingController();
  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();

  bool isObscure = true;

  void setObscure() {
    isObscure = !isObscure;
    update();
  }

// final MyRepository repository;
// SignUpController(this.repository);

//   final _obj = ''.obs;
//   set obj(value) => this._obj.value = value;
//   get obj => this._obj.value;
}