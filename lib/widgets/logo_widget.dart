import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(

        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            offset: Offset(0, 8),
            blurRadius: 15,
          )
        ],
      ),
      child: Image(semanticLabel: "d", image: AssetImage("assets/logo.png"),)
    );
  }
}
