import 'package:e_commerce_app/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnboardingScreen extends StatelessWidget {
  
final introKey = GlobalKey<IntroductionScreenState> ();

  OnboardingScreen({super.key});
  @override
  Widget build(BuildContext context) {
    const pageDecoration =  PageDecoration(
      titleTextStyle : TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w700,
        
      ),
      bodyTextStyle: TextStyle(
        fontSize: 19),
        bodyPadding: EdgeInsets.fromLTRB(16, 0, 16, 16),
        pageColor: Colors.white,
        imagePadding: EdgeInsets.zero
    );
    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,
      pages: [ 
        PageViewModel(
          title: 'Shop Now',
          body: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,',
          image: Image.asset('assets/images/splash1.png', width: 200,),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: 'Big Disount',
          body: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,',
          image: Image.asset('assets/images/splash2.png', width: 200,),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: 'Free Delivery',
          body: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,',
          image: Image.asset('assets/images/splash3.png', width: 200,),
          decoration: pageDecoration, 
          footer: Padding(padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen()));
            },
             style:  ElevatedButton.styleFrom(
              minimumSize: const Size.fromHeight(55),
              backgroundColor: const Color(0xFFEF6969),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8)
              ),
              
             ),
             child: const Text("Let's Shop", 
             style: TextStyle(fontSize: 20, color: Colors.white),
             )
             ),
          ),
          )
        )
      ],

      showSkipButton: 
      false,
      showDoneButton: false,
      showBackButton: true,
      back: const Text('Back', style: TextStyle(
        fontWeight: FontWeight.w600,
        color: Color(0XFFEF6969),  
      ),),
          next: const Text('Next',
           style: TextStyle(fontWeight: FontWeight.w600,
            color: Color(0XFFEF6969),
            ),),
        //  done: const Text('Done',
        //    style: TextStyle(fontWeight: FontWeight.w600,
        //     color: Color(0XFFEF6969),
        //     ),),
        //    skip: const Text('Skip',
        //    style: TextStyle(fontWeight: FontWeight.w600,
        //     color: Color(0XFFEF6969),
        //     ),),
            onDone: () {},
            onSkip: () {},
            dotsDecorator: DotsDecorator(
              size: const Size.square(10),
              activeSize: const Size(20, 10),
              activeColor: const Color(0XFFEF6969),
              color: Colors.black,
              spacing: const EdgeInsets.symmetric(horizontal: 3),
              activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              )
            ),
    );
  }
}