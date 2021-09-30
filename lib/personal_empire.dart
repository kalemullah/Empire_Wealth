import 'package:flutter/material.dart';
import 'constant.dart';
import 'dart:async';
import 'package:video_player/video_player.dart';

class personalEmpire extends StatefulWidget {
  const personalEmpire({Key? key}) : super(key: key);

  @override
  _personalEmpireState createState() => _personalEmpireState();
}

class _personalEmpireState extends State<personalEmpire> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  void initState() {
    // Create and store the VideoPlayerController. The VideoPlayerController
    // offers several different constructors to play videos from assets, files,
    // or the internet.
    _controller = VideoPlayerController.asset('assets/video.mp4');

    // Initialize the controller and store the Future for later use.
    _initializeVideoPlayerFuture = _controller.initialize();
    // Use the controller to loop the video.
    _controller.setLooping(true);

    super.initState();
  }

  @override
  void dispose() {
    // Ensure disposing of the VideoPlayerController to free up resources.
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          'Personal Empire',
          style: KappBarTextStyle,
        ),
        centerTitle: true,
        backgroundColor: appbarBackgroundColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(

              children: [
                const SizedBox(
                  height: 30,
                ),
                const Center(
                  child: Text(
                    "My personal Empire ",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color:Colors.white),
                  ),
                ),
                const SizedBox(height: 40),
                Container(
                  margin: const EdgeInsets.only(left: 45,right: 45,bottom: 10),
                  height: KcontainerHeight,
                  width: KcontainerWidth,
                  child: Expanded(
                      child: Container(
                        decoration:  BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.black,
                            image: const DecorationImage(
                                image:AssetImage("assects/btn.jpg"),
                                fit:BoxFit.cover
                            )),
                        child: GestureDetector(

                          onTap: () {
                            // Navigator.pushNamed(context, '/growth');
                          },
                          child: const Center(child: Text('Online Courses', style: KbuttonlastTextstyle),),
                        ),)
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  margin: const EdgeInsets.only(left: 45,right: 45,bottom: 10),
                  height: KcontainerHeight,
                  width: KcontainerWidth,
                  child: Expanded(
                      child: Container(
                        decoration:  BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.black,
                            image: const DecorationImage(
                                image:AssetImage("assects/btn.jpg"),
                                fit:BoxFit.cover
                            )),
                        child: GestureDetector(

                          onTap: () {
                            // Navigator.pushNamed(context, '/growth');
                          },
                          child: const Center(child: Text('free pdf training materia', style: KbuttonlastTextstyle),),
                        ),)
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  margin: const EdgeInsets.only(left: 45,right: 45,bottom: 10),
                  height: KcontainerHeight,
                  width: KcontainerWidth,
                  child: Expanded(
                      child: Container(
                        decoration:  BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.black,
                            image: const DecorationImage(
                                image:AssetImage("assects/btn.jpg"),
                                fit:BoxFit.cover
                            )),
                        child: GestureDetector(

                          onTap: () {
                            // Navigator.pushNamed(context, '/growth');
                          },
                          child: const Center(child: Text('Motivational videos', style: KbuttonlastTextstyle),),
                        ),)
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  margin: const EdgeInsets.only(left: 45,right: 45,bottom: 10),
                  height: KcontainerHeight,
                  width: KcontainerWidth,
                  child: Expanded(
                      child: Container(
                        decoration:  BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.black,
                            image: const DecorationImage(
                                image:AssetImage("assects/btn.jpg"),
                                fit:BoxFit.cover
                            )),
                        child: GestureDetector(

                          onTap: () {
                            // Navigator.pushNamed(context, '/growth');
                          },
                          child: const Center(child: Text('Empire wealth shop', style: KbuttonlastTextstyle),),
                        ),)
                  ),
                ),

              ],
            )

      ),
    );
  }
}
