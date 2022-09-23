import 'package:flutter/material.dart';
import 'package:kitoob/widgets/textfieldinput.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Padding(
                padding:  EdgeInsets.all(15.0),
                child: Center(
                    child: Image.asset('images/Group16755.png'),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 415,
                  height: 360,
                  decoration:  BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/MaskGroup7.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Padding(
                    padding:  EdgeInsets.only(top: 30.0,left: 30.0,right: 30.0),
                    child: Container(
                      color: Colors.white,
                      child: Padding(
                        padding:  EdgeInsets.only(top: 20.0,left: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children:  [
                            Text('Sign In',
                            style: TextStyle(
                              fontSize: 20.0
                            ),),
                            Text('Enter your Login credential'),
                            Column(
                              children: <Widget>[
                                TextFieldInput(
                                  HintText: 'Email',
                                  icon: Icon(Icons.email,
                                    color: Color(0xFF841F6E),
                                ),
                                ),
                                SizedBox(
                                  height: 20.0,
                                ),
                                TextFieldInput(
                                  HintText: 'Password',
                                  icon: Icon(Icons.lock,
                                    color: Color(0xFF841F6E),
                                ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                TextButton(onPressed: (){}, child: Text('Forgot Password?',
                                style: TextStyle(
                                  color: Colors.black,
                                ),)),
                              ],
                            ),
                            Column(
                              children: [
                                TextButton(
                                  style: TextButton.styleFrom(
                                    backgroundColor: Color(0xFF841F6E),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(30.0),
                                        side: BorderSide(color: Color(0xFF841F6E))
                                    ),
                                    padding: EdgeInsets.only(left: 100.0,right: 100.0,top: 10.0,bottom: 10.0),
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
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Have not an account?'),
              TextButton(
                  onPressed: (){},
                  child: const Text('SIGN IN',
                  style: TextStyle(
                    color: Color(0xFF841F6E),
                  ),)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
