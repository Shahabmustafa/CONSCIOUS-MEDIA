import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:kitoob/view/on_boarding.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    _navigatotohome();
  }
  _navigatotohome()async{
    await Future.delayed(Duration(milliseconds: 1500),(){});
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => OnBoard()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Image.asset('images/Group6.png'),
            ),
              const Text('CONSCIOUS MEDIA',
                style: TextStyle(
                  fontSize: 20.0,
                ),),
            const SizedBox(height: 200.0,),
            const SpinKitFadingCircle(
              color: Colors.black,
              size: 50.0,
            )
            // Container(
            //   child: Image.asset('images/image28.png'),
            // ),
          ],
        ),
    );
  }
}

