import 'package:flutter/material.dart';

class MyPasswordTextField extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final bool password_obscure;

  MyPasswordTextField({
    Key? key,
    required this.controller,
    required this.hintText,
    this.password_obscure = true,
  }) : super(key: key);

  @override
  _MyPasswordTextFieldState createState() => _MyPasswordTextFieldState();
}

class _MyPasswordTextFieldState extends State<MyPasswordTextField> {
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 22, top: 3),
      child: Container(
        height: 54,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: Color.fromRGBO(175, 175, 180, 1.0),
          ),
        ),
        padding: EdgeInsets.symmetric(horizontal: 15,vertical: 3),
        child: TextField(
          controller: widget.controller,
          obscureText: !showPassword,
          cursorColor: Colors.grey,
          textCapitalization: TextCapitalization.none,
          style: TextStyle(
            fontFamily: 'CircularStd',
          ),
          decoration: InputDecoration(
            hintText: widget.hintText,
            hintStyle: TextStyle(
              fontFamily: 'CircularStd',
              fontWeight: FontWeight.w500,
              fontSize: 15,
              color: Color.fromRGBO(175, 175, 180, 1.0),
            ),
            border: InputBorder.none,
            suffixIcon: IconButton(
              icon: Icon(
                showPassword ? Icons.visibility_off_rounded : Icons.visibility_rounded,
                color: Colors.grey,
              ),
              onPressed: () {
                // Toggle password visibility
                setState(() {
                  showPassword = !showPassword;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
