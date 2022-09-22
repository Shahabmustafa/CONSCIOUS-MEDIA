import 'package:flutter/material.dart';

class BuildPage extends StatelessWidget {
  BuildPage({required this.title,required this.description,required this.image});

  String title,description,image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Center(
                  heightFactor: 2.0,
                  child: Image.asset(image),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0,right: 30.0),
                child: Column(
                  children:<Widget> [
                    Text(title,
                      style: const TextStyle(
                        color: Color(0xFF216915),
                        fontSize: 25.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ), const SizedBox(
                      height: 40.0,
                    ),
                    Center(
                      child: Text(description,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w300,
                        ),),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}