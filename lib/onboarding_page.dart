import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    var paddingH = MediaQuery.of(context).size.height * (97 / 1232);
    if (MediaQuery.of(context).size.height < 700) {
      //SE
      paddingH = MediaQuery.of(context).size.height * (97 / 5032);
    }

    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Color.fromRGBO(0, 0, 0, 1.0),
        padding: EdgeInsets.all(0),
        child: Column(
          children: [
            SizedBox(
              height: paddingH / 1.5,
            ),
            Container(
              height: 69.0,
              width: 124.0,
              child: Stack(
                children: [
                  Positioned(
                    top: 13,
                    left: 22,
                    child: Text(
                      'Chatzy',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  Positioned(
                    width: 124.0,
                    child: Image.asset(
                      "images/chatty.gif",
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: paddingH / 2,
            ),
            ClipRect(
              clipBehavior: Clip.hardEdge,
              child: Container(
                width: 457,
                height: 310,
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 20,
                      left: -8,
                      width: 447,
                      height: 238.31,
                      child: Image.asset(
                        "images/vector.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                    Positioned(
                      top: 24,
                      right: -5,
                      width: 60,
                      height: 60,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('images/person1.png'),
                      ),
                    ),
                    Positioned(
                        top: 0,
                        left: 50,
                        width: 70,
                        height: 70,
                        child: CircleAvatar(
                          backgroundImage: AssetImage('images/person2.png'),
                        )),
                    Positioned(
                        width: 110,
                        height: 110,
                        top: 159,
                        left: -22,
                        child: CircleAvatar(
                          backgroundImage: AssetImage('images/person3.png'),
                        )),
                    Positioned(
                        width: 120,
                        height: 120,
                        top: 72,
                        left: 152,
                        child: CircleAvatar(
                          backgroundImage: AssetImage('images/person4.png'),
                        )),
                    Positioned(
                        width: 100,
                        height: 100,
                        bottom: 0,
                        left: 300,
                        child: CircleAvatar(
                          backgroundImage: AssetImage('images/person5.png'),
                        )),
                  ],
                ),
              ),
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: paddingH),
                    child: Center(
                      child: Text(
                        'Find the chat-mate \n of your life',
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 40,
                            fontWeight: FontWeight.w500,
                            height: 1.0, // line-height in Flutter
                            letterSpacing: 0,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: paddingH / 2,
                  ),
                  DotsIndicator(
                    dotsCount: 3,
                    position: 0,
                    decorator: DotsDecorator(
                      activeColor: Colors.white,
                      color: Color.fromRGBO(182, 182, 182, 1),
                      size: const Size(11.4, 8.0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100.0)),
                      activeSize: const Size(11.4, 8.0),
                      activeShape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100.0)),
                    ),
                  ),
                  SizedBox(
                    height: paddingH / 3,
                  ),
                  Container(
                    width: 360,
                    height: 74,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                        color: Color.fromRGBO(255, 255, 255, 0.4),
                        width: 2,
                      ),
                    ),
                    child: TextButton(
                      onPressed: () {
                        // Handle button press
                      },
                      child: Text(
                        'Continue',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          fontFamily: 'SF Pro Display',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: paddingH / 3,
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: paddingH / 3),
                    child: TextButton(
                        onPressed: () {
                          // Handle button press
                        },
                        child: Text(
                          'Skip',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 0.4),
                            fontFamily: 'SF Pro Display',
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0,
                          ),
                        )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
