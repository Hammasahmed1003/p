import 'package:flutter/material.dart';
import 'package:podcastapp/screens/LetYouIn.dart';
import 'package:podcastapp/screens/signup_screen.dart';
import 'package:velocity_x/velocity_x.dart';

import '../custom/button.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int currentPage = 0;

  List<Map<String, String>> OnboardingData = [
    {
      "text": "Listen to the best podcast everyday with WeTalk now",
      "image": "assets/images/letyouin.png"
    },
    {"text": "Another Text", "image": "assets/images/letyouin.png"},
    {"text": "Last Text", "image": "assets/images/letyouin.png"},
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(children: [
            Expanded(
                flex: 7,
                child: PageView.builder(
                    onPageChanged: (value) {
                      setState(() {
                        currentPage = value;
                      });
                    },
                    itemCount: OnboardingData.length,
                    itemBuilder: (context, index) => OnboardingContent(
                          image: OnboardingData[index]["image"],
                          text: OnboardingData[index]["text"],
                        ))),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(OnboardingData.length,
                        (index) => OnboardingDots(index: index)),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Button(
                    width: size.width * 0.3,
                    height: 60,
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                            builder: (context) =>
                                LetYouIn()), // Replace NextScreen with your actual screen
                      );
                    },
                    text: "Next",
                    color: Color(0xff9610FF),
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }

  Column OnboardingDots({required int index}) {
    return Column(
      children: [
        AnimatedContainer(
          duration: Duration(milliseconds: 500),
          margin: EdgeInsets.all(6),
          width: currentPage == index ? 20 : 6,
          height: 6,
          decoration: BoxDecoration(
              color: currentPage == index
                  ? Color(0xff9610FF)
                  : const Color.fromARGB(255, 238, 205, 205),
              borderRadius: BorderRadius.circular(3)),
        )
      ],
    );
  }
}

class OnboardingContent extends StatelessWidget {
  const OnboardingContent({Key? key, required this.text, required this.image})
      : super(key: key);
  final String? text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          image!,
          width: 237,
          height: 400,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            text!,
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700),
          ),
        )
      ],
    );
  }
}
