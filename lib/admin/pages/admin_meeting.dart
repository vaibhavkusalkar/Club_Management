import 'package:ace/admin/components/meeting_card.dart';
import 'package:ace/admin/pages/admin_attendance.dart';
import 'package:flutter/material.dart';

class AdminMeeting extends StatefulWidget {
  const AdminMeeting({super.key});

  @override
  State<AdminMeeting> createState() => _AdminMeetingState();
}

class _AdminMeetingState extends State<AdminMeeting> {
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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => AdminAttendance()));
              },
              child: MeetingCard(
                theme_color: "dark",
                mode: "offline",
                date:  "Wed, 24 Dec",
                time: "11:15 AM",
                venue: "Block 14",
                topic: "Teacher's Day",
                agenda: "Discuss About the activities",
                team: "All Teams",
              ),
            ),
            MeetingCard(
              theme_color: "dark",
              mode: "online",
              date:  "Wed, 22 Nov",
              time: "6:00 PM",
              venue: "Google Meet",
              topic: "Regular Update",
              agenda: "Distribution of Work",
              team: "Technical",
            ),
            MeetingCard(
              theme_color: "dark",
              mode: "offline",
              date:  "Wed, 12 Nov",
              time: "2:30 PM",
              venue: "Block 1",
              topic: "Fresher's Party",
              agenda: "Practice",
              team: "Stage",
            ),

            //Divider
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 1,
                    width: 100,
                    color: Color.fromRGBO(150, 150, 157, 1.0),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Previous Meetings",
                    style: TextStyle(
                        fontFamily: 'CircularStd',
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Color.fromRGBO(150, 150, 157, 1.0)
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Container(
                    height: 1,
                    width: 100,
                    color: Color.fromRGBO(150, 150, 157, 1.0),
                  ),
                ],
              ),
            ),

            //Previous Meetings
            MeetingCard(
              theme_color: "light",
              mode: "online",
              date:  "Wed, 12 Nov",
              time: "11:15 AM",
              venue: "Block 14",
              topic: "Teacher's Day",
              agenda: "Discuss About the activities",
              team: "Event",
            ),
          ],
        ),
      ),
    );
  }
}
