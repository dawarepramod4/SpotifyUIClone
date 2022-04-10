import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //extendBody: true,
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: 70,
              ),
              Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 30),
                child: const Text(
                  "Search",
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                  padding: const EdgeInsets.fromLTRB(10, 15, 0, 15),
                  decoration: BoxDecoration(
                      color: Colors.white12,
                      borderRadius: BorderRadius.circular(5)),
                  child: Row(
                    children: const [
                      Icon(CupertinoIcons.search),
                      SizedBox(
                        width: 7,
                      ),
                      Text(
                        "Artist,songs,or podcasts",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  )),
              Container(
                padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                alignment: Alignment.topLeft,
                child: const Text(
                  "Your top genres",
                  style: TextStyle(fontSize: 18),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                child: GridView.builder(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.8,
                    mainAxisSpacing: 5,
                    crossAxisSpacing: 5,
                  ),
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      height: 10,
                      child: Card(
                        child: Container(
                            padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                            child: Text(
                              "Pop",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            )),
                        color: Colors.primaries[
                            Random().nextInt(Colors.primaries.length)],
                      ),
                    );
                  },
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                alignment: Alignment.topLeft,
                child: const Text(
                  "Browse All",
                  style: TextStyle(fontSize: 18),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                child: GridView.builder(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.8,
                    mainAxisSpacing: 5,
                    crossAxisSpacing: 5,
                  ),
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      height: 10,
                      child: Card(
                        child: Container(
                            padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                            child: Text(
                              "Bollywood",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            )),
                        color: Colors.primaries[
                            Random().nextInt(Colors.primaries.length)],
                      ),
                    );
                  },
                ),
              )
            ]),
      ),
    );
  }
}
