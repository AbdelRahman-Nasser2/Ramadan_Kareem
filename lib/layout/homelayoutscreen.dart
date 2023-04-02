import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:ramadan_kareem/modules/picturepage.dart';

class HomeLayoutScreen extends StatelessWidget {
  final String name;
  const HomeLayoutScreen({Key? key, required this.name}) : super(key: key);

  // String name = '';

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
          title: const Text(
            'Ramadan Kreem',
            style: TextStyle(
                color: Colors.black, fontSize: 24, fontWeight: FontWeight.w700),
          ),
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsetsDirectional.symmetric(horizontal: 16),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                  height: 400,
                  width: double.infinity,
                  child: TabBarView(
                    physics: const BouncingScrollPhysics(),
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PicturePage(
                                name: name,
                                imgPath: 'assets/1.jpg',
                              ),
                            ),
                          );
                        },
                        child: Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              clipBehavior: Clip.antiAlias,
                              height: 400,
                              width: double.infinity,
                              child: Image.asset(
                                'assets/1.jpg',
                                fit: BoxFit.fill,
                              ),
                            ),
                            Positioned(
                              left: 30,
                              top: 90,
                              child: Text(
                                '''رمضان أحلى 
        مع       ''',
                                style: GoogleFonts.cairo(
                                    textStyle: TextStyle(
                                        color: HexColor('#EED581'),
                                        fontSize: 25,
                                        fontWeight: FontWeight.w400)),
                              ),
                            ),
                            Positioned(
                              right: 220,
                              top: 180,
                              child: SizedBox(
                                width: 150,
                                child: Text(
                                  name,
                                  style: GoogleFonts.cairo(
                                      textStyle: TextStyle(
                                          color: HexColor('#F85F07'),
                                          fontSize: 25,
                                          fontWeight: FontWeight.w700)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PicturePage(
                                name: name,
                                imgPath: 'assets/2.jpg',
                              ),
                            ),
                          );
                        },
                        child: Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              clipBehavior: Clip.antiAlias,
                              height: 400,
                              width: double.infinity,
                              child: Image.asset(
                                'assets/2.jpg',
                                fit: BoxFit.fill,
                              ),
                            ),
                            Positioned(
                              left: 190,
                              top: 250,
                              right: 20,
                              child: SizedBox(
                                width: 180,
                                child: Text(
                                  name,
                                  style: GoogleFonts.cairo(
                                      textStyle: TextStyle(
                                          color: HexColor('#EED581'),
                                          fontSize: 25,
                                          fontWeight: FontWeight.w700)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PicturePage(
                                name: name,
                                imgPath: 'assets/3.jpg',
                              ),
                            ),
                          );
                        },
                        child: Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              clipBehavior: Clip.antiAlias,
                              height: 400,
                              width: double.infinity,
                              child: Image.asset(
                                'assets/3.jpg',
                                fit: BoxFit.fill,
                              ),
                            ),
                            Positioned(
                              right: 80,
                              left: 130,
                              top: 330,
                              // bottom: 50,
                              child: Text(
                                name,
                                maxLines: 2,
                                style: GoogleFonts.cairo(
                                    textStyle: TextStyle(
                                        color: HexColor('#EED581'),
                                        fontSize: 25,
                                        fontWeight: FontWeight.w700)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                TabBar(
                  // isScrollable: true,
                  indicatorColor: Colors.blueGrey.withOpacity(0.5),
                  labelColor: Colors.black,
                  indicatorPadding:
                      const EdgeInsets.only(top: 60, left: 28, right: 28),
                  indicatorWeight: 2,
                  labelPadding: const EdgeInsets.symmetric(horizontal: 5),
                  automaticIndicatorColorAdjustment: false,
                  unselectedLabelColor: Colors.blueGrey,
                  splashBorderRadius: BorderRadius.circular(28),
                  tabs: [
                    Container(
                      height: 90,
                      width: double.infinity,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Image.asset(
                        'assets/1.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      height: 90,
                      width: double.infinity,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Image.asset(
                        'assets/2.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      height: 90,
                      width: double.infinity,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Image.asset(
                        'assets/3.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget page() => Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            clipBehavior: Clip.antiAlias,
            height: 400,
            width: double.infinity,
            child: Image.asset(
              'assets/3.jpg',
              fit: BoxFit.fill,
            ),
          ),
        ],
      );
}
