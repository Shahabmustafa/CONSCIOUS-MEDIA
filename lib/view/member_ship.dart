import 'package:flutter/material.dart';
import 'package:kitoob/view/signin_page.dart';

class MemberShip extends StatefulWidget {
  const MemberShip({Key? key}) : super(key: key);

  @override
  State<MemberShip> createState() => _MemberShipState();
}

class _MemberShipState extends State<MemberShip> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Center(
                  child: Image.asset('images/Group16755.png',
                  height: 200,),
              ),
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/MaskGroup7.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                height: 516.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget> [
                         const Text('SELECT YOUR MEMBERSHIP TO CONTINUE',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18
                      ),),
                      Column(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            width: 350,
                            height: 130,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                const Text('Are you an amazing',
                                style: TextStyle(
                                  fontSize: 20.0
                                ),),
                                const Text('PRIVATE',
                                style: TextStyle(
                                  color: Color(0xFF216915),
                                  fontSize: 20.0
                                ),),
                                const Text('world-saver?',
                                  style: TextStyle(
                                    fontSize: 20.0
                                ),
                                ),
                                TextButton(onPressed: (){
                                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignINPage()));
                                }, child:
                                const Icon(
                                  Icons.arrow_forward,
                                  color: Color(0xFF841F6E),
                                ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            width: 350,
                            height: 130,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                const Text('Are you a conscious',
                                  style: TextStyle(
                                      fontSize: 20.0
                                  ),),
                                const Text('business or organization',
                                  style: TextStyle(
                                      color: Color(0xFF216915),
                                      fontSize: 20.0
                                  ),),
                                const Text('world-saver?',
                                  style: TextStyle(
                                      fontSize: 20.0
                                  ),),
                                TextButton(onPressed: (){}, child:
                                const Icon(
                                  Icons.arrow_forward,
                                  color: Color(0xFF841F6E),
                                ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                  ],
                ),
              ),
            ],
          ),
        ),
    );
  }
}

