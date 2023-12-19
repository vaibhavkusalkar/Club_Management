import 'package:ace/admin/pages/admin_homepage.dart';
import 'package:ace/admin/pages/admin_attendance.dart';
import 'package:ace/admin/pages/admin_meeting.dart';
import 'package:ace/student/components/login_or_register.dart';
import 'package:ace/student/pages/initial_page.dart';
import 'package:ace/student/pages/student_homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarBrightness: Brightness.dark,
    statusBarIconBrightness: Brightness.dark
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        primaryColorDark: Color(0xFF282828),
        primaryColorLight: Color(0xFF3A393E),
        highlightColor: Color(0xFFFFC8C7),
        backgroundColor: Color(0xFFF4F4FA),
        fontFamily: 'CircularStd',
          textTheme: TextTheme(

          //style for book weight
          bodySmall: TextStyle(
            fontFamily: 'CircularStd',
            fontWeight: FontWeight.w300
          ),

          //style for regular weight
          bodyMedium: TextStyle(
              fontFamily: 'CircularStd',
              fontWeight: FontWeight.w500
          ),

          //style for bold weight
          headlineMedium: TextStyle(
              fontFamily: 'CircularStd',
              fontWeight: FontWeight.w700
          ),

          //style for black weight
          headlineLarge: TextStyle(
              fontFamily: 'CircularStd',
              fontWeight: FontWeight.w900
          )
        )
      ),
      debugShowCheckedModeBanner: false,
      home: InitialPage(),
    );
  }
}