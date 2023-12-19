import 'package:ace/student/components/app_bar_buttons.dart';
import 'package:ace/student/components/workspace_attribute.dart';
import 'package:ace/student/components/workspace_tile.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class StudentHomepage extends StatefulWidget {
  const StudentHomepage({super.key});

  @override
  State<StudentHomepage> createState() => _StudentHomepageState();
}

class _StudentHomepageState extends State<StudentHomepage> {
  String locationMessage = "Getting location...";
  @override
  void initState() {
    super.initState();
    getLocation();
  }

  void getLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );

      List<Placemark> placemarks = await placemarkFromCoordinates(
        position.latitude,
        position.longitude,
      );

      if (placemarks.isNotEmpty) {
        Placemark placemark = placemarks[0];
        String? areaName = placemark.name;
        setState(() {
          locationMessage = "Area: $areaName";
        });
      } else {
        setState(() {
          locationMessage = "Location not found";
        });
      }
    } catch (e) {
      setState(() {
        locationMessage = "Error: $e";
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    int meeting_count=0;
    int task_count=0;
    String formattedDate = DateFormat('E, d MMM').format(now);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //App Bar Buttons
            Padding(
              padding: const EdgeInsets.only(top: 60,bottom: 35,left: 8,right: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //More
                  AppBarButton(
                    imagePath: "lib/assets/four-dots.png",
                    padding: 6,
                    onTap: (){},
                  ),

                  //Profile
                  AppBarButton(
                    imagePath: "lib/assets/profile.png",
                    padding: 12,
                    onTap: (){},
                  )
                ],
              ),
            ),

            //Welcome msg
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hi Vaibhav ✌🏻",
                    style: TextStyle(
                      fontFamily: 'CircularStd',
                      fontSize: 28,
                      fontWeight: FontWeight.w300,
                      color: Theme.of(context).primaryColorDark
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "Get Started Today !",     //or Lets's Get Started
                    style: TextStyle(
                        fontFamily: 'CircularStd',
                        fontSize: 28,
                        fontWeight: FontWeight.w700,
                        color: Theme.of(context).primaryColorDark
                    ),
                  ),
                ],
              ),
            ),


            //image(illustration)
            Padding(
              padding: const EdgeInsets.only(top: 15,bottom: 30),
              child: Image.asset(
                "lib/assets/working.png",
              ),
            ),

            //workspace
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  " Workspace",
                  style: TextStyle(
                    fontFamily: 'CircularStd',
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    color: Theme.of(context).primaryColorDark
                  ),
                ),
                //view all(expanded)
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "View all",
                          style: TextStyle(
                            fontFamily: 'CircularStd',
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(150, 150, 157, 1.0)
                          ),
                        ),
                        Icon(
                          Icons.expand_more_rounded,
                          size: 15,
                          color: Color.fromRGBO(150, 150, 157, 1.0),
                        )
                      ],
                    ),
                  )
                )
              ],
            ),

            //Options
            //attendance
            WorkspaceTile(
              theme_color: "dark",
              icon: Icons.book_rounded,
              label: "Attendance",
              desc: "Mark your Attendance",
              attribute_1: "$formattedDate",
              attribute_2: locationMessage,
            ),

            //meetings
            WorkspaceTile(
              theme_color: "light",
              icon: Icons.groups_rounded,
              label: "Meeting",
              desc: "See your Meetings",
              attribute_1: "Today's Meetings: $meeting_count",
              attribute_2: "Task Assigned: $task_count",
            ),

          ],
        ),
      )
    );
  }
}
