import 'package:flutter/material.dart';
import 'package:kitoob/widgets/onboard_1.dart';
import 'package:kitoob/widgets/onboard_2.dart';
import 'package:kitoob/widgets/onboard_3.dart';
import 'package:kitoob/widgets/onboard_4.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoard extends StatefulWidget {
  // const OnBoard({Key? key}) : super(key: key);

  @override
  State<OnBoard> createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoard> {
  @override

  PageController _controller = PageController();

  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView(
          controller: _controller,
          children: [
            Container(
              child: OnBoardOne(),
            ),
            Container(
              child: OnBoardTwo(),
            ),
            Container(
              child: OnBoardThree(),
            ),
            Container(
              child: OnBoardFour(),
            ),
          ],
        ),

           Container(
             alignment: Alignment(0.95,0.35,),
             child: SmoothPageIndicator(controller: _controller, axisDirection: Axis.vertical, count: 4,),
       ),

        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            GestureDetector(
              onTap: (){
                _controller.nextPage(duration: Duration(microseconds: 500), curve: Curves.easeIn);
              },
              child: Container(
                padding: const EdgeInsets.only(top: 20.0,bottom: 20.0,right: 150.0,left: 190.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(28.0),
                ),
                child: const Text('Next',
                style: TextStyle(
                  color: Color(0xFF841F6E),
                  fontSize: 20.0,
                  decoration: TextDecoration.none,
                ),),
              ),
            ),
            GestureDetector(
              onTap: () {
                _controller.jumpToPage(4);
              },
              child: Container(
                padding: EdgeInsets.only(top: 20.0,bottom: 20.0,right: 150.0,left: 190.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(28.0),
                ),
                child: const Text('SKIP>',
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w300,
                    fontSize: 20.0,
                    decoration: TextDecoration.none,
                  ),),
              ),
            ),
          ],
        )
      ],
    );
  }
}
