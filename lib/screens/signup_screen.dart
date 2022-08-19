import 'package:flutter/material.dart';

import '../widget/custom_textfield.dart';

class SignupScreen extends StatelessWidget {
  static String id = 'SignupScreen';

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xfff0ad1e),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 50),
            child: Container(
              height: MediaQuery.of(context).size.height * .2,
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Image(
                    image: AssetImage('images/icons/chaticon.png'),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Text(
                      'Chat Now',
                      style: TextStyle(fontFamily: 'Pacifico', fontSize: 30),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: height * .1,
          ),
          CustomeTextField(
            icon: Icons.person,
            hint: 'Enter Your Name',
          ),
          SizedBox(
            height: height * .02,
          ),
          CustomeTextField(
            hint: 'Enter Your Email',
            icon: Icons.email,
          ),
          SizedBox(
            height: height * .02,
          ),
          CustomeTextField(
            hint: 'Enter Your Password',
            icon: Icons.lock,
          ),
          SizedBox(
            height: height * .05,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 120),
            child: FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              onPressed: () {},
              color: Colors.black,
              child: Text(
                'Sign Up',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          SizedBox(
            height: height * .05,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Do have an account ? ',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              GestureDetector(
                onTap: () {

                },
                child: Text(
                  'Login',
                  style: TextStyle(fontSize: 16),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
