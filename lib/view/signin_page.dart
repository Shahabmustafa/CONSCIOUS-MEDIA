import 'package:flutter/material.dart';
import 'package:kitoob/view/sign_up.dart';
import 'package:kitoob/widgets/textfieldinput.dart';

class SignINPage extends StatefulWidget {
  const SignINPage({Key? key}) : super(key: key);

  @override
  State<SignINPage> createState() => _SignINPageState();
}

class _SignINPageState extends State<SignINPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              margin: EdgeInsets.only(top: 40.0),
              child: Center(child: Image.asset('images/Group16755.png')),
            ),
            Container(
              margin: EdgeInsets.only(top: 108),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/MaskGroup7.png'),
                  fit: BoxFit.cover,
                ),
              ),
              height: 500.0,
              width: 430.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget> [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                      Padding(
                          padding: EdgeInsets.only(left: 20.0,top: 50.0),
                        child:   Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const <Widget> [
                              Text(
                                'Sign In',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.w400
                                ),
                              ),
                              Text(
                                'Enter your Login credential',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w400
                                ),
                              ),
                            ],
                          ),
                        ),

                      ),
                      ],
                    ),
                  Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 20.0),
                     child: Column(
                       children: [
                         TextFieldInput(
                           HintText: 'Email',
                           icon: const Icon(Icons.email,
                             color: Color(0xFF841F6E),
                           ),
                         ),
                         const SizedBox(
                           height: 10.0,
                         ),
                         TextFieldInput(
                           HintText: 'Password',
                           icon: const Icon(Icons.lock,
                             color: Color(0xFF841F6E),),
                         ),
                         const SizedBox(
                           height: 10.0,
                         ),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.end,
                           children: <Widget>[
                             TextButton(onPressed: (){

                             }, child: Text(
                                 'Forget Password?',
                               style: TextStyle(
                                 color: Colors.white,
                               ),
                             ))
                           ],
                         ),
                         Column(
                             crossAxisAlignment: CrossAxisAlignment.stretch,
                             children: [
                               Padding(
                                 padding: const EdgeInsets.only(left: 30.0,right: 30.0),
                                 child: ElevatedButton(
                                   child: Padding(
                                     padding: const EdgeInsets.only(top: 15.0,bottom: 15.0),
                                     child: Text('LOGIN',
                                       style: TextStyle(
                                         fontSize: 20.0,
                                         color: Colors.white,
                                       ),),
                                   ),
                                   onPressed:
                                       (){
                                         Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignUpPage()));
                                       },
                                   style: ElevatedButton.styleFrom(
                                     shape: RoundedRectangleBorder(
                                         borderRadius: BorderRadius.circular(18.0),
                                         side: BorderSide(color: Color(0xFF841F6E))
                                     ),
                                     primary: Color(0xFF841F6E),
                                   ),
                                 ),
                               ),
                             ],
                           ),
                       ],
                     ),
                   ),
                 Container(
                   height: 50,
                   width: 500.0,
                   color: Colors.white,
                   child:  Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Text('Have not an account?',
                         style: TextStyle(
                           color: Colors.black,
                         ),),
                       TextButton(onPressed: (){
                       }, child: Text('Sign In',
                         style: TextStyle(
                           color: Color(0xFF841F6E),
                         ),),
                       ),
                     ],
                   ),
                 ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
