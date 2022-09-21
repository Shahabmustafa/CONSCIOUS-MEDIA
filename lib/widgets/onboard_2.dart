import 'package:flutter/material.dart';

class OnBoardTwo extends StatefulWidget {
  const OnBoardTwo({Key? key}) : super(key: key);

  @override
  State<OnBoardTwo> createState() => _OnBoardTwoState();
}

class _OnBoardTwoState extends State<OnBoardTwo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                child: Center(
                  child: Image.asset("images/Group6.png"),
                ),
              ),
              Column(
                children: const [
                  Text('Do you want to take a sharein making the world abetter place?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF216915),
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),SizedBox(
                    height: 40.0,
                  ),
                  Text('Join us to swap ideas, projects, experiences and to find inspiration every day! Upload and share anything related: pictures, videos, ideas, events, news, podcasts oranything you just like!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20.0
                    ),),
                ],
              ),
            ],
          ),
      ),
    );
  }
}
