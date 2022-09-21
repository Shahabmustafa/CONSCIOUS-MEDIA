import 'package:flutter/material.dart';
// import 'package:kitoob/widgets/onboard_2.dart';
// import 'package:kitoob/widgets/onboard_4.dart';

class OnBoardOne extends StatefulWidget {
  const OnBoardOne({Key? key}) : super(key: key);

  @override
  State<OnBoardOne> createState() => _OnBoardOneState();
}

class _OnBoardOneState extends State<OnBoardOne> {
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
                  Text('Hello amazing,',
                    style: TextStyle(
                      color: Color(0xFF216915),
                      fontSize: 30.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),SizedBox(
                    height: 40.0,
                  ),
                  Text('We couldnt be more thrilled to see you here!',
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
