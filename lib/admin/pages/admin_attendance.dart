import 'dart:ffi';
import 'package:ace/admin/components/attendance_filter.dart';
import 'package:ace/admin/components/attendance_name.dart';
import 'package:ace/admin/pages/meeting_qr.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class AdminAttendance extends StatefulWidget {
  const AdminAttendance({super.key});

  @override
  State<AdminAttendance> createState() => _AdminAttendanceState();
}

class _AdminAttendanceState extends State<AdminAttendance> {
  List<PieChartSectionData> section = [];
  int index =10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 16.0),
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
          padding: const EdgeInsets.only(top: 0.5, left: 3),
          child: Text(
            "Attendance",
            style: TextStyle(fontFamily: 'CircularStd'),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 4.0),
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.file_download_outlined,
                  size: 25,
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15.0, top: 4),
            child: IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MeetingQR()));
                },
                icon: Icon(
                  Icons.qr_code_rounded,
                  size: 23,
                )),
          )
        ],
      ),
      body: Column(
        children: [
          //Percentage
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Text(
              "85 %",
              style: TextStyle(
                  fontFamily: 'CircularStd',
                  fontSize: 60,
                  fontWeight: FontWeight.w100),
            ),
          ),

          //Average Info
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 80,
                  width: 100,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(169, 169, 169, 0.5),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Present",
                        style: TextStyle(
                            fontFamily: 'CircularStd',
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "37",
                        style: TextStyle(
                            fontFamily: 'CircularStd',
                            fontSize: 26,
                            fontWeight: FontWeight.w100),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 80,
                  width: 100,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(169, 169, 169, 0.5),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Absent",
                        style: TextStyle(
                            fontFamily: 'CircularStd',
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "12",
                        style: TextStyle(
                            fontFamily: 'CircularStd',
                            fontSize: 26,
                            fontWeight: FontWeight.w100),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),

          //Divider
          Container(
            height: 0.5,
            color: Color.fromRGBO(169, 169, 169, 0.5),
          ),

          //Filters
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  AttendanceFilter(team: "Core"),
                  AttendanceFilter(team: "Technical"),
                  AttendanceFilter(team: "Event Management"),
                  AttendanceFilter(team: "Stage"),
                  AttendanceFilter(team: "Art"),
                  AttendanceFilter(team: "Campaigning"),
                  AttendanceFilter(team: "Documentation"),
                  AttendanceFilter(team: "Digital Marketing"),
                  AttendanceFilter(team: "Core"),
                ],
              )
            ),
          ),

          //List of Students
          Expanded(
            child: ListView.builder(
              itemCount: 15, // Replace with the desired number of items
              itemBuilder: (BuildContext context, int index) {
                return AttendanceName(
                  name: "Vaibhav Kusalkar",
                  timestamp: "24 Apr, 11:57 AM",
                  location: "Atul Nagar, Phase 1, Mumbai Banaglore Highway",
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
