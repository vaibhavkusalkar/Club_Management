import 'package:ace/student/components/login_or_register.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class InitialPage extends StatefulWidget {
  const InitialPage({Key? key}) : super(key: key);

  @override
  State<InitialPage> createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 30,right: 30,top: 100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome,",
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontFamily: 'CircularStd',
                  fontWeight: FontWeight.w700,
                  fontSize: 33,
              ),
            ),
            Text(
              "To ACE Club App !",
              style: TextStyle(
                fontFamily: 'CircularStd',
                fontWeight: FontWeight.w500,
                fontSize: 30
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Image.asset(
              "lib/assets/splash.png",
              fit: BoxFit.fitWidth,
            ),
            Center(
              child: Container(
                width: 182,
                height: 72,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17),
                  color: Color.fromRGBO(255, 251, 255, 1),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 1),
                  child: Row(
                    children: [
                      Text(
                        "Let's go",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'CircularStd',
                            fontWeight: FontWeight.w500,
                            fontSize: 28
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => LoginOrRegister())
                          );
                        },
                        child: Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColorLight,
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 13),
                            child: Stack(
                              alignment: AlignmentDirectional.centerStart,
                              children: [
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.grey.shade50,
                                  size: 26,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.grey.shade500,
                                    size: 26,
                                  ),

                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.grey.shade700,
                                    size: 26,
                                  ),

                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),

          ],
        ),
      )
    );
  }
}
