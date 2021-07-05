import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'bangunan/cat.dart';

class Bangunan extends StatefulWidget {
  @override
  _BangunanState createState() => _BangunanState();
}

var cat = false, pagar = false, renovasi = false, kanopi = false;

class _BangunanState extends State<Bangunan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        titleSpacing: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        title: Text(
          'Construction',
          style: GoogleFonts.cabin(
            textStyle: TextStyle(
                color: Colors.black,
                letterSpacing: .5,
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 25,
            ),
            headerKonstruksi(),
            SizedBox(
              height: 20,
            ),
            santaiDenganAMan(),
            SizedBox(
              height: 30,
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 20),
              child: Text(
                'Pilih pekerjaan tukang',
                style: GoogleFonts.cabin(
                  textStyle: TextStyle(
                      color: Colors.black,
                      letterSpacing: .5,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            pekerjaanKonstruksi(),
            SizedBox(
              height: 10,
            ),
            pekerjaanKonstruksi2(),
            SizedBox(
              height: 20,
            ),
            estimasiHarga(),
          ],
        ),
      ),
    );
  }

  Widget headerKonstruksi() {
    return Container(
      padding: EdgeInsets.only(left: 25, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Column(
              children: [
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                  style: GoogleFonts.cabin(
                    textStyle: TextStyle(
                        color: Colors.black,
                        letterSpacing: .5,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget santaiDenganAMan() {
    return Container(
      width: MediaQuery.of(context).size.width - 40,
      height: MediaQuery.of(context).size.height - 710,
      decoration: BoxDecoration(
        color: const Color(0xFFF0F7F6),
        borderRadius: new BorderRadius.all(Radius.circular(15.0)),
      ),
      child: Container(
        padding: EdgeInsets.only(top: 15, left: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '#SantaiKembali dengan aman',
              style: GoogleFonts.cabin(
                textStyle: TextStyle(
                    color: const Color(0xFF637FC2),
                    letterSpacing: .5,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Cari tahu bagaimana kami menerapkan prosedur keamanan dan kebersihan yang berlaku selama pandemi COVID 19.',
              style: GoogleFonts.cabin(
                textStyle: TextStyle(
                    color: const Color(0xFF637FC2),
                    letterSpacing: .5,
                    fontSize: 14),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget pekerjaanKonstruksi() {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          InkWell(
            onTap: () {
              if (cat) {
                setState(() {
                  cat = false;
                  print(cat);
                });
              } else if (!cat) {
                setState(() {
                  cat = true;
                  print(cat);
                });
              }
            }, // Handle your callback
            child: Container(
              width: MediaQuery.of(context).size.width - 230,
              height: MediaQuery.of(context).size.height - 750,
              decoration: BoxDecoration(
                color: cat ? Color(0xFFC2C2C2) : Colors.white,
                border: Border.all(
                  color: Color(0xFFC2C2C2),
                  width: 1,
                ),
                borderRadius: new BorderRadius.all(Radius.circular(15.0)),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          child:
                              Image.asset('assets/images/painting-bucket.png'),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Cat Dinding',
                          style: GoogleFonts.cabin(
                            textStyle: TextStyle(
                                color: Colors.black,
                                letterSpacing: .5,
                                fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              if (pagar) {
                setState(() {
                  pagar = false;
                });
              } else if (!pagar) {
                setState(() {
                  pagar = true;
                });
              }
            },
            child: Container(
              width: MediaQuery.of(context).size.width - 230,
              height: MediaQuery.of(context).size.height - 750,
              decoration: BoxDecoration(
                color: pagar ? Color(0xFFC2C2C2) : Colors.white,
                border: Border.all(
                  color: Color(0xFFC2C2C2),
                  width: 1,
                ),
                borderRadius: new BorderRadius.all(Radius.circular(15.0)),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          child: Image.asset('assets/images/boundaries.png'),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Pagar Halaman',
                          style: GoogleFonts.cabin(
                            textStyle: TextStyle(
                                color: Colors.black,
                                letterSpacing: .5,
                                fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget pekerjaanKonstruksi2() {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          InkWell(
            onTap: () {
              if (renovasi) {
                setState(() {
                  renovasi = false;
                });
              } else if (!renovasi) {
                setState(() {
                  renovasi = true;
                });
              }
            },
            child: Container(
              width: MediaQuery.of(context).size.width - 230,
              height: MediaQuery.of(context).size.height - 750,
              decoration: BoxDecoration(
                color: renovasi ? Color(0xFFC2C2C2) : Colors.white,
                border: Border.all(
                  color: Color(0xFFC2C2C2),
                  width: 1,
                ),
                borderRadius: new BorderRadius.all(Radius.circular(15.0)),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          child: Image.asset('assets/images/drill.png'),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Renovasi',
                          style: GoogleFonts.cabin(
                            textStyle: TextStyle(
                                color: Colors.black,
                                letterSpacing: .5,
                                fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              if (kanopi) {
                setState(() {
                  kanopi = false;
                });
              } else if (!kanopi) {
                setState(() {
                  kanopi = true;
                });
              }
            },
            child: Container(
              width: MediaQuery.of(context).size.width - 230,
              height: MediaQuery.of(context).size.height - 750,
              decoration: BoxDecoration(
                color: kanopi ? Color(0xFFC2C2C2) : Colors.white,
                border: Border.all(
                  color: Color(0xFFC2C2C2),
                  width: 1,
                ),
                borderRadius: new BorderRadius.all(Radius.circular(15.0)),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          child: Image.asset('assets/images/pegs.png'),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Kanopi',
                          style: GoogleFonts.cabin(
                            textStyle: TextStyle(
                                color: Colors.black,
                                letterSpacing: .5,
                                fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget estimasiHarga(){
    return Container(
      child: Column(
        children: [
          Container(
            child: Text("Estimasi Harga"),
          ),
        ],
      ),
    );
  }
}
