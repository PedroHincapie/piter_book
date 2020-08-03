import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:piter_book/widgets/custom_tab_indicator.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<AssetImage> listaBook = [
    AssetImage('assets/images/book_1.png'),
    AssetImage('assets/images/book_2.png'),
    AssetImage('assets/images/book_1.png'),
    AssetImage('assets/images/book_2.png'),
    AssetImage('assets/images/book_1.png'),
    AssetImage('assets/images/book_2.png'),
    AssetImage('assets/images/book_1.png'),
    AssetImage('assets/images/book_2.png'),
    AssetImage('assets/images/book_2.png'),
    AssetImage('assets/images/book_1.png'),
    AssetImage('assets/images/book_2.png'),
    AssetImage('assets/images/book_2.png'),
    AssetImage('assets/images/book_1.png'),
    AssetImage('assets/images/book_2.png'),
  ];

  final List<Map<String, String>> populares = [
    {
      'imagen': 'assets/images/popular_1.png',
      'titulo': 'You\'re A Miracle1',
      'autor': 'Mike McHargue',
      'costo': '\$20',
    },
    {
      'imagen': 'assets/images/popular_2.png',
      'titulo': 'Pattern Maker',
      'autor': 'Kerry Johnston',
      'costo': '\$40',
    },
    {
      'imagen': 'assets/images/popular_1.png',
      'titulo': 'You\'re A Miracle1',
      'autor': 'Mike McHargue',
      'costo': '\$20',
    },
    {
      'imagen': 'assets/images/popular_2.png',
      'titulo': 'Pattern Maker',
      'autor': 'Kerry Johnston',
      'costo': '\$40',
    },
    {
      'imagen': 'assets/images/popular_1.png',
      'titulo': 'You\'re A Miracle1',
      'autor': 'Mike McHargue',
      'costo': '\$20',
    },
    {
      'imagen': 'assets/images/popular_2.png',
      'titulo': 'Pattern Maker',
      'autor': 'Kerry Johnston',
      'costo': '\$40',
    },
    {
      'imagen': 'assets/images/popular_1.png',
      'titulo': 'You\'re A Miracle1',
      'autor': 'Mike McHargue',
      'costo': '\$20',
    },
    {
      'imagen': 'assets/images/popular_2.png',
      'titulo': 'Pattern Maker',
      'autor': 'Kerry Johnston',
      'costo': '\$40',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          physics: BouncingScrollPhysics(),
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
                      color: buildColorMain(),
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
                            color: buildColorMain(),
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
                              color: buildColorMain(),
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
                        unselectedLabelColor: buildColorMain(),
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
                    child: ListView.builder(
                        padding: EdgeInsets.only(left: 25.0, right: 6.0),
                        itemCount: listaBook.length,
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Container(
                            height: 210.0,
                            width: 153.0,
                            margin: EdgeInsets.only(
                              right: 19.0,
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Color(0xFFE5E5E5),
                                image: DecorationImage(
                                  image: listaBook[index],
                                )),
                          );
                        }),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 25.0, top: 25.0),
                    child: Text(
                      'Popular',
                      style: GoogleFonts.openSans(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF121212),
                      ),
                    ),
                  ),
                  ListView.builder(
                      padding:
                          EdgeInsets.only(top: 25.0, right: 25.0, left: 25.0),
                      physics: BouncingScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: populares.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            print('oeeeee');
                          },
                          child: Container(
                            margin: EdgeInsets.only(bottom: 19.0),
                            height: 81.0,
                            width: MediaQuery.of(context).size.width - 50,
                            child: Row(
                              children: <Widget>[
                                Container(
                                  height: 81.0,
                                  width: 62.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5.0),
                                    image: DecorationImage(
                                      image: AssetImage(
                                          populares[index]['imagen']),
                                    ),
                                    color: buildColorMain(),
                                  ),
                                ),
                                SizedBox(
                                  width: 21.0,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      populares[index]['titulo'],
                                      style: GoogleFonts.openSans(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16.0,
                                        color: Color(0xFF121212),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5.0,
                                    ),
                                    Text(populares[index]['autor'],
                                        style: GoogleFonts.openSans(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 10.0,
                                          color: Color(0xFFAAAAAA),
                                        )),
                                    SizedBox(
                                      height: 5.0,
                                    ),
                                    Text(populares[index]['costo'],
                                        style: GoogleFonts.openSans(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14.0,
                                          color: Color(0xFF121212),
                                        )),
                                  ],
                                )
                              ],
                            ),
                          ),
                        );
                      })
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Color buildColorMain() => Color(0xFFAAAAAA);
}
