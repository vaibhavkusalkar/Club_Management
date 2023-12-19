import 'package:flutter/material.dart';

import '../../student/components/workspace_attribute.dart';

class AttendanceName extends StatelessWidget {
  final String name;
  final String timestamp;
  final String location;
  const AttendanceName(
      {super.key,
      required this.name,
      required this.timestamp,
      required this.location});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        height: 70,
        //color: Colors.red,
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Name
            Text(
              name,
              style: TextStyle(
                  fontFamily: 'CircularStd',
                  fontWeight: FontWeight.w700,
                  fontSize: 17,
                  color: Colors.black87),
            ),

            //Timestamp, Location
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  timestamp,
                  style: TextStyle(
                      fontFamily: 'CircularStd',
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                      color: Colors.black54),
                ),
                SizedBox(
                  width: 6,
                ),
                Container(
                  width: 1,
                  height: 9,
                  color: Colors.black54,
                ),
                SizedBox(
                  width: 7,
                ),
                Expanded(
                  child: Text(
                    location,
                    style: TextStyle(
                        fontFamily: 'CircularStd',
                        fontWeight: FontWeight.w700,
                        fontSize: 12,
                        overflow: TextOverflow.ellipsis,
                        color: Colors.black54),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
