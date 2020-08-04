import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:piter_book/models/PopularBookModel.dart';
import 'package:piter_book/widgets/custom_tab_indicator.dart';

class SelectedBookScreen extends StatelessWidget {
  final PopularBookModel popularBookModel;

  SelectedBookScreen({Key key, @required this.popularBookModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(left: 25.0, right: 25.0, top: 25.0),
        height: 49.0,
        color: Colors.transparent,
        child: FlatButton(
          color: buildColorPrincipal(),
          onPressed: () {},
          child: Text(
            'Add to Library',
            style: GoogleFonts.openSans(
              fontSize: 14.0,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusDirectional.circular(10.0)),
        ),
      ),
      body: Container(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              backgroundColor: buildColorPrincipal(),
              expandedHeight: MediaQuery.of(context).size.height * 0.5,
              flexibleSpace: Container(
                height: MediaQuery.of(context).size.height * 0.5,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      left: 25.0,
                      top: 35.0,
                      child: GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 32.0,
                          height: 32.0,
                          child:
                              SvgPicture.asset('assets/icons/chevron-left.svg'),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        margin: EdgeInsets.only(bottom: 62.0),
                        width: 225.0,
                        height: 172.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            image: DecorationImage(
                              image: AssetImage('assets/images/book_1.png'),
                            )),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate([
                Padding(
                  padding: EdgeInsets.only(top: 24.0, left: 25.0),
                  child: Text(
                    'You’re A Miracle',
                    style: GoogleFonts.openSans(
                      fontSize: 27.0,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 7.0, left: 25.0),
                  child: Text(
                    'Mike McHargue',
                    style: GoogleFonts.openSans(
                      fontSize: 14.0,
                      color: Color(0xFFAAAAAA),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 7.0, left: 25.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        '\$',
                        style: GoogleFonts.openSans(
                          fontSize: 14.0,
                          color: buildColorPrincipal(),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        '20',
                        style: GoogleFonts.openSans(
                          fontSize: 32.0,
                          color: buildColorPrincipal(),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 28.0,
                  margin: EdgeInsets.only(top: 39.0, bottom: 36.0),
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
                        width: 30.0,
                        color: Color(0xFF121212),
                      ),
                      tabs: [
                        Tab(
                          child: Container(
                            child: Text('Description'),
                            margin: EdgeInsets.only(right: 39),
                          ),
                        ),
                        Tab(
                          child: Container(
                            margin: EdgeInsets.only(right: 39),
                            child: Text('Reviews (20)'),
                          ),
                        ),
                        Tab(
                          child: Container(
                            margin: EdgeInsets.only(right: 39),
                            child: Text('Similliar'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: 25.0, right: 25.0, bottom: 25.0),
                  child: Text(
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'
                    'Where does it come from? Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.'
                    'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.',
                    style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFAAAAAA),
                      letterSpacing: 1.5,
                      height: 2.0,
                    ),
                  ),
                )
              ]),
            ),
          ],
        ),
      ),
    );
  }

  Color buildColorPrincipal() => Color(0xFFFFAAA5);

  Color buildColorMain() => Color(0xFFAAAAAA);
}
