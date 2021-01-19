
import 'package:code_demo/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EmailScreen extends StatefulWidget {
  @override
  _EmailScreenState createState() => _EmailScreenState();
}

class _EmailScreenState extends State<EmailScreen> {
  int selectedIndex = 7;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: 120,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Sign up the newsletter and",
                style: GoogleFonts.openSans(
                    fontSize: 20, fontWeight: FontWeight.normal),
                textAlign: TextAlign.center,
              ),
              Text(
                "unlock a theme for your list",
                style: GoogleFonts.openSans(
                    fontSize: 20, fontWeight: FontWeight.normal),
                textAlign: TextAlign.left,
              ),
            ],
          ),
          SizedBox(height: 80,),
          Center(
            child: Image.asset(
              "assets/images.jpg",
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 30,),

          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: TextFormField(
              cursorColor: Colors.black,
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(
                  color: Colors.black
              ),

              decoration: new InputDecoration(
                  hintStyle: TextStyle(
                      color: Colors.black
                  ),
                  border: new OutlineInputBorder(

                    borderRadius: const BorderRadius.all(

                      const Radius.circular(8.0),
                    ),
                    borderSide: new BorderSide(
                      color: Colors.black,
                      width: 1.0,
                    ),
                  ),
                  contentPadding:
                  EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                  hintText: "Email Address"),
            ),
          ),

          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                child: new Container(
                  width: 100.0,
                  height: 50.0,
                  decoration: new BoxDecoration(
                    color: Colors.white,
                    border: new Border.all(color: Colors.black, width: 2.0),
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                  child: new Center(child: new Text('Skip', style: GoogleFonts.openSans(
                      fontSize: 16, fontWeight: FontWeight.normal),),),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                child: new Container(
                  width: 100.0,
                  height: 50.0,
                  decoration: new BoxDecoration(
                    color: Colors.white,
                    border: new Border.all(color: Colors.black, width: 2.0),
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                  child: new Center(child: new Text('Join', style: GoogleFonts.openSans(
                      fontSize: 16, fontWeight: FontWeight.bold),),),
                ),
              ),
            ],
          ),
          SizedBox(height: 120,),
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
