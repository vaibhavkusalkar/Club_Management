import 'package:flutter/material.dart';

import '../../student/components/workspace_attribute.dart';

class MeetingCard extends StatefulWidget {
  final String topic;
  final String agenda;
  final String theme_color;
  final String mode;
  final String date;
  final String time;
  final String venue;
  final String team;
  const MeetingCard({
    super.key,
    required this.theme_color,
    required this.mode,
    required this.date,
    required this.time,
    required this.venue,
    required this.topic,
    required this.agenda,
    required this.team
  });

  @override
  State<MeetingCard> createState() => _MeetingCardState();
}

class _MeetingCardState extends State<MeetingCard> {
  @override
  Widget build(BuildContext context) {
    IconData icon = widget.mode == "offline"
        ? Icons.book_rounded
        : Icons.language_rounded;

    Color BoxColor = widget.theme_color == "dark"
        ? Theme.of(context).primaryColorDark
        : Color.fromRGBO(255, 239, 238, 1);

    Color? shadowColor = widget.theme_color == "dark"
        ? Color.fromRGBO(172, 172, 182, 1.0)
        : Color.fromRGBO(255, 253, 253, 1.0);

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

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 8),
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
                              icon,
                              size: 30,
                              color: highlightColor,
                            ),
                          )
                      ),

                      //Topic
                      Padding(
                        padding: const EdgeInsets.only(left: 18),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.topic,
                              style: TextStyle(
                                  fontFamily: 'CircularStd',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 17,
                                  color: highlightColor
                              ),
                            ),
                            Text(
                              widget.agenda,
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
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      //date
                      WorkspaceAttribute(
                        text: widget.date,
                        position_color: widget.theme_color,
                      ),

                      //time
                      WorkspaceAttribute(
                        text: widget.time,
                        position_color: widget.theme_color,
                      ),

                      //venue
                      WorkspaceAttribute(
                        text: widget.venue,
                        position_color: widget.theme_color,
                      ),

                      //team
                      WorkspaceAttribute(
                        text: widget.team,
                        position_color: widget.theme_color,
                      ),
                    ],
                  ),
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
