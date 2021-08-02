import 'package:flutter/material.dart';

class GlassButton extends StatelessWidget {
  final String? text;
  final VoidCallback? onPress;
  final double paddingH;
  const GlassButton({Key? key, this.text, this.onPress, this.paddingH = 20})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 8.0,
          horizontal: this.paddingH,
        ),
        decoration: BoxDecoration(
            border: Border.all(
              color: Colors.white,
              width: 2,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(25.0),
            )),
        child: Text(
          text!,
          style: TextStyle(color: Colors.white, fontSize: 20.0),
        ),
      ),
    );
  }
}
