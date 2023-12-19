import 'package:flutter/material.dart';

class WorkspaceAttribute extends StatefulWidget {
  final String text;
  final String position_color;
  const WorkspaceAttribute({
    super.key,
    required this.text,
    required this.position_color
  });

  @override
  State<WorkspaceAttribute> createState() => _WorkspaceAttributeState();
}

class _WorkspaceAttributeState extends State<WorkspaceAttribute> {
  @override
  Widget build(BuildContext context) {
    Color boxColor = widget.position_color == "dark"
        ? Theme.of(context).primaryColorLight
        //: Color.fromRGBO(255, 253, 255, 1.0);
        : Color.fromRGBO(255, 250, 249, 1);

    Color textColor = widget.position_color == "dark"
        ? Color.fromRGBO(176, 176, 185, 1.0)
        : Theme.of(context).primaryColorLight;

    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
        constraints: BoxConstraints(
          maxWidth: 133
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: boxColor
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
          child: Text(
            widget.text,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                fontFamily: 'CircularStd',
                fontWeight: FontWeight.w500,
                fontSize: 12.5,
                color: textColor
            ),
          ),
        ),
      ),
    );
  }
}



/*
Container(
        constraints: BoxConstraints(
          maxWidth: 133
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Theme.of(context).primaryColorLight
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
          child: Text(
            widget.text,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                fontFamily: 'CircularStd',
                fontWeight: FontWeight.w500,
                fontSize: 12.5,
                color: Color.fromRGBO(176, 176, 185, 1.0)
            ),
          ),
        ),
      ),
*/