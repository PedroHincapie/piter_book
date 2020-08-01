import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                left: 25.0,
                top: 25.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Hi, Rizki',
                    style: GoogleFonts.openSans(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFFAAAAAA),
                    ),
                  ),
                  Text(
                    'Discover Latest Book',
                    style: GoogleFonts.openSans(
                      fontSize: 22.0,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF121212),
                    ),
                  ),
                  Container(
                    height: 39.9,
                    margin: EdgeInsets.only(
                      top: 18.0,
                      right: 20.0,
                      left:
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Color(0xFFF4F4F4),
                    ),
                    child: Stack(
                      children: <Widget>[
                        TextField(
                          maxLengthEnforced: true,
                          style: GoogleFonts.openSans(
                            fontSize: 12.0,
                            color: Color(0xFFAAAAAA),
                            fontWeight: FontWeight.w600,
                          ),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(
                              left: 19.0,
                              right: 50.0,
                              bottom: 8.0,
                            ),
                            border: InputBorder.none,
                            hintText: 'Search book',
                            hintStyle: GoogleFonts.openSans(
                              fontSize: 12.0,
                              color: Color(0xFFAAAAAA),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
