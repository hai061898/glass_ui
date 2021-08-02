import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:glass/pages/home/home_view.dart';


void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Flutter_App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.blue),
      home: HomePage(),
    );
  }
}
