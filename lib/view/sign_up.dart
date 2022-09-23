import 'package:flutter/material.dart';
import 'package:kitoob/view/login.dart';
import 'package:kitoob/widgets/textfieldinput.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:<Widget> [
                Row(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: BorderSide(color: Colors.white)
                      ),
                      primary: Colors.white,
                      padding: EdgeInsets.only(left: 10.0),
                      elevation: 5.0,
                    ),
                      onPressed: (){
                        Navigator.pop(context);
                  }, child: const Icon(
                    Icons.arrow_back_ios,
                    size: 20.0,
                    color: Colors.black,
                  ),
                  ),
                ],
              ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset('images/Group16755.png')
                ],
              ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: const <Widget>[
                    Text('SIGN UP',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 30.0,

                    ),),

                  ],
                ),
                const SizedBox(
                height: 10.0,
              ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircleAvatar(
                      radius: 60.0,
                      backgroundColor: Color(0xFFF3F3F3),
                      child:
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                          Icon(
                            Icons.camera_alt,
                            color: Colors.black,
                            size: 35.0,
                          ),
                          Text('Set photo',
                          style: TextStyle(
                            color: Colors.black,
                          ),),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                height: 10.0,
              ),
                Column(
                children: <Widget>[
                  TextFieldInput(
                    HintText: 'Full Name',
                    icon: Icon(Icons.person,
                      color: Color(0xFF841F6E),
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
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
                  TextFieldInput(
                    HintText: 'Confirme Password',
                    icon: Icon(Icons.lock,
                      color: Color(0xFF841F6E),
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),

                ],
              ),
                const SizedBox(
                  height: 10.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Color(0xFF841F6E),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            side: BorderSide(color: Color(0xFF841F6E))
                        ),
                        padding: EdgeInsets.only(left: 130.0,right: 130.0,top: 20.0,bottom: 20.0),
                      ),
                      onPressed: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LogInPage()));
                      },
                      child: Text('Continus',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0
                      ),),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                  ],
                ),
              const SizedBox(
                height: 10.0,
              ),
              Container(
                height: 40,
                width: 500.0,
                color: Color(0xFFF3F3F3),
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

      ),
    );
  }
}


