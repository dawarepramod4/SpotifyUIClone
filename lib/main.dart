import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

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
          brightness: Brightness.dark,
          textTheme: GoogleFonts.latoTextTheme(
              //Theme.of(context).textTheme,
              ThemeData.dark().textTheme)),
      home: const MyHomePage(title: 'Home'),
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
  // int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(widget.title)),
        backgroundColor: HexColor("#191919"),
      ),
      body: Center(
        child: ListView(
          children: [
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.all(5),
              child: Column(
                children: [
                  const Text(
                    "Native American Heritage Month",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  const SizedBox(height: 5),
                  Text(
                      "Celebrate with collection of music and lyrics by indigeneous artists",
                      style: TextStyle(
                          fontSize: 15, color: Colors.white.withOpacity(0.8)),
                      textAlign: TextAlign.center),
                ],
              ),
            ),
            ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  height: 80,
                  width: 80,
                  child: Column(children: [
                    Image(image: image)
                  ],),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
