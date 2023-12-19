import 'package:flutter/material.dart';

class MyFilledButton extends StatelessWidget {
  final Function()? onTap;
  final String label;
  const MyFilledButton({
    super.key,
    required this.onTap,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      style: ButtonStyle(
          fixedSize: MaterialStatePropertyAll(Size(365,54)),
        textStyle: MaterialStatePropertyAll(TextStyle(
          fontFamily: 'CircularStd',
          fontWeight: FontWeight.w500,
          fontSize: 17,
        )),
          backgroundColor: MaterialStatePropertyAll(Theme.of(context).highlightColor),
          foregroundColor: MaterialStatePropertyAll(Theme.of(context).primaryColorDark)
      ),
      child: Text(label),
      onPressed: onTap,
    );
  }
}
