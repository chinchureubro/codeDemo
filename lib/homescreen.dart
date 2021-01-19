import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swipe_to/swipe_to.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          SwipeTo(
            child: Container(
              color: Colors.red,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "Swipe to the right to complete",
                  style: GoogleFonts.openSans(
                      fontSize: 20, fontWeight: FontWeight.normal,color: Colors.white),
                ),
              ),
            ),
            onRightSwipe: ()
            {

            },
            iconOnRightSwipe: Icons.assignment_turned_in_outlined,
          ),
          SwipeTo(
            child: Container(
              color: Colors.redAccent,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "Swipe to the left to delete",
                  style: GoogleFonts.openSans(
                      fontSize: 20, fontWeight: FontWeight.normal,color: Colors.white),
                ),
              ),
            ),
            onLeftSwipe: ()
            {

            },
            iconOnLeftSwipe: Icons.delete_forever_sharp,
          ),
          Container(
            color: Colors.deepOrange,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Tap and hold to pick up",
                style: GoogleFonts.openSans(
                    fontSize: 20, fontWeight: FontWeight.normal,color: Colors.white),
              ),
            ),
          ),
          Container(
            color: Colors.orange,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Pull down to create item",
                style: GoogleFonts.openSans(
                    fontSize: 20, fontWeight: FontWeight.normal,color: Colors.white),
              ),
            ),
          ),
          Container(
            color: Colors.deepOrangeAccent,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Try shaking to undo",
                style: GoogleFonts.openSans(
                    fontSize: 20, fontWeight: FontWeight.normal,color: Colors.white),
              ),
            ),
          ),
          Container(
            color: Colors.pink,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Try pinching rows apart",
                style: GoogleFonts.openSans(
                    fontSize: 20, fontWeight: FontWeight.normal,color: Colors.white),
              ),
            ),
          ),
          Container(
            color: Colors.yellow,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Try pinching vertical shut",
                style: GoogleFonts.openSans(
                    fontSize: 20, fontWeight: FontWeight.normal,color: Colors.white),
              ),
            ),
          ),
          Container(
            color: Colors.yellowAccent,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Pull up to clear",
                style: GoogleFonts.openSans(
                    fontSize: 20, fontWeight: FontWeight.normal,color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
