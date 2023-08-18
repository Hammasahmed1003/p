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
                        // if (currentPage < OnboardingData.length - 1) {
                        //   value++;
                        // }
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
                      setState(() {
                        if (currentPage < OnboardingData.length - 1) {
                          currentPage++;
                        }
                      });
                      // Navigator.of(context).pushReplacement(
                      //   MaterialPageRoute(
                      //       builder: (context) =>
                      //           LetYouIn()), // Replace NextScreen with your actual screen
                      // );
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
          duration: Duration(milliseconds: 250),
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

// import 'package:flutter/material.dart';
// import 'package:velocity_x/velocity_x.dart';

// import '../custom/button.dart';

// class OnboardingScreen extends StatefulWidget {
//   const OnboardingScreen({Key? key}) : super(key: key);

//   @override
//   State<OnboardingScreen> createState() => _OnboardingScreenState();
// }

// class _OnboardingScreenState extends State<OnboardingScreen> {
//   int currentPage = 0;

//   List<Map<String, String>> onboardingData = [
//     {
//       "text": "Listen to the best podcast everyday with WeTalk now",
//       "image": "assets/images/letyouin.png"
//     },
//     {"text": "Another Text", "image": "assets/images/letyouin.png"},
//     {"text": "Last Text", "image": "assets/images/letyouin.png"},
//   ];

//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     return Scaffold(
//       body: SafeArea(
//         child: Center(
//           child: Column(
//             children: [
//               Expanded(
//                 flex: 7,
//                 child: PageView.builder(
//                   onPageChanged: (value) {
//                     setState(() {
//                       currentPage = value;
//                     });
//                   },
//                   itemCount: onboardingData.length,
//                   itemBuilder: (context, index) => OnboardingContent(
//                     image: onboardingData[index]["image"]!,
//                     text: onboardingData[index]["text"]!,
//                     isActive: index == currentPage,
//                   ),
//                 ),
//               ),
//               Expanded(
//                 flex: 2,
//                 child: Column(
//                   children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: List.generate(
//                         onboardingData.length,
//                         (index) => OnboardingDots(
//                           isActive: index == currentPage,
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       height: 30,
//                     ),
//                     Button(
//                       width: size.width * 0.3,
//                       height: 60,
//                       onPressed: () {
//                         setState(() {
//                           if (currentPage < onboardingData.length - 1) {
//                             currentPage++;
//                           }
//                         });
//                       },
//                       text: "Next",
//                       color: Color(0xff9610FF),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class OnboardingDots extends StatelessWidget {
//   final bool isActive;

//   const OnboardingDots({required this.isActive, Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return AnimatedContainer(
//       duration: Duration(milliseconds: 250),
//       margin: EdgeInsets.all(6),
//       width: isActive ? 20 : 6,
//       height: 6,
//       decoration: BoxDecoration(
//         color: isActive ? Color(0xff9610FF) : Color(0xFFEECDCD),
//         borderRadius: BorderRadius.circular(3),
//       ),
//     );
//   }
// }

// class OnboardingContent extends StatelessWidget {
//   final String text, image;
//   final bool isActive;

//   const OnboardingContent({
//     required this.text,
//     required this.image,
//     required this.isActive,
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Opacity(
//       opacity: isActive ? 1.0 : 0.0,
//       child: Column(
//         children: [
//           Image.asset(
//             image,
//             width: 237,
//             height: 400,
//           ),
//           Padding(
//             padding: const EdgeInsets.only(left: 20),
//             child: Text(
//               text,
//               style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
