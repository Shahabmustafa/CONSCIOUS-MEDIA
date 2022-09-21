import 'package:flutter/material.dart';

class OnBoardThree extends StatefulWidget {
  const OnBoardThree({Key? key}) : super(key: key);

  @override
  State<OnBoardThree> createState() => _OnBoardThreeState();
}

class _OnBoardThreeState extends State<OnBoardThree> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:Column(
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
                  Text('A platform where everything supports the benefit of humanity and the planet',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF216915),
                      fontSize: 25.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),SizedBox(
                    height: 10.0,
                  ),
                  Text('Join us to swap ideas, projects, experiences and to find inspiration every day! Upload and share anything related: pictures, videos, ideas, events, news, podcasts oranything you just like!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500,
                    ),),
                ],
              ),
            ],
          ),
      ),
    );
  }
}
