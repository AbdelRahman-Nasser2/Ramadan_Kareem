import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class PicturePage extends StatelessWidget {
  final String? imgPath;
  final String? name;
  const PicturePage({Key? key, this.imgPath, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                clipBehavior: Clip.antiAlias,
                height: 400,
                width: double.infinity,
                child: Image.asset(
                  imgPath!,
                  fit: BoxFit.fill,
                ),
              ),
              (imgPath == 'assets/1.jpg')
                  ? PositionedDirectional(
                      start: 30,
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
                    )
                  : const SizedBox(),
              //name1
              if (imgPath == 'assets/1.jpg')
                Positioned(
                  right: 220,
                  top: 180,
                  child: SizedBox(
                    width: 190,
                    child: Text(
                      name!,
                      maxLines: 2,
                      style: GoogleFonts.cairo(
                          textStyle: TextStyle(
                              color: HexColor('#F85F07'),
                              fontSize: 25,
                              fontWeight: FontWeight.w700)),
                    ),
                  ),
                ),

              //name2
              if (imgPath == 'assets/2.jpg')
                Positioned(
                  right: 10,
                  top: 250,
                  child: Text(
                    name!,
                    style: GoogleFonts.cairo(
                        textStyle: TextStyle(
                            color: HexColor('#EED581'),
                            fontSize: 25,
                            fontWeight: FontWeight.w700)),
                  ),
                ),

              //name3
              if (imgPath == 'assets/3.jpg')
                Positioned(
                  top: 330,
                  right: 100,
                  child: SizedBox(
                    // width: 150,
                    child: Text(
                      name!,
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
          const SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () async {},
            child: Container(
              width: 168,
              height: 33,
              decoration: BoxDecoration(
                  color: HexColor('#EED581'),
                  borderRadius: BorderRadius.circular(20)),
              child: const Center(
                child: Text(
                  'Save',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
