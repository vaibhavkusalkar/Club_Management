import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final TextCapitalization capitalization;
  final TextInputType keyboardType;
  const MyTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.capitalization,
    required this.keyboardType
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 22,top: 3),
      child: Container(
        height: 54,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: Color.fromRGBO(175, 175, 180, 1.0)
          )
        ),
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: TextField(
          controller: controller,
          obscureText: false,
          cursorColor: Colors.grey,
          textCapitalization: capitalization,
          keyboardType: keyboardType,
          style: TextStyle(
            fontFamily: 'CircularStd',
          ),
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(
                fontFamily: 'CircularStd',
                fontWeight: FontWeight.w500,
                fontSize: 15,
                color: Color.fromRGBO(175, 175, 180, 1.0)
            ),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
