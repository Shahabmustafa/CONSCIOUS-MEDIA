import 'package:flutter/material.dart';

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
          // crossAxisAlignment: CrossAxisAlignment.,
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
                  const Text(
                    'Sign In',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.w400
                    ),
                  ),
                  const TextField(
                   decoration: InputDecoration(
                     border: OutlineInputBorder(),
                     hintText: 'Email',
                   ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Have not an account?',
                      style: TextStyle(
                        color: Colors.white
                      ),),
                      TextButton(onPressed: (){
                      }, child: Text('SignIn'),
                      ),
                    ],
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
