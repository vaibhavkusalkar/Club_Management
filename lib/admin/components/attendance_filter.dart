import 'package:flutter/material.dart';

class AttendanceFilter extends StatefulWidget {
  final String team;
  const AttendanceFilter({
    Key? key,
    required this.team,
  }) : super(key: key);

  @override
  _AttendanceFilterState createState() => _AttendanceFilterState();
}

class _AttendanceFilterState extends State<AttendanceFilter> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: GestureDetector(
        onTap: () {
          setState(() {
            selected = !selected;
          });
        },
        child: Container(
          constraints: BoxConstraints(maxWidth: 133),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
              color: selected
                  ? Colors.transparent
                  : Color.fromRGBO(150, 150, 157, 1.0),
              width: 1,
            ),
            color: selected
                ? Color.fromRGBO(155, 155, 155, 0.5019607843137255)
                : Colors.transparent,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            child: Text(
              widget.team,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontFamily: 'CircularStd',
                fontWeight: FontWeight.w500,
                fontSize: 12.5,
                color: Colors.black87,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
