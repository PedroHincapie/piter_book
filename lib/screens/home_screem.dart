import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:piter_book/widgets/custom_tab_indicator.dart';

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
                        Positioned(
                          right: 0,
                          child: SvgPicture.asset(
                            'assets/svg/background_search.svg',
                          ),
                        ),
                        Positioned(
                          right: 9.0,
                          top: 8.0,
                          child: SvgPicture.asset(
                            'assets/icons/icons_search_white.svg',
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 25.0,
                    margin: EdgeInsets.only(top: 30.0),
                    padding: EdgeInsets.only(left: 25.0),
                    child: DefaultTabController(
                      length: 3,
                      child: TabBar(
                        labelPadding: EdgeInsets.all(0.0),
                        indicatorPadding: EdgeInsets.all(0.0),
                        isScrollable: true,
                        labelColor: Color(0xFF121212),
                        unselectedLabelColor: Color(0xFFAAAAAA),
                        labelStyle: GoogleFonts.openSans(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w700,
                        ),
                        unselectedLabelStyle: GoogleFonts.openSans(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w600,
                        ),
                        indicator: RoundedRectangleTabIndicator(
                          weight: 2.0,
                          width: 10.0,
                          color: Color(0xFF121212),
                        ),
                        tabs: [
                          Tab(
                            child: Container(
                              child: Text('New'),
                              margin: EdgeInsets.only(right: 23),
                            ),
                          ),
                          Tab(
                            child: Container(
                              margin: EdgeInsets.only(right: 23),
                              child: Text('Trending'),
                            ),
                          ),
                          Tab(
                            child: Container(
                              margin: EdgeInsets.only(right: 23),
                              child: Text('Best Selier'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 21),
                    height: 210.0,
                    color: Colors.red,
                    child: ListView.builder(
                        padding: EdgeInsets.only(left: 25.0, right: 6.0),
                        itemCount: 2,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.only(right: 10.0),
                            height: 210.0,
                            width: 153.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                image: DecorationImage(
                                  image: AssetImage('assets/images/book_1.png'),)),
                          );
                        }),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
