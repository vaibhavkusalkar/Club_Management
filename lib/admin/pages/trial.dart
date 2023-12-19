import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //Welcome,name + Notification
          Container(
            padding: EdgeInsets.only(left: 20,right: 40,top: 40,bottom: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //welcome
                    Text(
                        "Welcome",
                        style: GoogleFonts.lato(
                            textStyle: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w700
                            )
                        )
                    ),
                    //name
                    Text(
                        "Vaibhav Kusalkar",
                        style: GoogleFonts.lato(
                            textStyle: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.w900
                            )
                        )
                    )
                  ],
                ),
                //notification button
                Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white60
                    ),
                    child: Text("Hello")
                )
              ],
            ),
          ),

          //attenance,add meeting
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: Colors.white60
            ),
            child: Row(
              children: [
                Image.asset(
                  "lib/assets/notebook_black.png",
                  height: 70,
                  width: 70,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
