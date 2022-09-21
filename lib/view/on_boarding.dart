import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoard extends StatefulWidget {
  const OnBoard({Key? key}) : super(key: key);

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
            BuildPage(
              title: 'Hello amazing',
              image: 'images/Group6.png',
              description: 'We couldnt be more thrilled to see you here!'
            ),
            BuildPage(title: 'Hello amazing',
            image: 'images/Group6.png',
            description: 'We couldnt be more thrilled to see you here!'
            ),
            BuildPage(title: 'A platform where everything supports the benefit of humanity and the planet',
                image: 'images/Group6.png',
                description: 'Join us to swap ideas, projects, experiences and to find inspiration every day! Upload and share anything related: pictures, videos, ideas, events, news, podcasts oranything you just like!'
            ),
            BuildPage(title: 'Welcome on CM!',
                image: 'images/Group6.png',
                description: 'Welcome on the real social media'
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

class BuildPage extends StatelessWidget {
  BuildPage({required this.title,required this.description,required this.image});

  String title,description,image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
         Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              child: Center(
                child: Image.asset(image),
                heightFactor: 2.0,
              ),
            ),
            Column(
              children:<Widget> [
                Text(title,
                  style: TextStyle(
                    color: Color(0xFF216915),
                    fontSize: 30.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),SizedBox(
                  height: 40.0,
                ),
                Text(description,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500,
                  ),),
              ],
            ),
          ],
        ),
        ],
      ),
    );
  }
}

