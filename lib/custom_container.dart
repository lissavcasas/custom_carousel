import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffF0F3F7),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(255, 255, 255, 0.272044),
            offset: Offset(-11, -11),
            blurRadius: 20.0,
          ),
          BoxShadow(
            color: Color.fromRGBO(246, 251, 255, 0.184288),
            offset: Offset(-8, -30),
            blurRadius: 22.0,
          ),
          BoxShadow(
            color: Color.fromRGBO(244, 248, 251, 0.50254),
            offset: Offset(-8, 0),
            blurRadius: 8.0,
          ),
          BoxShadow(
            color: Color.fromRGBO(176, 195, 210, 0.727846),
            offset: Offset(19, 15),
            blurRadius: 30.0,
          ),
        ],
      ),
      child: Center(
        child: Image.asset(
          'assets/flutter_dev.png',
          height: 30.0,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}