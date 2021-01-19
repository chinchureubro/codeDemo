import 'package:code_demo/intoscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: InkWell(

        onTap: ()
        {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => IntroScreen()),
          );
        }
        ,
        child: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Welcome to ",style: GoogleFonts.openSans(fontSize: 34,fontWeight: FontWeight.normal,),
                      textAlign: TextAlign.center,
                    ),

                    Text(
                      "Clear",style: GoogleFonts.openSans(fontSize: 34,fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Tap or swipe to ",style: GoogleFonts.openSans(fontSize: 34,fontWeight: FontWeight.normal),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "begin",style: GoogleFonts.openSans(fontSize: 34,fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
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
