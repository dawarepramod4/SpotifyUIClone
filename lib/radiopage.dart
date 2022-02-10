import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class radio extends StatelessWidget {
  const radio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          backgroundBlendMode: BlendMode.clear,
          gradient: LinearGradient(
              colors: [Colors.white, Colors.black],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter)),
      child: Scaffold(
        extendBody: true,
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Center(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Card(
                      child: Image.asset(
                        'assets/playlist/playlist2.png',
                        height: 120,
                        width: 120,
                      ),
                    ),
                    Card(
                      child: SizedBox(
                        height: 200,
                        width: 200,
                      ),
                      color: Colors.white10,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(200)),
                    ),
                    Card(
                      child: SizedBox(
                        height: 300,
                        width: 300,
                      ),
                      color: Colors.white10,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(200)),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
