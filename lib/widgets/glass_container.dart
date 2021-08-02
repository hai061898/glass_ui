import 'dart:ui';

import 'package:flutter/material.dart';

class GlassContainer extends StatelessWidget {
  final Widget child;
  final double? height;
  final double? width;
  final double borderRadius;
  const GlassContainer(
      {Key? key,
      this.borderRadius = 20.0,
      this.height,
      this.width,
      required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(
        Radius.circular(borderRadius),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            gradient: RadialGradient(
              radius: 50,
              colors: [
                Colors.white.withOpacity(0.20),
                Colors.white.withOpacity(0.1),
              ],
            ),
          ),
          child: child,
        ),
      ),
    );
  }
}
