import 'package:flutter/material.dart';

class OnBoardFour extends StatefulWidget {
  const OnBoardFour({Key? key}) : super(key: key);

  @override
  State<OnBoardFour> createState() => _OnBoardFourState();
}

class _OnBoardFourState extends State<OnBoardFour> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                  Text('Welcome on CM!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF216915),
                      fontSize: 30.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),SizedBox(
                    height: 40.0,
                  ),
                  Text('Welcome on the real social media',
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
