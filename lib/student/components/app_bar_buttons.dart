import 'package:flutter/material.dart';

class AppBarButton extends StatelessWidget {
  final String imagePath;
  final double padding;
  final Function()? onTap;

  const AppBarButton({
    super.key,
    required this.imagePath,
    required this.padding,
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 55,
        width: 55,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade400, width: 1.2),
            borderRadius: BorderRadius.circular(17)
        ),
        child: Padding(
          padding: EdgeInsets.all(padding),
          child: Image.asset(imagePath),
        )
    );
  }
}
