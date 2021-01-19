import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class CloundScreen extends StatefulWidget {
  @override
  _CloundScreenState createState() => _CloundScreenState();
}

class _CloundScreenState extends State<CloundScreen> {
  int selectedIndex = 6;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: 150,),
          Center(
            child: Image.asset(
              "assets/images.jpg",
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Use",
                style: GoogleFonts.openSans(
                    fontSize: 24, fontWeight: FontWeight.normal),
                textAlign: TextAlign.center,
              ),
              Text(
                " iCloud ?",
                style: GoogleFonts.openSans(
                    fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Store you list in iCloud allows",
                style: GoogleFonts.openSans(
                    fontSize: 20, fontWeight: FontWeight.normal),
                textAlign: TextAlign.center,
              ),
              Text(
                "you to keep you data in sync",
                style: GoogleFonts.openSans(
                    fontSize: 20, fontWeight: FontWeight.normal),
                textAlign: TextAlign.left,
              ),
              Text(
                "access  your phone ,iPad and Mac",
                style: GoogleFonts.openSans(
                    fontSize: 20, fontWeight: FontWeight.normal),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () => print('hello'),
                    child: new Container(
                      width: 100.0,
                      height: 50.0,
                      decoration: new BoxDecoration(
                        color: Colors.white,
                        border: new Border.all(color: Colors.black, width: 2.0),
                        borderRadius: new BorderRadius.circular(10.0),
                      ),
                      child: new Center(child: new Text('Not now', style: GoogleFonts.openSans(
                          fontSize: 16, fontWeight: FontWeight.normal),),),
                    ),
                  ),
                  InkWell(
                    onTap: () => print('hello'),
                    child: new Container(
                      width: 100.0,
                      height: 50.0,
                      decoration: new BoxDecoration(
                        color: Colors.white,
                        border: new Border.all(color: Colors.black, width: 2.0),
                        borderRadius: new BorderRadius.circular(10.0),
                      ),
                      child: new Center(child: new Text('use iCloud', style: GoogleFonts.openSans(
                          fontSize: 16, fontWeight: FontWeight.bold),),),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 150,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
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
            ],
          ),
        ],
      ),
    );
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
