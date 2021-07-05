import 'package:ff_navigation_bar/ff_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:siapp/bangunan.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SiApp',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: new BorderRadius.only(
                    //bottomLeft: const Radius.circular(5.0),
                    //bottomRight: const Radius.circular(5.0),
                    ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(top: 35, left: 20, bottom: 10),
                    child: Text(
                      'SiApp',
                      style: GoogleFonts.pacifico(
                        textStyle: TextStyle(
                            color: const Color(0xFFFF8345),
                            letterSpacing: .5,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 35, right: 10),
                    /*child: IconButton(
                      iconSize: 30.0,
                      icon: Icon(
                        Icons.add_alert,
                        color: Colors.red,
                      ),
                   ), */
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              color: Colors.white,
              padding: EdgeInsets.only(left: 15, top: 15),
              child: banner(),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(left: 15, top: 20, bottom: 10),
                  child: Text(
                    'Categories',
                    style: GoogleFonts.cabin(
                      textStyle: TextStyle(
                          color: Colors.black,
                          letterSpacing: .5,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerRight,
                  margin: EdgeInsets.only(right: 18),
                  padding: EdgeInsets.only(right: 9),
                  width: MediaQuery.of(context).size.width - 330,
                  height: MediaQuery.of(context).size.height - 780,
                  decoration: BoxDecoration(
                   // color: const Color(0xFFFF8345),
                    borderRadius: new BorderRadius.all(Radius.circular(15.0)),
                  ),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.all(0.0),
                      primary: Colors.white,
                      textStyle: const TextStyle(fontSize: 12),
                    ),
                    onPressed: () {},
                    child: const Text('Lihat Semua', style: TextStyle(color: const Color(0xFFFF8345)),),
                  ),
                ),
              ],
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 15, top: 10),
              child: menu(),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 15, top: 10),
              child: menu2(),
            ),
            /*
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 15, top: 20),
              child: Text(
                'Our Stories',
                style: GoogleFonts.cabin(
                  textStyle: TextStyle(
                      color: Colors.black,
                      letterSpacing: .5,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 15, top: 10, bottom: 20),
              child: stories(),
            ),*/
          ],
        ),
      ),
      bottomNavigationBar: FFNavigationBar(
        theme: FFNavigationBarTheme(
          barBackgroundColor: Colors.white,
          selectedItemBorderColor: Colors.white,
          selectedItemBackgroundColor: const Color(0xFFFF8345),
          selectedItemIconColor: Colors.white,
          selectedItemLabelColor: Colors.black,
        ),
        // selectedIndex: selectedIndex,
        onSelectTab: (index) {
          setState(() {
            //   selectedIndex = index;
          });
        },
        items: [
          FFNavigationBarItem(
            iconData: CupertinoIcons.house_fill,
            label: 'Home',
          ),
          FFNavigationBarItem(
            iconData: CupertinoIcons.tray_full_fill,
            label: 'Activity',
          ),
          FFNavigationBarItem(
            iconData: CupertinoIcons.bubble_right_fill,
            label: 'Messages',
          ),
          FFNavigationBarItem(
            iconData: CupertinoIcons.profile_circled,
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  Widget menu() {
    return Row(
      children: [
        Column(
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Bangunan()),
                );
              }, // Handle your callback
              child: Container(
                width: MediaQuery.of(context).size.width - 320,
                height: MediaQuery.of(context).size.height - 720,
                decoration: BoxDecoration(
                 // color: const Color(0xFFEDEDED),
                  borderRadius: new BorderRadius.all(Radius.circular(15.0)),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: 60,
                      height: 60,
                      child: Image.asset('assets/images/home-decor.png'),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Construction',
                      style: GoogleFonts.cabin(
                        textStyle: TextStyle(
                            color: Colors.black, letterSpacing: .5, fontSize: 12),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),

        SizedBox(width: 0),
        Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width - 320,
               height: MediaQuery.of(context).size.height - 720,
              decoration: BoxDecoration(
                //color: const Color(0xFFEDEDED),
                borderRadius: new BorderRadius.all(Radius.circular(15.0)),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    child: Image.asset('assets/images/scooter.png'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Vehicle',
                    style: GoogleFonts.cabin(
                      textStyle: TextStyle(
                          color: Colors.black, letterSpacing: .5, fontSize: 12),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(width: 0),
        Column(
          children: [
            Container(
                width: MediaQuery.of(context).size.width - 320,
                height: MediaQuery.of(context).size.height - 720,
              decoration: BoxDecoration(
                //color: const Color(0xFFEDEDED),
                borderRadius: new BorderRadius.all(Radius.circular(15.0)),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    child: Image.asset('assets/images/light-bulb.png'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Electricity',
                    style: GoogleFonts.cabin(
                      textStyle: TextStyle(
                          color: Colors.black, letterSpacing: .5, fontSize: 12),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width - 320,
              height: MediaQuery.of(context).size.height - 720,
              decoration: BoxDecoration(
                //color: const Color(0xFFEDEDED),
                borderRadius: new BorderRadius.all(Radius.circular(15.0)),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    child: Image.asset('assets/images/toilet.png'),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Plumbing',
                    style: GoogleFonts.cabin(
                      textStyle: TextStyle(
                          color: Colors.black, letterSpacing: .5, fontSize: 12),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget menu2() {
    return Row(
      children: [
        SizedBox(width: 0),
        Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width - 320,
              height: MediaQuery.of(context).size.height - 720,
              decoration: BoxDecoration(
                //color: const Color(0xFFEDEDED),
                borderRadius: new BorderRadius.all(Radius.circular(15.0)),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    child: Image.asset('assets/images/broom.png'),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Cleaning',
                    style: GoogleFonts.cabin(
                      textStyle: TextStyle(
                          color: Colors.black, letterSpacing: .5, fontSize: 12),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(width: 0),
        Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width - 320,
              height: MediaQuery.of(context).size.height - 720,
              decoration: BoxDecoration(
                //color: const Color(0xFFEDEDED),
                borderRadius: new BorderRadius.all(Radius.circular(15.0)),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    child: Image.asset('assets/images/carpenter.png'),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Borongan',
                    style: GoogleFonts.cabin(
                      textStyle: TextStyle(
                          color: Colors.black, letterSpacing: .5, fontSize: 12),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget test() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width - 100,
            child: Card(
              clipBehavior: Clip.antiAlias,
              child: Container(
                width: MediaQuery.of(context).size.width - 100,
                child: Row(
                  children: [
                    SizedBox(
                      width: 170,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ListTile(
                            title: Container(
                              padding: EdgeInsets.only(top: 20),
                              child: Text('House Cleaning Service'),
                            ),
                            subtitle: Container(
                              padding: EdgeInsets.only(top: 10, bottom: 20),
                              child: Text(
                                'Order now to get 20% off cost',
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.6)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 130,
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: new BorderRadius.only(
                                topLeft: const Radius.circular(5.0),
                                topRight: const Radius.circular(5.0),
                                bottomLeft: const Radius.circular(5.0),
                                bottomRight: const Radius.circular(5.0),
                              ),
                            ),
                            width: MediaQuery.of(context).size.width - 315,
                            height: MediaQuery.of(context).size.height - 725,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            width: MediaQuery.of(context).size.width - 100,
            child: Card(
              clipBehavior: Clip.antiAlias,
              child: Container(
                width: MediaQuery.of(context).size.width - 100,
                child: Row(
                  children: [
                    SizedBox(
                      width: 170,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ListTile(
                            title: Container(
                              padding: EdgeInsets.only(top: 20),
                              child: Text('Rp.75000 off on Selected Item'),
                            ),
                            subtitle: Container(
                              padding: EdgeInsets.only(top: 10, bottom: 20),
                              child: Text(
                                'Order now to make your toilet fixed',
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.6)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 130,
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: new BorderRadius.only(
                                topLeft: const Radius.circular(5.0),
                                topRight: const Radius.circular(5.0),
                                bottomLeft: const Radius.circular(5.0),
                                bottomRight: const Radius.circular(5.0),
                              ),
                            ),
                            width: MediaQuery.of(context).size.width - 315,
                            height: MediaQuery.of(context).size.height - 725,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            width: MediaQuery.of(context).size.width - 100,
            child: Card(
              clipBehavior: Clip.antiAlias,
              child: Container(
                width: MediaQuery.of(context).size.width - 100,
                child: Row(
                  children: [
                    SizedBox(
                      width: 170,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ListTile(
                            title: Container(
                              padding: EdgeInsets.only(top: 20),
                              child: Text('Rp.75000 off on Selected Item'),
                            ),
                            subtitle: Container(
                              padding: EdgeInsets.only(top: 10, bottom: 20),
                              child: Text(
                                'Order now to make your toilet fixed',
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.6)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 130,
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: new BorderRadius.only(
                                topLeft: const Radius.circular(5.0),
                                topRight: const Radius.circular(5.0),
                                bottomLeft: const Radius.circular(5.0),
                                bottomRight: const Radius.circular(5.0),
                              ),
                            ),
                            width: MediaQuery.of(context).size.width - 315,
                            height: MediaQuery.of(context).size.height - 725,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }

  Widget banner() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width - 30,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  Image.asset('assets/images/promo1.png'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget stories() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: [
              Container(
                color: Colors.grey,
                width: MediaQuery.of(context).size.width - 225,
                height: MediaQuery.of(context).size.height - 650,
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                color: Colors.grey,
                width: MediaQuery.of(context).size.width - 225,
                height: MediaQuery.of(context).size.height - 650,
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                color: Colors.grey,
                width: MediaQuery.of(context).size.width - 225,
                height: MediaQuery.of(context).size.height - 650,
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                color: Colors.grey,
                width: MediaQuery.of(context).size.width - 225,
                height: MediaQuery.of(context).size.height - 650,
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                color: Colors.grey,
                width: MediaQuery.of(context).size.width - 225,
                height: MediaQuery.of(context).size.height - 650,
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                color: Colors.grey,
                width: MediaQuery.of(context).size.width - 225,
                height: MediaQuery.of(context).size.height - 650,
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                color: Colors.grey,
                width: MediaQuery.of(context).size.width - 225,
                height: MediaQuery.of(context).size.height - 650,
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                color: Colors.grey,
                width: MediaQuery.of(context).size.width - 225,
                height: MediaQuery.of(context).size.height - 650,
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
