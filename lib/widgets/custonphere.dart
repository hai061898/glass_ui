import 'package:flutter/material.dart';
import 'package:glass/utils/color.dart';

class CustomSphere extends StatelessWidget {
  final double? width;
  final double? height;
  const CustomSphere({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            circlePurpleDark,
            circlePurpleLight,
          ],
        ),
        shape: BoxShape.circle,
      ),
    );
  }
}