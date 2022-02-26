import 'package:flutter/material.dart';

import 'package:avatar_glow/avatar_glow.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, home: AvatarGlowScreen());
  }
}

/////////////////////////////////////
// @CodeWithFlexz on Instagram
//
// AmirBayat0 on Github
// Programming with Flexz on Youtube
/////////////////////////////////////
class AvatarGlowScreen extends StatelessWidget {
  const AvatarGlowScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 76, 168, 243),
        appBar: AppBar(
          title: Column(
            children: [
              Text(
                "Avatar Glow Package",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              Text(
                "@CodeWithFlexZ",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Colors.white70),
              )
            ],
          ),
          centerTitle: true,
          elevation: 2,
        ),
        body: Center(
          child: Column(
            
            children: [
              AvatarGlow(
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 40,
                  child: Text(
                    "Live",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.red,
                        fontSize: 25),
                  ),
                ),
                endRadius: 90,
                duration: Duration(seconds: 1),
                repeatPauseDuration: Duration(milliseconds: 100),
                glowColor: Colors.red,
                showTwoGlows: true,
              ),
              AvatarGlow(
                child: Icon(
                  Icons.mic,
                  size: 30,
                  color: Colors.white,
                ),
                endRadius: 110,
                duration: Duration(seconds: 4),
                repeatPauseDuration: Duration(milliseconds: 500),
                glowColor: Colors.white,
                showTwoGlows: true,
              ),
              AvatarGlow(
                child: CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(
                      "YOUR IMAGE URL"),
                ),
                endRadius: 100,
                glowColor: Color.fromARGB(255, 96, 37, 199),
                showTwoGlows: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
