import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FourthPage extends StatefulWidget {
  @override
  _FourthPageState createState() => _FourthPageState();
}

class _FourthPageState extends State<FourthPage> {
  int selectedIndex = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 200,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Clear the sort items by",
                  style: GoogleFonts.openSans(
                      fontSize: 20, fontWeight: FontWeight.normal),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "Priority",
                  style: GoogleFonts.openSans(
                      fontSize: 20, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Important itemes are highlighted ",
                  style: GoogleFonts.openSans(
                      fontSize: 20, fontWeight: FontWeight.normal),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "at top..",
                  style: GoogleFonts.openSans(
                      fontSize: 20, fontWeight: FontWeight.normal),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
            SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildLine(selected: selectedIndex == 0),
                buildLine(selected: selectedIndex == 1),
                buildLine(selected: selectedIndex == 2),
                buildLine(selected: selectedIndex == 3),
                buildLine(selected: selectedIndex == 4),
                buildLine(selected: selectedIndex == 5),
                buildLine(selected: selectedIndex == 6),
                buildLine(selected: selectedIndex == 7),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Expanded(
              child: Image.asset(
                "assets/images.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ],
        ));
  }

  Padding buildLine({bool selected = false}) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(2),
        child: Container(
          height: 6,
          width: 6,
          color: selected ? Colors.black : Colors.black.withOpacity(0.3),
        ),
      ),
    );
  }
}
