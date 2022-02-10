import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sptofyuiclone/main.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: const [0.0, 0.3],
              colors: [HexColor('#3e13b9'), Colors.black])),
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const Text("Good Evening"),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(CupertinoIcons.bell)),
            IconButton(
                onPressed: () {}, icon: const Icon(CupertinoIcons.timer)),
            IconButton(
                onPressed: () {}, icon: const Icon(CupertinoIcons.settings)),
          ],
          backgroundColor: Colors.transparent,
          elevation: 0,
          // bottomOpacity: 0,
        ),
        body: SingleChildScrollView(
          child: Column(
            // shrinkWrap: true,
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.all(5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 300,
                      child: GridView.count(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        crossAxisSpacing: 1,
                        mainAxisSpacing: 1,
                        crossAxisCount: 2,
                        childAspectRatio: 3,
                        children: [
                          ListTile(
                            leading: Image.asset("assets/playlist/like.png",
                                height: 60, width: 60, fit: BoxFit.cover),
                            title: const Text("Liked Songs"),
                          ),
                          ListTile(
                            leading: Image.asset(
                              "assets/playlist/arijit.jpg",
                              height: 60,
                              width: 60,
                              fit: BoxFit.cover,
                            ),
                            title: const Text("Arijit Singh"),
                          ),
                          ListTile(
                            leading: Image.asset("assets/playlist/spotify.jpg",
                                height: 60, width: 60, fit: BoxFit.cover),
                            title: const Text("Premium New"),
                          ),
                          ListTile(
                            leading: Image.asset(
                                "assets/playlist/playlist2.png",
                                height: 60,
                                width: 60,
                                fit: BoxFit.cover),
                            title: const Text("Latest Songs"),
                          ),
                          ListTile(
                            leading: Image.asset(
                                "assets/playlist/playlist2.png",
                                height: 60,
                                width: 60,
                                fit: BoxFit.cover),
                            title: const Text("Latest Songs"),
                          ),
                          ListTile(
                            leading: Image.asset(
                              "assets/playlist/arijit.jpg",
                              height: 60,
                              width: 60,
                              fit: BoxFit.cover,
                            ),
                            title: const Text("Arijit Singh"),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      "Native American Heritage Month",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    const SizedBox(height: 5),
                    Text(
                        "Celebrate with collection of music and lyrics by indigeneous artists",
                        style: TextStyle(
                            fontSize: 15, color: Colors.white.withOpacity(0.8)),
                        textAlign: TextAlign.left),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 220,
                      child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: 5,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              padding: const EdgeInsets.all(5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    "assets/playlist/playlist1.png",
                                    fit: BoxFit.cover,
                                    alignment: Alignment.center,
                                    height: 170,
                                    width: 170,
                                  ),
                                  const SizedBox(height: 2),
                                  Text(
                                    "DreamCatcher $index",
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.left,
                                  ),
                                  const SizedBox(height: 2),
                                  Text("720000 FOLLOWERS",
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.white.withOpacity(0.8)),
                                      textAlign: TextAlign.left),
                                ],
                              ),
                            );
                          }),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      "Get Set For the Day",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      textAlign: TextAlign.left,
                    ),
                    const SizedBox(height: 5),
                    SizedBox(
                      height: 300,
                      child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: 5,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Card(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    clipBehavior: Clip.antiAlias,
                                    child: Image.asset(
                                      "assets/playlist/playlist2.png",
                                      fit: BoxFit.cover,
                                      alignment: Alignment.topLeft,
                                      height: 170,
                                      width: 170,
                                    ),
                                  ),
                                  const SizedBox(height: 2),
                                  Text(
                                    "DreamCatcher $index",
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.left,
                                  ),
                                  const SizedBox(height: 2),
                                  Text("720000 FOLLOWERS",
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.white.withOpacity(0.8)),
                                      textAlign: TextAlign.left),
                                ],
                              ),
                            );
                          }),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
