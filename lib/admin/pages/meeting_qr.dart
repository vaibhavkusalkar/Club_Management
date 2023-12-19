import 'package:ace/admin/components/meeting_card.dart';
import 'package:ace/admin/pages/admin_attendance.dart';
import 'package:flutter/material.dart';

class MeetingQR extends StatefulWidget {
  const MeetingQR({super.key});

  @override
  State<MeetingQR> createState() => _MeetingQRState();
}

class _MeetingQRState extends State<MeetingQR> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: IconButton(
            icon: Icon(
              Icons.arrow_back,
              size: 26,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(top: 0.5),
          child: Text(
            "Meetings",
            style: TextStyle(fontFamily: 'CircularStd'),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 3,right: 15.0),
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.add_rounded,
                  size: 30,
                )),
          )
        ],
      ),
    );
  }
}
