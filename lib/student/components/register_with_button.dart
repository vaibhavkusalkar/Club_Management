import 'package:flutter/material.dart';

class RegisterWithButton extends StatelessWidget {
  final String image;
  const RegisterWithButton({
    super.key,
    required this.image
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        //shape: BoxShape.circle,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
            color: Colors.grey.shade400,
            width: 1.1
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 10,bottom: 12,left: 11,right:12),
        child: Image.asset(
            image
        ),
      ),
    );
  }
}
