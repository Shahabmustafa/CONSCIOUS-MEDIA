import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:kitoob/view/member_ship.dart';
import 'package:kitoob/widgets/build_page.dart';

class OnBoard extends StatefulWidget {
  const OnBoard({Key? key}) : super(key: key);

  @override
  State<OnBoard> createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoard> {
  @override
  bool isLastPage = false;
  PageController _controller = PageController();
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
        child: PageView(
    controller: _controller,
      onPageChanged: (index){
        setState(() => isLastPage = index == 3);
      },
      children: [
        BuildPage(
            title: 'Hello amazing',
            image: 'images/Group16755.png',
            description: 'We couldnt be more thrilled to see you here!'
        ),
        BuildPage(title: 'Do you want to take a share in making the world a better place?',
            image: 'images/Group16755.png',
            description: 'We couldnt be more thrilled to see you here!'
        ),
        BuildPage(title: 'A platform where everything supports the benefit of humanity and the planet',
            image: 'images/Group16755.png',
            description: 'Join us to swap ideas, projects, experiences and to find inspiration every day! Upload and share anything related: pictures, videos, ideas, events, news, podcasts oranything you just like!'
        ),
        BuildPage(title: 'Welcome on CM!',
            image: 'images/Group16755.png',
            description: 'Welcome on the real social media'
        ),
      ],
    ),
    ),
    Container(
         alignment: const Alignment(0.95,0.35,),
         child: SmoothPageIndicator(controller: _controller, axisDirection: Axis.vertical, count: 4,),
       ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: 300.0,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/images1.png'),
                  fit: BoxFit.fitWidth,
                  alignment: Alignment(1, 20),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Center(
                    child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40.0),
                          ),
                          padding: const EdgeInsets.only(top: 20.0,bottom: 20.0,left: 150.0,right: 150.0),
                        ),
                        onPressed: (){
                          isLastPage ? Navigator.push(context, MaterialPageRoute(builder: (context) => MemberShip())) : _controller.nextPage(duration: const Duration(microseconds: 500), curve: Curves.easeIn);
                    }, child: Text(isLastPage ? 'Get started' : 'Next',
                    style: TextStyle(
                      color: Color(0xFF841F6E),
                    ),)),
                  ),
                  isLastPage ? SizedBox(height: 20.0,) : SizedBox(height: 4.0,),
                  isLastPage ? SizedBox() :
                  TextButton(
                      onPressed: () {
                    _controller.jumpToPage(4);
                  }, child: const Text('SKIP>',
                  style: TextStyle(
                    color: Colors.grey,
                  ),)),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}