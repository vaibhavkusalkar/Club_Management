import 'package:ace/student/components/workspace_attribute.dart';
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:intl/intl.dart';

class WorkspaceTile extends StatefulWidget {
  final IconData icon;
  final String label;
  final String desc;
  final String attribute_1;
  final String attribute_2;
  final String theme_color;
  WorkspaceTile({
    super.key,
    required this.theme_color,
    required this.icon,
    required this.label,
    required this.desc,
    required this.attribute_1,
    required this.attribute_2,
  });

  @override
  State<WorkspaceTile> createState() => _WorkspaceTileState();
}

class _WorkspaceTileState extends State<WorkspaceTile> {
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
    String formattedDate = DateFormat('E, d MMM').format(now);

    Color BoxColor = widget.theme_color == "dark"
        ? Theme.of(context).primaryColorDark
        : Color.fromRGBO(255, 239, 238, 1);

    Color iconBoxColor = widget.theme_color == "dark"
        ? Theme.of(context).primaryColorLight
        //: Color.fromRGBO(255, 253, 255, 1.0);
        : Color.fromRGBO(255, 250, 249, 1);

    Color highlightColor = widget.theme_color == "dark"
        ? Theme.of(context).backgroundColor
        : Theme.of(context).primaryColorLight;    ///light or dark option

    Color openIconColor = widget.theme_color == "dark"
        ? Color.fromRGBO(172, 172, 182, 1.0)
        : Color.fromRGBO(150, 150, 157, 1.0);

    Color? shadowColor = widget.theme_color == "dark"
        ? Color.fromRGBO(172, 172, 182, 1.0)
        : Color.fromRGBO(255, 253, 253, 1.0);

    return Padding(
      padding: const EdgeInsets.only(top: 17,bottom: 7),
      child: Material(
        elevation: 8,
        shadowColor: shadowColor,
        borderRadius: BorderRadius.circular(22),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22),
            color: BoxColor,
          ),
          child: Padding(
            padding: const EdgeInsets.all(18),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                //upper-section
                Padding(
                  padding: const EdgeInsets.only(bottom: 18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //Icon
                      Container(
                          decoration: BoxDecoration(
                              color: iconBoxColor,
                              borderRadius: BorderRadius.circular(12)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Icon(
                              widget.icon,
                              size: 35,
                              color: highlightColor,
                            ),
                          )
                      ),

                      //Label
                      Padding(
                        padding: const EdgeInsets.only(left: 18),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.label,
                              style: TextStyle(
                                  fontFamily: 'CircularStd',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 17,
                                  color: highlightColor
                              ),
                            ),
                            Text(
                              widget.desc,
                              style: TextStyle(
                                  fontFamily: 'CircularStd',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: Color.fromRGBO(150, 150, 157, 1.0)
                              ),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),

                      //open-icon
                      Icon(
                        Icons.arrow_forward_ios,
                        color: openIconColor,
                      )
                    ],
                  ),
                ),

                //lower-section
                Row(
                  children: [
                    //date
                    WorkspaceAttribute(
                      text: widget.attribute_1,
                      position_color: widget.theme_color,
                    ),

                    //location
                    WorkspaceAttribute(
                      text: widget.attribute_2,
                      position_color: widget.theme_color,
                    )
                  ],
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
