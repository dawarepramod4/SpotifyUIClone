import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sptofyuiclone/home.dart';
import 'package:sptofyuiclone/radiopage.dart';
import 'package:sptofyuiclone/search.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home',
      theme: ThemeData(
          primarySwatch: Colors.green,
          // scaffoldBackgroundColor: Colors.black,
          brightness: Brightness.dark,
          textTheme: GoogleFonts.signikaTextTheme(
              //Theme.of(context).textTheme,
              ThemeData.dark().textTheme)),
      home: const MyHomePage(title: 'Good Evening'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOption = <Widget>[
    Home(),
    SearchPage(),
    Library(),
    Text("Playing Now"),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        backgroundColor: Colors.transparent,
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
          child: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.transparent, Colors.black],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter)),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              items: <BottomNavigationBarItem>[
                const BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.home),
                  label: 'Home',
                ),
                const BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.search),
                  label: 'Search',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    "assets/icons/library.png",
                    height: 24,
                    width: 24,
                    color: Colors.white,
                    fit: BoxFit.cover,
                  ),
                  label: 'Library',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    "assets/icons/premium.png",
                    height: 24,
                    width: 24,
                    color: Colors.white,
                    fit: BoxFit.cover,
                  ),
                  label: 'Premium',
                ),
              ],
              selectedItemColor: Colors.white,
              currentIndex: _selectedIndex,
              onTap: _onItemTapped,
            ),
          ),
        ),
        body: _widgetOption.elementAt(_selectedIndex));
  }
}
