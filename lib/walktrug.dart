import 'package:flutter/material.dart';
import 'package:punyahilmiy_app/home.dart';
import 'package:video_walkthrough/video_walkthrough.dart';
import 'package:video_walkthrough/walkthrough.dart';

class walktrugku extends StatelessWidget {
  walktrugku({Key? key}) : super(key: key);

  /*here we have a list of OnbordingScreen which we want to have, each OnbordingScreen have a imagePath,title and an desc.
      */
  final List<Walkthrough> list = [
    Walkthrough(
      title: "Welcome to",
      content: "Futsal Connect",
    ),
    Walkthrough(
      title: "Ayo cari Lapangan Futsal Favoritmu",
      content: "Bandung Punya",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    /* remove the back button in the AppBar is to set automaticallyImplyLeading to false
  here we need to pass the list and the route for the next page to be opened after this. */
    return VideoWalkThrough(
      video: "assets/image/inividio.mp4", // string of video that will show up
      volume: 0, // volume of video that will show up
      walkthroughList: list, //list of content put it here
      pageRoute: MaterialPageRoute(
          builder: (context) =>
              HomePage()), // the screen that you will navigate to it after end
    );
  }
}
